function [number_of_peaks, number_of_opposite_peaks, avg] = features_MWT_P_In2_1_PII_DCUL1_XU_LnRms(MWT_P_In2_1_PII_DCUL1_XU_LnRms)

    avg = mean(MWT_P_In2_1_PII_DCUL1_XU_LnRms);
    
    MWT_P_In2_1_PII_DCUL1_XU_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XU_LnRms);
    
    MWT_P_In2_1_PII_DCUL1_XU_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XU_LnRms);

    peaks = findpeaks(MWT_P_In2_1_PII_DCUL1_XU_LnRms);
    
    number_of_peaks = numel(peaks);
    
    MWT_P_In2_1_PII_DCUL1_XU_LnRms = MWT_P_In2_1_PII_DCUL1_XU_LnRms * -1;
    
    MWT_P_In2_1_PII_DCUL1_XU_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XU_LnRms);
    
    MWT_P_In2_1_PII_DCUL1_XU_LnRms = smoothdata(MWT_P_In2_1_PII_DCUL1_XU_LnRms);

    peaks = findpeaks(MWT_P_In2_1_PII_DCUL1_XU_LnRms);
    
    number_of_opposite_peaks = numel(peaks);

end

