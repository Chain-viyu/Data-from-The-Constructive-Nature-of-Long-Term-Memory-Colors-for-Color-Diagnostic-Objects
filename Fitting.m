clear
clc
path = 'C:\Users\ifviy\OneDrive - whu.edu.cn\科研\24-Research Papers\2401-王辰宇陈治宇-Memory color on Displays\2407-Work 2-Working Memory and Unique Hues\';
load ([path 'data_4 exps (exclude fanta and cola).mat'])
% Observed_NMC = Name_After_2_2;
% Original_NMC = Name_Prior_1_1;
% MemoryEffect = Image_Prior_2_1 - Name_Prior_1_1;
% PracticeEffect = Image_After_1_2 - Image_Prior_2_1;
NONE = zeros([18,3]);
Observed_NMC = lab2lch(Name_After_2_2);
Original_NMC = lab2lch(Name_Prior_1_1);
MemoryEffect = lab2lch(Image_Prior_2_1) - lab2lch(Name_Prior_1_1);
PracticeEffect = lab2lch(Image_After_1_2) - lab2lch(Image_Prior_2_1);

% Predict_0 = Original_NMC;
% BL_Deviation_0(:,1) = de2000(Observed_NMC, Predict_0);
% BL_Deviation_0(1,2) = mean(BL_Deviation_0(:,1));
% BL_Deviation_0(:,3) = diag(pdist2(Observed_NMC, Predict_0));
% BL_Deviation_0(1,4) = mean(BL_Deviation_0(:,3));

best_fitting_1 = bestFit(Observed_NMC, Original_NMC, MemoryEffect, NONE);

best_fitting_2 = bestFit(Observed_NMC, Original_NMC, PracticeEffect, NONE);

best_fitting_3 = bestFit(Observed_NMC, Original_NMC, MemoryEffect, PracticeEffect);

function best_fitting_result = bestFit(y, d, x1, x2)
min_de00 = 100;
min_de76 = 100;
min_L = 100;
min_C = 100;
min_h = 100;
for p1 = 0.702
    for p2 = 0
        Predict = d + p1*x1 + p2*x2;
        % Deviation_1 = de2000(y, Predict_1);
        % de00 = mean(Deviation_1);
        % DE76_1 = diag(pdist2(y, Predict_1));
        % de76 = mean(DE76_1);
        % % Check if the current de00 is the smallest so far
        % if de00 < min_de00
        %     % Update the minimum de00 and save the corresponding Deviation_1
        %     min_de00 = de00;
        %     best_fitting(:,1) = Deviation_1;
        %     best_de00_p31 = p1;
        %     best_de00_p32 = p2;
        % end
        % 
        % if de76 < min_de76
        %     % Update the minimum de00 and save the corresponding Deviation_1
        %     min_de76 = de76;
        %     best_fitting(:,3) = DE76_1;
        %     best_de76_p31 = p1;
        %     best_de76_p32 = p2;
        % end
       

        L_all = dev(y(:,1), Predict(:,1));
        L = mean(L_all);

        C_all = dev(y(:,2), Predict(:,2));
        C = mean(C_all);

        h_all = dev(y(:,3), Predict(:,3));
        h = mean(h_all);

        % Check if the current ** is the smallest so far
        if L < min_L
            % Update the minimum ** and save the corresponding Deviation_1
            min_L = L;
            best_fitting_LCH(:,1) = L_all;
            best_ori_data(:,1:2) = [y(:,1), Predict(:,1)];
            best_L_p31 = p1;
            best_L_p32 = p2;
        end

        if C < min_C
            % Update the minimum de00 and save the corresponding Deviation_1
            min_C = C;
            best_fitting_LCH(:,3) = C_all;
            best_ori_data(:,3:4) = [y(:,2), Predict(:,2)];
            best_C_p31 = p1;
            best_C_p32 = p2;
        end

        if h < min_h
            % Update the minimum ** and save the corresponding Deviation_1
            min_h = h;
            best_fitting_LCH(:,5) = h_all;
            best_ori_data(:,5:6) = [y(:,3), Predict(:,3)];
            best_h_p31 = p1;
            best_h_p32 = p2;
        end
    end
end
% best_fitting(1,2) = mean(best_fitting(:,1));
% best_fitting(2,2) = best_de00_p31;
% best_fitting(3,2) = best_de00_p32;
% best_fitting(1,4) = mean(best_fitting(:,3));
% best_fitting(2,4) = best_de76_p31;
% best_fitting(3,4) = best_de76_p32;

best_fitting_LCH(1,2) = mean(best_fitting_LCH(:,1));
best_fitting_LCH(2,2) = best_L_p31;
best_fitting_LCH(3,2) = best_L_p32;
best_fitting_LCH(1,4) = mean(best_fitting_LCH(:,3));
best_fitting_LCH(2,4) = best_C_p31;
best_fitting_LCH(3,4) = best_C_p32;
best_fitting_LCH(1,6) = mean(best_fitting_LCH(:,5));
best_fitting_LCH(2,6) = best_h_p31;
best_fitting_LCH(3,6) = best_h_p32;


best_fitting_result = [best_fitting_LCH, best_ori_data];
end

function deviation = dev(data1, data2)
deviation = abs(data1 - data2);
% for i = 1:length(data1)
%     percent(i,1) = deviation(i,1)/data2(i,1);
% end
end