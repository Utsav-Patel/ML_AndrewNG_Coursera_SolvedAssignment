function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
KK = size(centroids, 2);
% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

len = length(idx);
for i=1:len
    idx(i,1) = 1;
    tmp = 0;
    for k=1:KK
        tmp = (X(i,k)-centroids(1,k))*(X(i,k)-centroids(1,k)) + tmp;
    end
    mx = tmp;
    for j=1:K
        tmp = 0;
        for k=1:KK
            tmp = (X(i,k)-centroids(j,k))*(X(i,k)-centroids(j,k)) + tmp;
        end
        if mx>(tmp)
            mx = (tmp);
            idx(i,1) = j;
        end
    end
end





% =============================================================

end

