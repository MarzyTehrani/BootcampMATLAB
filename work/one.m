%% Interactive prototyping.
load S02_medData

%%Basic data exploration.
figure
x = MedData.Age;
y = MedData.BPDiff; %Pulse pressure
scatter(x,y,'kx')
xlabel('Age (years)')
ylabel('Pulse pressure (mmHg)')
title('Pulse pressure vs. age')

%% Task: aim to fit a model to this data set.
% Preprocess to deal with missing values.
missingVals = isnan(x) | isnan(y);
xClean = x(~missingVals); %keep all x minus any in missingVals
yClean = y(~missingVals);
%Formulate the model and write it in MATLAB code
