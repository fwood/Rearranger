function [params] = CD(Scores,sweeps,CDlength)
% tic;

params = getMRFparams();
% Scores = cell array of different scores
I = size(Scores,1); % number of scores
% setting learning rate parameters
nu_alpha = 2;
nu_beta = 1;
nu_gamma = 1;
nu_delta = 1;
nu_harms = ones(12,1)*.1;
nu_NM = ones(95,1)*.01;
nu_multiplier = 20;
nu_alpha = nu_alpha * nu_multiplier;
nu_beta = nu_beta * nu_multiplier;
nu_gamma = nu_gamma * nu_multiplier;
nu_delta = nu_delta * nu_multiplier;
nu_harms = nu_harms * nu_multiplier;
nu_NM = nu_NM * nu_multiplier;

p_new = zeros(1,CDlength+1);
grad_norms = zeros(1,CDlength);
alphas = zeros(1,CDlength+1);
alphas(1) = params.alpha;
betas = zeros(1,CDlength+1);
betas(1) = params.beta;
gammas = zeros(1,CDlength+1);
gammas(1) = params.gamma;
deltas = zeros(1,CDlength+1);
deltas(1) = params.delta;
harms = zeros(12,CDlength+1);
harms(1,1) = params.harms(1); % unison (desirable consonance)
harms(5,1) = params.harms(5); % major 3rd (desirable consonance)
harms(7,1) = params.harms(7); % tri-tone (undesirable dissonance)
note_movements = zeros(95,CDlength+1);
note_movements(48,1) = params.jumps(48); % note stays the same
note_movements(47,1) = params.jumps(47); % note drops 1/2 step
note_movements(56,1) = params.jumps(56); % note jumps a perfect 5th


for i=1:I
    p_new(1) = p_new(1) + logprobS(Scores{i,1},params);
end

% M = params.M*ones(1,B);
% M_prime = params.M_prime*ones(1,B);

for n=1:CDlength
    params_new = params;
    e_alpha = 0;
    e_beta = 0;
    e_gamma = 0;
    e_delta = 0;
    e_harms = zeros(12,1);
    e_NM = zeros(95,1);
    % original score data expectation section of gradient
    for i=1:I
        S = Scores{i,1};
        V = size(S,1); % # of voices
        B = size(S,2); % # of beats    
        den = I*B*V;
%         e_alpha = e_alpha - nu_alpha*params.alpha * sum(sum(S.*M))/den; % divide this by I*B*V
%         e_beta = e_beta - nu_beta*2*params.beta * sum(sum(diff(S, [], 2) .^2))/den;
%         e_gamma = e_gamma - nu_gamma*2*params.gamma * sum(S(:).*S(:))/den;
%         e_delta = e_delta - nu_delta*params.delta * sum(sum(S.*M_prime))/den;
%         e_alpha = e_alpha - nu_alpha * sum(sum(S.*M))/den; % divide this by I*B*V
        e_alpha = e_alpha - nu_alpha * sum(params.M'*S)/den; % divide this by I*B*V
        e_beta = e_beta - nu_beta * sum(sum(diff(S, [], 2) .^2))/den;
        e_gamma = e_gamma + nu_gamma * sum(S(:).*S(:))/den;
%         e_delta = e_delta - nu_delta * sum(params.M_prime'*S)/den;

        intervals = harmony(S);
        sum_intervals = zeros(12,1);
        for j=1:12
            sum_intervals(j) = sum(intervals(j,:));
        end
        e_harms = e_harms - nu_harms .* sum_intervals/(I*B);

        jumps = note_movement(S);
        e_NM = e_NM - nu_NM .* jumps/I;
        
        % vectors for harm and note_movement params
    end
    expectation_D = [e_alpha, e_beta, e_gamma, e_delta, e_harms', e_NM']/I;
    % e_alpha = e_alpha / I;


    e_alpha = 0;
    e_beta = 0;
    e_gamma = 0;
    e_delta = 0;
    e_harms = zeros(12,1);
    e_NM = zeros(95,1);
    % sampled score expectation section of gradient
    for i=1:I % iterate through each score
        V = size(Scores{i,1},1); % # of voices
        B = size(Scores{i,1},2); % # of beats
        den = I*B*V;

        S = MRFSampler(Scores{i,1},params,sweeps); % sample the score        
        
%         e_alpha = e_alpha -nu_alpha*params.alpha * sum(sum(S.*M))/den; % divide each of these by I*B*V, multiply by specific learning rate
%         e_beta = e_beta - nu_beta*2*params.beta * sum(sum(diff(S, [], 2) .^2))/den;
% %         e_b_1 = diff(S(1:end-1), [], 2);
% %         e_b_2 = diff(S(2:end), [], 2);
% %         e_beta = e_beta -2*nu_beta*params.beta * sum(sum(e_b_1))/den + 2*nu_beta*params.beta * sum(sum(e_b_2))/den;
%         e_gamma = e_gamma + 2*nu_gamma*params.gamma * sum(S(:).*S(:))/den;
%         e_delta = e_delta -nu_delta*params.delta * sum(sum(S.*M_prime))/den;
%         e_alpha = e_alpha - nu_alpha * sum(sum(S.*M))/den; % divide this by I*B*V
        e_alpha = e_alpha - nu_alpha * sum(params.M'*S)/den; % divide this by I*B*V
        e_beta = e_beta - nu_beta * sum(sum(diff(S, [], 2) .^2))/den;
        e_gamma = e_gamma + nu_gamma * sum(S(:).*S(:))/den;
%         e_delta = e_delta - nu_delta * sum(params.M_prime'*S)/den;
        
        intervals = harmony(S);
        sum_intervals = zeros(12,1);
        for j=1:12
            sum_intervals(j) = sum(intervals(j,:));
        end
        e_harms = e_harms - nu_harms .* sum_intervals/(I*B);

        jumps = note_movement(S);
        e_NM = e_NM - nu_NM .* jumps/I;
        
        % vectors for harm and note_movement params    
    end

    expectation_C = [e_alpha, e_beta, e_gamma, e_delta, e_harms', e_NM']/I;

    grad = expectation_D - expectation_C;
    grad_norms(n) = norm(grad);

    params_new.alpha = params.alpha + grad(1)*nu_alpha;
    alphas(n+1) = params_new.alpha;
    params_new.beta = params.beta + grad(2)*nu_beta;
    betas(n+1) = params_new.beta;
    params_new.gamma = params.gamma + grad(3)*nu_gamma;
    gammas(n+1) = params_new.gamma;
    params_new.delta = params.delta + grad(4)*nu_delta;
    deltas(n+1) = params_new.delta;
    params_new.harms = params.harms + grad(5:16)' .* nu_harms;
    harms(:,n+1) = params_new.harms;
    params_new.jumps = params.jumps + grad(17:end)' .* nu_NM;
    note_movements(:,n+1) = params_new.jumps;
    
    for i=1:I
        p_new(n+1) = p_new(n+1) + logprobS(Scores{i,1},params_new);
    end
    
    params = params_new;
    
    subplot(2,5,1);
    plot(p_new(1:n+1));
    title('joint logprobS');
    subplot(2,5,2);
    plot(grad_norms(1:n));
    title('norm(gradient)');
    subplot(2,5,3);
    plot(alphas(1:n+1));
    title('alpha');
    subplot(2,5,4);
    plot(betas(1:n+1));
    title('beta');
%     subplot(3,3,5);
%     plot(gammas(1:n+1));
%     title('gamma');
%     subplot(4,3,6);
%     plot(deltas(1:n+1));
%     title('delta');
    subplot(2,5,5);
    plot(harms(1,1:n+1));
    title('harmony: unison');
    subplot(2,5,6);
    plot(harms(5,1:n+1));
    title('harmony: M3');
    subplot(2,5,7);
    plot(harms(7,1:n+1));
    title('harmony: TriTone');
    subplot(2,5,8);
    plot(note_movements(48,1:n+1));
    title('note movement: stay same');
    subplot(2,5,9);
    plot(note_movements(47,1:n+1));
    title('note movement: down a 1/2 step');
    subplot(2,5,10);
    plot(note_movements(56,1:n+1));
    title('note movement: up a perfect fifth');
    drawnow;
    
    if mod(n,100) == 0
        disp(params);
    end
% toc;
    
end

% Sgrad = Sgrad - alpha * midNotePotential;
% Sdiff = diff(S, [], 2);
% Sgrad(:, 1:end-1) = Sgrad(:, 1:end-1) - 2*beta * Sdiff;
% Sgrad(:, 2:end) = Sgrad(:, 2:end) + 2*beta * Sdiff;
% Sgrad = Sgrad + 2*gamma*S;

end
