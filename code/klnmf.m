function [w h score] = klnmf(x, w, h)
% function [w h score] = klnmf(x, w, h)

M = size(x, 1);
N = size(x, 2);
K = size(w, 2);

if (nargin < 3)
    h = rand(K, N);
end

% lasth = h;
% while true,
%     wh = w*h;
%     xwhinv = x ./ wh;
%     hnum = w' * xwhinv;
%     hdenom = repmat(1 ./ sum(w, 1)', 1, N);
%     h = h .* hnum .* hdenom;
%     
%     if (mean(abs(lasth(:) - h(:))) < 0.0001)
%         break;
%     end
%     lasth = h;
% end

wh = w*h;
xwhinv = x ./ (wh + eps);
wnum = xwhinv * h';
wdenom = repmat(1 ./ sum(h, 2)', M, 1);
w = w .* wnum .* wdenom;

wh = w*h;
xwhinv = x ./ (wh + eps);
hnum = w' * xwhinv;
hdenom = repmat(1 ./ sum(w, 1)', 1, N);
h = h .* hnum .* hdenom;

wh = w*h;
score = mean(x(:) .* log(wh(:)+eps) - wh(:));