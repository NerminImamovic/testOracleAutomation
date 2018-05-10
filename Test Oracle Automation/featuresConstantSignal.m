function [minimum, maximum, avg] = featuresConstantSignal(signal)

    minimum = min(signal);
    
    maximum = max(signal);
    
    avg = mean(signal);

end

