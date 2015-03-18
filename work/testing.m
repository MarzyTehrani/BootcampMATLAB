%% test function

x = MedData.Age;
y = MedData.BPDiff; %Pulse pressure
modelCoeffs = fitQuadModel(x,y)

height = MedData.Height; %x1
waist = MedData.Waist; %x2
weight = MedData.Weight; %y
modelCoeffs = fitQuadModel([heigh, waist], weight)