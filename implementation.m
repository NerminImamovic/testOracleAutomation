% % training_data = featureExtraction();
% % 
% %  labels = [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 0; 0; 0; 0; 0; 0; 0];
% % 
% load('tbltrain.mat')
% 
% % training_data = [training_data(1:28) labels];
% 
% % SVMModel = fitcsvm(training_data(1:28), training_data(29));
% 
% SVMModel = fitcsvm(X,Y,'Standardize',true,'ClassNames',{1,0});
% 
% CVSVMModel = crossval(SVMModel);
% 
% classLoss = kfoldLoss(CVSVMModel)
% 
% % classLoss = kfoldLoss(CV)
% 
% test = extractFeaturesTesting();
% 
% result = predict(SVMModel, test)
clc;
clear all;

load('trainedModel.mat')

test = extractFeaturesTesting('C:\Users\nimamovi.BT\Desktop\Implementation\Data', 'Dobar1.mat')

yfit = trainedModel.predictFcn(test)