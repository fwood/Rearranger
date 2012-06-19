function [score, gradient] = scoreScore(K,N,A,V,midNotePotential,params)

T = size(A,2); % number of "time steps" 
B = T; % until beat tracking

S = reshape(params(1:(K*N*B)),K*N,B);
D = reshape(params(((K*N*B)+1):end),K*N,B);

% 
H = V*(D.*S);
% residual = A - H

% p(S) parameters:
% higher alpha => more important to be near the mid range
alpha = 1;
% higher beta => more temporal continuity
beta = 1;
% higher gamma => more sparsity
gamma = 1000;
% Da, Db are parameters to gamma prior on D
Da = 2;
Db = 2;

score = sum(A(:) .* log(H(:)) - H(:));
score = score - alpha *sum(sum( S.*midNotePotential));
score = score + gamma * sum(S(:).*S(:));
score = score - beta * sum(sum(diff(S, [], 2).^2));
score = score + (Da-1)*sum(log(D(:))) - Db*sum(D(:));
% score = score - sum(D(:)); % exponential prior on D

VAoverH = V' * (A./H);
Vrep = repmat(sum(V, 1)', 1, B);
Dgrad = S .* (VAoverH - Vrep);
Dgrad = Dgrad + (Da-1)./D - Db;

Sgrad = D .* (VAoverH - Vrep);
Sgrad = Sgrad - alpha * midNotePotential;
Sdiff = diff(S, [], 2);
Sgrad(:, 1:end-1) = Sgrad(:, 1:end-1) - 2*beta * Sdiff;
Sgrad(:, 2:end) = Sgrad(:, 2:end) + 2*beta * Sdiff;
Sgrad = Sgrad + 2*gamma*S;

gradient = -[Sgrad(:); Dgrad(:)];

score = -score;

if isnan(score) || score == Inf
    disp(num2str(score));
end
