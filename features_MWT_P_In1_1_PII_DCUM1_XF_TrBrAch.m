function [number_of_peaks_first_half, number_of_opposite_peaks, avg_first_half, avg_second_half] = features_MWT_P_In1_1_PII_DCUM1_XF_TrBrAch(MWT_P_In1_1_PII_DCUM1_XF_TrBrAch)

    count = numel(MWT_P_In1_1_PII_DCUM1_XF_TrBrAch);
    
    first = MWT_P_In1_1_PII_DCUM1_XF_TrBrAch(1 : count/2);
    
    first = smoothdata(first);

    first = smoothdata(first);

    peaks = findpeaks(first);
    
    number_of_peaks_first_half = numel(peaks);
    
    avg_first_half = mean(MWT_P_In1_1_PII_DCUM1_XF_TrBrAch(1 : count/2));
    
    avg_second_half = mean(MWT_P_In1_1_PII_DCUM1_XF_TrBrAch(count/2 + 1 : count));
    
    second = MWT_P_In1_1_PII_DCUM1_XF_TrBrAch(count/2 + 1 : count) * -1 ;
    
    second = smoothdata(second);
    
    second = smoothdata(second);

    peaks = findpeaks(second);
    
    number_of_opposite_peaks = numel(peaks);

end

