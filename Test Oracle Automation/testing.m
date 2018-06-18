labels = test_data(:,29);

new_test_data = test_data(:,1:28)

predicted_labels = zeros(20, 1);

for i = 1:20
    nova = new_test_data(i, 1:28);
    predicted_labels(i) = trainedModel.predictFcn(nova);
end 

plotconfusion(labels.', predicted_labels.')