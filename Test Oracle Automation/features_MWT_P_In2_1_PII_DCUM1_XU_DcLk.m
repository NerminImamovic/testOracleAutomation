function [max_after_sampling, amplitude] = features_MWT_P_In2_1_PII_DCUM1_XU_DcLk(MWT_P_In2_1_PII_DCUM1_XU_DcLk)

    MWT_P_In2_1_PII_DCUM1_XU_DcLk = MWT_P_In2_1_PII_DCUM1_XU_DcLk(1:50000);

    peaks = findpeaks(MWT_P_In2_1_PII_DCUM1_XU_DcLk);
    
    amplitude = (max(peaks) - min(peaks));
    
    max_after_sampling = max(MWT_P_In2_1_PII_DCUM1_XU_DcLk);
end

