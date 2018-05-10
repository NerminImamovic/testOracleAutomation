function [number_of_peaks, number_of_opposite_peaks, avg_first_half, avg_second_half] = features_MWT_P_In2_1_PII_DCUL1_XI_LnRms(MWT_P_In2_1_PII_DCUL1_XI_LnRms)

    count = numel(MWT_P_In2_1_PII_DCUL1_XI_LnRms);
    
    avg_first_half = mean(MWT_P_In2_1_PII_DCUL1_XI_LnRms(1 : count/2));
    
    avg_second_half = mean(MWT_P_In2_1_PII_DCUL1_XI_LnRms(count/2 + 1 : count));
    
    MWT_P_In2_1_PII_DCUL1_XI_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XI_LnRms);
    
    MWT_P_In2_1_PII_DCUL1_XI_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XI_LnRms);

    peaks = findpeaks(MWT_P_In2_1_PII_DCUL1_XI_LnRms);
    
    number_of_peaks = numel(peaks);
    
    MWT_P_In2_1_PII_DCUL1_XI_LnRms = MWT_P_In2_1_PII_DCUL1_XI_LnRms * -1;
    
    MWT_P_In2_1_PII_DCUL1_XI_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XI_LnRms);
    
    MWT_P_In2_1_PII_DCUL1_XI_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XI_LnRms);

    peaks = findpeaks(MWT_P_In2_1_PII_DCUL1_XI_LnRms);
    
    number_of_opposite_peaks = numel(peaks);

end

