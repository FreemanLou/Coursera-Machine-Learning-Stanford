function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%counts the num of data points to each centroid
counter = zeros(K, 1);

for i = 1 : m
    %get centroid number
    centroid_num = idx(i);
    
    %increment counter
    counter(centroid_num) =  counter(centroid_num) + 1;

    %add to the centroid vector for the centroid number
    centroids(centroid_num, :) = centroids(centroid_num, :) + X(i, :);
end

%go through each centroid vector and divide by counter
for j = 1 : K
    centroids(j, :) =  centroids(j, :) ./ counter(j);
end

% =============================================================


end

