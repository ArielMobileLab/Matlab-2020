clear;
clc;

%Heart rate Mean and sd calculation
valHR = load('Heartrate_Test.mat', 'heartRatedata');
sm = cell2mat(table2array(cell2table(struct2cell(valHR))));
sm_one_line =sm(2,:);
sm_one_line_without_zero = nonzeros(sm_one_line');
sm_one_line_reshape_without_zero = flipud(sm_one_line_without_zero);
% precentile90_Baseline = prctile(sm_one_line_reshape_without_zero(:,1), 90);
mean_HR_Baseline = mean(sm_one_line_reshape_without_zero(:,1));
meanHR_2_Baseline = mean(sm_one_line_reshape_without_zero(:,1).^2);
% median_Baseline = prctile(sm_one_line_reshape_without_zero(:,1), 50);
sd_HR_Baseline = std(sm_one_line_reshape_without_zero(:,1));
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


%EEG Alpha/Beta Mean and sd calculation (one EEG ch)
Va1Ratio = load('Ratio_Test.mat','Ratio');
smRatio = cell2mat(table2array(cell2table(struct2cell(Va1Ratio))));
sm_one_line_Ratio =smRatio(2,3:end);
% sm_one_line_Ratio =smRatio(2,6:end);
sm_one_line_Ratio_without_zero = nonzeros(sm_one_line_Ratio');
sm_one_line_Ratio_reshape_without_zero = flipud(sm_one_line_Ratio_without_zero);
% precentile90_Ratio_Baseline = prctile(sm_one_line_Ratio_reshape_without_zero(:,1), 90);
mean_Ratio_Baseline = mean(sm_one_line_Ratio_reshape_without_zero(:,1));
meanRatio_2_Baseline = mean(sm_one_line_Ratio_reshape_without_zero(:,1).^2);
% median_Ratio_Baseline = prctile(sm_one_line_Ratio_reshape_without_zero(:,1), 50);
sd_Ratio_Baseline = std(sm_one_line_Ratio_reshape_without_zero(:,1));