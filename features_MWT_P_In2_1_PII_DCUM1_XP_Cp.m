function [number_of_peaks, maximum, avg_80_percent] = features_MWT_P_In2_1_PII_DCUM1_XP_Cp(MWT_P_In2_1_PII_DCUM1_XP_Cp)

    % number of peaks for last 20%
    
    count = numel(MWT_P_In2_1_PII_DCUM1_XP_Cp);
    
    avg_80_percent = mean(MWT_P_In2_1_PII_DCUM1_XP_Cp(1 : count * 0.8));

    maximum = max(MWT_P_In2_1_PII_DCUM1_XP_Cp);
    
    MWT_P_In2_1_PII_DCUM1_XP_Cp = MWT_P_In2_1_PII_DCUM1_XP_Cp(0.8 * count:count);
    
    MWT_P_In2_1_PII_DCUM1_XP_Cp = smoothdata(MWT_P_In2_1_PII_DCUM1_XP_Cp);
    
    MWT_P_In2_1_PII_DCUM1_XP_Cp = smoothdata(MWT_P_In2_1_PII_DCUM1_XP_Cp);
    
    peaks = findpeaks(MWT_P_In2_1_PII_DCUM1_XP_Cp);
    
    number_of_peaks = numel(peaks);

end

