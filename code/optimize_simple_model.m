function [S, D] = optimize_simple_model(A, V)

d_hyp = 2; % d ~ Gamma(d_hyp,d_hyp)

K = size(V, 2); % the number of distinct instruments and notes
B = size(A, 2);
N = 49; % TODO: Shouldn't really be hard-coded.

params = getMRFparams(B);

S = sparse(repmat(repmat([zeros(N-1, 1); 1], 5, 1), 1, B));
D = ones(size(S));

VSD = V * (S .* D);
V = V ./ repmat(max(V, [], 1), size(V, 1), 1);
A = A / max(A(:));
V(:, N:N:size(V, 2)) = 0;
V = max(V, eps);

% Nbins = 1000;
% A = A(1:Nbins, :);
% V = V(1:Nbins, :);

lambda = 0.0;

scores = zeros(N, 1);
for i = 1:3,
    for b = 1:B,
        bOn = find(S(:, b));
        for l = 1:2,
            for j = 0:4,
                bOnj = bOn(j+1);
                validk = (j*N+1):((j+1)*N);
                k0ind = K*(b-1);
                S(validk, b) = 0;
                for k = validk,
                    logpDiff = logprobSdiff(S, params, k + k0ind);
                    S(k, b) = 1;
                    [temp Dscore] = optimizeDCol(A(:, b), V, S(:, b), D(:, b));
                    S(k, b) = 0;
    %                 scores(k-j*N) = Dscore;
                    scores(k-j*N) = Dscore + lambda*logpDiff;
                end
                [maxscore maxind] = max(scores);
                S(maxind+j*N, b) = 1;
                D(find(S(:, b)), b) = optimizeDCol(A(:, b), V, S(:, b), D(:, b));
            end
        end
        imagesc(S)
        pause(0.0001);
    end
    if (i < 2)
        lambda = 0.1;
    end
end

function [D score] = optimizeDCol(A, V, S, D)
% We'll put a Gamma(2, 2c) prior on D.
lastscore = -inf;
score = -1e50;

c = 1/max(A(:));

Sinds = find(S);
V = V(:, Sinds);
D = D(Sinds);
lastD = -inf(size(D));
Ddenom = sum(V, 1)';
% Ddenom = 1 ./ sum(V, 1)';
VSD = V * D;
while (mean(abs(D - lastD) ./ abs(D)) > 0.01),
% while ((score - lastscore) / abs(score) > 0.02),
    xVSDinv = A ./ (VSD + eps);
    Dnum = V' * xVSDinv;
    lastD = D;
%     D = D .* Dnum .* Ddenom;
    D = (D .*Dnum + 1)./(2*c + Ddenom);
    lastscore = score;
    VSD = V * D;
%     fprintf('score = %f\n', mean(A(:).*log(VSD(:)) - VSD(:)));
%     fprintf('score = %f\n', sum(A(:).*log(VSD(:)) - VSD(:)) + sum(log(D(:)) - 2*c*D(:)));
end
score = mean(A(:).*log(VSD(:)) - VSD(:));
score = score + sum(log(D(:)) - 2*c*D(:));

function [D score] = optimizeD(A, V, S, D)
lastscore = -inf;
score = -1e50;
Ddenom = repmat(1 ./ sum(V, 1)', 1, size(D, 2));
while ((score - lastscore) / abs(score) > 0.02),
    VSD = V * (S .* D);
    xVSDinv = A ./ (VSD + eps);
    Dnum = V' * xVSDinv;
%     Ddenom = repmat(1 ./ sum(V, 1)', 1, size(D, 2));
    D = D .* Dnum .* Ddenom;
    lastscore = score;
    score = mean(A(:).*log(VSD(:)) - VSD(:));
end