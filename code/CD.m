function [params] = CD(Scores,sweeps,CDlength)
tic;

params = getMRFparams();
% Scores = cell array of different scores
I = size(Scores,1); % number of scores
% setting learning rate parameters
nu_alpha = .1;
nu_beta = .1;
nu_gamma = .2; 
nu_delta = .1;
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



for i=1:I
    p_new(1) = p_new(1) + logprobS(Scores{i,1},params);
end


for n=1:CDlength
    params_new = params;
    e_alpha = 0;
    e_beta = 0;
    e_gamma = 0;
    e_delta = 0;
    % original score data expectation section of gradient
    for i=1:I
        S = Scores{i,1};
        V = size(S,1); % # of voices
        B = size(S,2); % # of beats    
        M = params.M*ones(1,B);
        M_prime = params.M_prime*ones(1,B);
        den = I*B*V;
%         e_alpha = e_alpha - nu_alpha*params.alpha * sum(sum(S.*M))/den; % divide this by I*B*V
%         e_beta = e_beta - nu_beta*2*params.beta * sum(sum(diff(S, [], 2) .^2))/den;
%         e_gamma = e_gamma - nu_gamma*2*params.gamma * sum(S(:).*S(:))/den;
%         e_delta = e_delta - nu_delta*params.delta * sum(sum(S.*M_prime))/den;
        e_alpha = e_alpha - nu_alpha * sum(sum(S.*M))/den; % divide this by I*B*V
        e_beta = e_beta - nu_beta * sum(sum(diff(S, [], 2) .^2))/den;
        e_gamma = e_gamma - nu_gamma * sum(S(:).*S(:))/den;
        e_delta = e_delta - nu_delta * sum(sum(S.*M_prime))/den;
    end
    expectation_D = [e_alpha, e_beta, e_gamma, e_delta]/I;
    % e_alpha = e_alpha / I;


    e_alpha = 0;
    e_beta = 0;
    e_gamma = 0;
    e_delta = 0;
    % sampled score expectation section of gradient
    for i=1:I % iterate through each score
        V = size(Scores{i,1},1); % # of voices
        B = size(Scores{i,1},2); % # of beats
        den = I*B*V;

        M = params.M*ones(1,B);
        M_prime = params.M_prime*ones(1,B);

        S = MRFSampler(Scores{i,1},params,sweeps); % sample the score        
        
%         e_alpha = e_alpha -nu_alpha*params.alpha * sum(sum(S.*M))/den; % divide each of these by I*B*V, multiply by specific learning rate
%         e_beta = e_beta - nu_beta*2*params.beta * sum(sum(diff(S, [], 2) .^2))/den;
% %         e_b_1 = diff(S(1:end-1), [], 2);
% %         e_b_2 = diff(S(2:end), [], 2);
% %         e_beta = e_beta -2*nu_beta*params.beta * sum(sum(e_b_1))/den + 2*nu_beta*params.beta * sum(sum(e_b_2))/den;
%         e_gamma = e_gamma + 2*nu_gamma*params.gamma * sum(S(:).*S(:))/den;
%         e_delta = e_delta -nu_delta*params.delta * sum(sum(S.*M_prime))/den;
        e_alpha = e_alpha - nu_alpha * sum(sum(S.*M))/den; % divide this by I*B*V
        e_beta = e_beta - nu_beta * sum(sum(diff(S, [], 2) .^2))/den;
        e_gamma = e_gamma - nu_gamma * sum(S(:).*S(:))/den;
        e_delta = e_delta - nu_delta * sum(sum(S.*M_prime))/den;
    end

    expectation_C = [e_alpha, e_beta, e_gamma, e_delta]/I;

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

    
    for i=1:I
        p_new(n+1) = p_new(n+1) + logprobS(Scores{i,1},params_new);
    end
    
    params = params_new;
    
    subplot(2,3,1);
    plot(p_new(1:n+1));
    title('joint logprobS');
    subplot(2,3,2);
    plot(grad_norms(1:n));
    title('magnitude of gradient');
    subplot(2,3,3);
    plot(alphas(1:n+1));
    title('alpha');
    subplot(2,3,4);
    plot(betas(1:n+1));
    title('beta');
    subplot(2,3,5);
    plot(gammas(1:n+1));
    title('gamma');
    subplot(2,3,6);
    plot(deltas(1:n+1));
    title('delta');
    drawnow;
    
    if mod(n,100) == 0
        disp(params);
    end
toc;
    
end

% Sgrad = Sgrad - alpha * midNotePotential;
% Sdiff = diff(S, [], 2);
% Sgrad(:, 1:end-1) = Sgrad(:, 1:end-1) - 2*beta * Sdiff;
% Sgrad(:, 2:end) = Sgrad(:, 2:end) + 2*beta * Sdiff;
% Sgrad = Sgrad + 2*gamma*S;

end
