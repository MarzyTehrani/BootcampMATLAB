%% Preallocation (pages 5-7, 8, 9).
% Numeric preallocation.
X= zeros(10);
Y = NaN(10);

for k1 = 1:10
    for k2 = 1:10
        X(k1,k2) = k1^2 + k2^2 -1;
    end %for k2
end % for k1

for k1 = 10:-1:1
    for k2 = 10:-1:1
        x(k1, k2) = k1^2 + k2^2 -1;
    end%for k2
end %for k1

%% Cells/structures.
% Preallocate using CELL/STRUCT