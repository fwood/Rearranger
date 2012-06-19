function [w h score] = isnmf(x, w, h)
% function [w h score] = isnmf(x, w, h)

M = size(x, 1);
N = size(x, 2);
K = size(w, 2);

if (nargin < 3)
    h = rand(K, N);
end

% while true,
%     lasth = h;
%     
%     wh = w*h;
%     whinv = 1./wh;
%     xwhinvsq = x .* whinv.^2;
%     
%     h = h .* (w' * xwhinvsq) ./ (w' * whinv);
%     if (mean(abs(lasth(:) - h(:))) < 10.0001)
%         break;
%     end
% end

wh = w*h;
whinv = 1./wh;
xwhinvsq = x .* whinv.^2;

h = max(1e-10, h .* (w' * xwhinvsq) ./ (w' * whinv));

% wh = w*h;
% whinv = 1./wh;
% xwhinvsq = x .* whinv.^2;
% 
% w = w .* (xwhinvsq * h') ./ (whinv * h');

% wh = w*h;
score = mean(-x(:) ./ (wh(:)+eps) - log(wh(:) + eps));