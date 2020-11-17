function BW2 = del_outliers(BW2, centroid, tresh)
[N, M] = size(BW2);
for i=1:N
    for j=1:M
        if BW2(i,j) == 1
            SE = sqrt((i-centroid(1))^2 + (j-centroid(2))^2);
            if SE >= tresh
                BW2(i,j) = 0;
            end
        end
    end
end