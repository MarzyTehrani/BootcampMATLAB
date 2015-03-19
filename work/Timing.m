% Basaic performance measures
% TIC/TOC
tic 
A = rand(1e3);
toc

% Processing time.
t1 = cputime;
A = rand(le3);
t2 = cputime;
delta_t = t2 - t1

% from 13b onwards, you also have TIMEIT.
myFunc = @() rand(le3);
t_avg = timeit(myFunc)

% MATLAB Profiler
profile on
predictionRankings = findBestPredictors_debug();
profile off
profile viewer