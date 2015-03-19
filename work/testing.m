%% test function
load S02_medData

X = MedData.Age;
y = MedData.BPDiff; %Pulse pressure
modelCoeffs = fitQuadModel(X,y)

height = MedData.Height; %x1
waist = MedData.Waist; %x2
weight = MedData.Weight; %y
modelCoeffs = fitQuadModel([height, waist], weight)