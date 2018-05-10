function featureMatrix = featureExtraction()

inputNames = readData();

featureMatrix = [];

for i = 1:length(inputNames)
    
    featureVector = [];
    
    load(fullfile('Data', convertStringsToChars(inputNames(i))))
    
    % features from MWT_P_In2_1_PII_DCUL1_XU_LnRms - number of peaks,
    % opposite peaks and avg
    
    [number_of_peaks, number_of_opposite_peaks, avg] = features_MWT_P_In2_1_PII_DCUL1_XU_LnRms(MWT_P_In2_1_PII_DCUL1_XU_LnRms);
    
    featureVector = [featureVector number_of_peaks number_of_opposite_peaks avg];
    
    
    % features from MWT_P_In2_1_PII_DCUL1_XU_LnRms - number of peaks,
    % opposite peaks, avg_first_half and avg_second_half
    
    [number_of_peaks, number_of_opposite_peaks, avg_first_half, avg_second_half ] = features_MWT_P_In2_1_PII_DCUL1_XI_LnRms(MWT_P_In2_1_PII_DCUL1_XI_LnRms);
    
    featureVector = [featureVector number_of_peaks number_of_opposite_peaks avg_first_half avg_second_half];
    
    % features from MWT_P_In2_1_PII_DCUM1_XU_DcLk - max, amplitude, avg,
    % mozda diff
    
    [max, amplitude] = features_MWT_P_In2_1_PII_DCUM1_XU_DcLk(MWT_P_In2_1_PII_DCUM1_XU_DcLk);
    
    featureVector = [featureVector max amplitude];
    
    % features from MWT_P_In2_1_PII_DCUM1_XP_Cp - number_of_peaks,
    % max_value
    
    [number_of_peaks, max, avg_80_percent] = features_MWT_P_In2_1_PII_DCUM1_XP_Cp(MWT_P_In2_1_PII_DCUM1_XP_Cp);
    
    featureVector = [featureVector number_of_peaks max avg_80_percent];
    
    % features from MWT_P_In1_1_PII_DCUM1_XF_TrBrAch - number of peaks,
    % opposite peaks, avg_first_half and avg_second_half
    
    [number_of_peaks, number_of_opposite_peaks, avg_first_half, avg_second_half ] = features_MWT_P_In1_1_PII_DCUM1_XF_TrBrAch(MWT_P_In1_1_PII_DCUM1_XF_TrBrAch);
    
    featureVector = [featureVector number_of_peaks number_of_opposite_peaks avg_first_half avg_second_half]; 
    
    % features from MWT_P_In2_1_PII_DCUL1_X_LcmSt - min, max, avg 
    
    [min, max, avg] = featuresConstantSignal(MWT_P_In2_1_PII_DCUL1_X_LcmSt);
    
    featureVector = [featureVector min max avg];
    
    % features from MWT_P_In2_1_PII_DCUM1_X_McmSt - min, max, avg
    
    [min, max, avg] = featuresConstantSignal(MWT_P_In2_1_PII_DCUM1_X_McmSt);
    
    featureVector = [featureVector min max avg];
    
    % features from MWT_P_In2_1_PII_DCUM2_X_McmSt - min, max, avg
    
    [min, max, avg] = featuresConstantSignal(MWT_P_In2_1_PII_DCUM2_X_McmSt);
    
    featureVector = [featureVector min max avg];
    
    % features from MWT_P_In2_1_PII_DCUA_X_AcmSt - min, max, avg
    
    [min, max, avg] = featuresConstantSignal(MWT_P_In2_1_PII_DCUA_X_AcmSt);
    
    featureVector = [featureVector min max avg];
    
    featureMatrix = [featureMatrix; featureVector];
    
end

    featureMatrix
end

