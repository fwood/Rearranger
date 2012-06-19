function score = scoreScore(K,N,A,V,midNotePotential,params)

T = size(A,2); % number of "time steps" 
B = T; % until beat tracking

S = reshape(params(1:(K*N*B)),K*N,B);
D = reshape(params(((K*N*B)+1):end),K*N,B);

% 
H = V*(D.*S);
%residual = (A - brassSpectra * H);

% p(S) parameters:
alpha = 1;
beta = 1;
gamma = 1;

score = sum(A(:) .* log(H(:)) - H(:));
score = score - alpha *sum(sum( S.*midNotePotential));
score = score + gamma * sum(S(:).*S(:));
score = score - beta * sum(sum(diff(S, [], 2).^2));
score = score - sum(D(:)); % exponential prior on D

score = -score;

if isnan(score) || score == Inf
    disp(num2str(score));
end