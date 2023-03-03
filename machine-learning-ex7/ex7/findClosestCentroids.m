function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
m = size(X,1);


for p = 1:m;
  
  arr = zeros(K,1);
  for t = 1:K;
    diff = zeros(1, size(X,2));
    a = X(p, :);
    b = centroids(t, :);
    diff = a-b;
    diff = diff.^2;
    dd = sum(diff);
    arr(t) = dd;    
  endfor
  [pt, idg] = min(arr);
  idx(p) = idg;
  
endfor


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

