%B0 calculation function 
function [ b0 ] = b0_fun( desired, Alpha, K, C, Thresh_hold )

    SV_index = find(Alpha > Thresh_hold * max(Alpha));%Limits Setup
%% Hard margin
    if C >= 10^6
        [~, max_SV_index_] = max(Alpha);
        b0 = desired(max_SV_index_) - (Alpha.*desired)' * ...
        K(max_SV_index_,:)';

    
%% Soft margin 
    else
        b = zeros(length(SV_index),1);
        for i = 1:length(b)
            b(i) = desired(SV_index(i)) - (Alpha.*desired)' * ...
                            K(SV_index(i),:)';
        end
        b0 = mean(b);
    end
end

% This code can also be written as seperate function for soft and hard margin