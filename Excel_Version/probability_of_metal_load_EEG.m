function pMWL = probability_of_metal_load_EEG(Ratio_t)

Ratio_t=double(Ratio_t*1.0);

%Normaly we will take these values from baseline measurements
Mean_Ratio=0.224549983271167;
sd_Ratio=0.015585524089167; 

% %Exponential smoothness for mean Ratio and mean Ratio^2
% smoothing_factor=0.9999; % 
% Mean_Ratio_2=sd_Ratio^2+Mean_Ratio^2;
% Mean_Ratio=Mean_Ratio*smoothing_factor+(1-smoothing_factor)*Ratio_t;
% Mean_Ratio_2=Mean_Ratio_2*smoothing_factor+(1-smoothing_factor)*Ratio_t^2;
% 
% % standard deviation=(E(x^2)-E(x)^2)^0.5
% sd_Ratio=(Mean_Ratio_2-Mean_Ratio^2)^0.5; 

%version 1
% pMWL=double(1.0/(1.0+exp(-(Ratio_t-Mean_Ratio+sd_Ratio)/sd_Ratio)));

%version 2
pMWL=double(1.0/(1.0+exp(-(Ratio_t-Mean_Ratio)/sd_Ratio)));

end


