tic

T_GEMINI = readtable('Diversity-GEMINI.csv')
T_GPT4 = readtable('Diversity-GPT4.csv')
T_GPT35 = readtable('Diversity-GPT35.csv')
T_LLAMA3 = readtable('Diversity-LLAMA3.csv')
T_CLAUDE = readtable('Diversity-CLAUDE.csv')
T_MISTRAL = readtable('Diversity-MISTRAL.csv')

% Levenshtein_Dist = T_GPT4{1:end,2:2}
Levenshtein_Sim_GEMINI = T_GEMINI{1:end,3:3}
Levenshtein_Sim_GPT4 = T_GPT4{1:end,3:3}
Levenshtein_Sim_GPT35 = T_GPT35{1:end,3:3}
Levenshtein_Sim_LLAMA3 = T_LLAMA3{1:end,3:3}
Levenshtein_Sim_CLAUDE = T_CLAUDE{1:end,3:3}
Levenshtein_Sim_MISTRAL = T_MISTRAL{1:end,3:3}

% LCS_Dist = T_GPT4{1:end,4:4}
LCS_Sim_GEMINI = T_GEMINI{1:end,5:5}
LCS_Sim_GPT4 = T_GPT4{1:end,5:5}
LCS_Sim_GPT35 = T_GPT35{1:end,5:5}
LCS_Sim_LLAMA3 = T_LLAMA3{1:end,5:5}
LCS_Sim_CLAUDE = T_CLAUDE{1:end,5:5}
LCS_Sim_MISTRAL = T_MISTRAL{1:end,5:5}

% Overlap_Dist = T_GPT4{1:end,2:2}
Overlap_GEMINI = T_GEMINI{1:end,6:6}
Overlap_GPT4 = T_GPT4{1:end,6:6}
Overlap_GPT35 = T_GPT35{1:end,6:6}
Overlap_LLAMA3 = T_LLAMA3{1:end,6:6}
Overlap_CLAUDE = T_CLAUDE{1:end,6:6}
Overlap_MISTRAL = T_MISTRAL{1:end,6:6}

% Damerau_Levenshtein_Dist = T_GPT4{1:end,6:6}
% Damerau_Levenshtein_Sim_GEMINI = T_GEMINI{1:end,6:6}
% Damerau_Levenshtein_Sim_GPT4 = T_GPT4{1:end,6:6}
% Damerau_Levenshtein_Sim_GPT35 = T_GPT35{1:end,6:6}
% Damerau_Levenshtein_Sim_LLAMA3 = T_LLAMA3{1:end,6:6}

Jaro_Winkler_Sim_GEMINI = T_GEMINI{1:end,7:7}
Jaro_Winkler_Sim_GPT4 = T_GPT4{1:end,7:7}
Jaro_Winkler_Sim_GPT35 = T_GPT35{1:end,7:7}
Jaro_Winkler_Sim_LLAMA3 = T_LLAMA3{1:end,7:7}
Jaro_Winkler_Sim_CLAUDE = T_CLAUDE{1:end,7:7}
Jaro_Winkler_Sim_MISTRAL = T_MISTRAL{1:end,7:7}

% Jaccard
jaccard_4_GEMINI = T_GEMINI{1:end,15:15} % 14:14
jaccard_4_GPT4 = T_GPT4{1:end,15:15}
jaccard_4_GPT35 = T_GPT35{1:end,15:15}
jaccard_4_LLAMA3 = T_LLAMA3{1:end,15:15}
jaccard_4_CLAUDE = T_CLAUDE{1:end,15:15}
jaccard_4_MISTRAL = T_MISTRAL{1:end,15:15}

% Sorensen Dice
% sorensen_dice_1 = T{1:end,17:17} 
% sorensen_dice_2 = T{1:end,18:18}
% sorensen_dice_3 = T{1:end,19:19}
sorensen_dice_4_GEMINI = T_GEMINI{1:end,19:19} % 18:18
sorensen_dice_4_GPT4 = T_GPT4{1:end,19:19}
sorensen_dice_4_GPT35 = T_GPT35{1:end,19:19}
sorensen_dice_4_LLAMA3 = T_LLAMA3{1:end,19:19}
sorensen_dice_4_CLAUDE = T_CLAUDE{1:end,19:19}
sorensen_dice_4_MISTRAL = T_MISTRAL{1:end,19:19}

% QGram
% qgram_1 = T{1:end,21:21} 
% qgram_2 = T{1:end,22:22}
% qgram_3 = T{1:end,23:23}
qgram_4_GEMINI = T_GEMINI{1:end,23:23} % 22:22
qgram_4_GPT4 = T_GPT4{1:end,23:23}
qgram_4_GPT35 = T_GPT35{1:end,23:23}
qgram_4_LLAMA3 = T_LLAMA3{1:end,23:23}
qgram_4_CLAUDE = T_CLAUDE{1:end,23:23}
qgram_4_MISTRAL = T_MISTRAL{1:end,23:23}

% Cosine
% cosine_1 = T{1:end,9:9}
% cosine_2 = T{1:end,10:10}
% cosine_3 = T{1:end,11:11}
cosine_4_GEMINI = T_GEMINI{1:end,11:11} % 10:10
cosine_4_GPT4 = T_GPT4{1:end,11:11}
cosine_4_GPT35 = T_GPT35{1:end,11:11}
cosine_4_LLAMA3 = T_LLAMA3{1:end,11:11}
cosine_4_CLAUDE = T_CLAUDE{1:end,11:11}
cosine_4_MISTRAL = T_MISTRAL{1:end,11:11}

% Levenshtein
figure
set(gca,'xaxisLocation','top')
% setappdata(gcf, 'SubplotDefaultAxesLocation', [0, 0, 1, 1]);
subplot(2,4,1,'align');
% boxplot([Levenshtein_Sim_LLAMA3,Levenshtein_Sim_GPT35,Levenshtein_Sim_GPT4,Levenshtein_Sim_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [Levenshtein_Sim_LLAMA3,Levenshtein_Sim_GPT35,Levenshtein_Sim_GPT4,Levenshtein_Sim_GEMINI,Levenshtein_Sim_CLAUDE,Levenshtein_Sim_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
%pos = get(gcf, 'Position');
%set(gcf, 'Position',pos-[0 0 0 300])
set(gca,'fontsize',12)
title('Levenshtein');
xtickangle(45)
xlim([0 7]);
ylim([0 1]);
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% LCS Similarity
subplot(2,4,2,'align');
% boxplot([LCS_Sim_LLAMA3,LCS_Sim_GPT35,LCS_Sim_GPT4,LCS_Sim_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [LCS_Sim_LLAMA3,LCS_Sim_GPT35,LCS_Sim_GPT4,LCS_Sim_GEMINI,LCS_Sim_CLAUDE,LCS_Sim_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('LCS');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Damerau-Levenshtein Similarity (Hallucination)
%subplot(2,4,3,'align');
%boxplot([Damerau_Levenshtein_Sim_LLAMA3,Damerau_Levenshtein_Sim_GPT35,Damerau_Levenshtein_Sim_GPT4,Damerau_Levenshtein_Sim_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
%xlabel('Damerau-Levenshtein');
%ylim([0 1])
%grid on

% Overlap Similarity
subplot(2,4,3,'align');
% boxplot([Jaro_Winkler_Sim_LLAMA3,Jaro_Winkler_Sim_GPT35,Jaro_Winkler_Sim_GPT4,Jaro_Winkler_Sim_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [Overlap_LLAMA3,Overlap_GPT35,Overlap_GPT4,Overlap_GEMINI,Overlap_CLAUDE,Overlap_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('Overlap');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Jaro-Winkler Similarity
subplot(2,4,4,'align');
% boxplot([Jaro_Winkler_Sim_LLAMA3,Jaro_Winkler_Sim_GPT35,Jaro_Winkler_Sim_GPT4,Jaro_Winkler_Sim_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [Jaro_Winkler_Sim_LLAMA3,Jaro_Winkler_Sim_GPT35,Jaro_Winkler_Sim_GPT4,Jaro_Winkler_Sim_GEMINI,Jaro_Winkler_Sim_CLAUDE,Jaro_Winkler_Sim_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('Jaro-Winkler');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Jaccard Similarity
subplot(2,4,5,'align');
% boxplot([jaccard_4_LLAMA3,jaccard_4_GPT35,jaccard_4_GPT4,jaccard_4_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [jaccard_4_LLAMA3,jaccard_4_GPT35,jaccard_4_GPT4,jaccard_4_GEMINI,jaccard_4_CLAUDE,jaccard_4_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('Jaccard');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Sorensen-Dice Similarity
subplot(2,4,6,'align');
% boxplot([sorensen_dice_4_LLAMA3,sorensen_dice_4_GPT35,sorensen_dice_4_GPT4,sorensen_dice_4_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [sorensen_dice_4_LLAMA3,sorensen_dice_4_GPT35,sorensen_dice_4_GPT4,sorensen_dice_4_GEMINI,sorensen_dice_4_CLAUDE,sorensen_dice_4_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('Dice');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Q-Gram Similarity
subplot(2,4,7,'align');
% boxplot([qgram_4_LLAMA3,qgram_4_GPT35,qgram_4_GPT4,qgram_4_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [qgram_4_LLAMA3,qgram_4_GPT35,qgram_4_GPT4,qgram_4_GEMINI,qgram_4_CLAUDE,qgram_4_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('Q-Gram');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Cosine Similarity
subplot(2,4,8,'align');
% boxplot([cosine_4_LLAMA3,cosine_4_GPT35,cosine_4_GPT4,cosine_4_GEMINI],'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
MPG = [cosine_4_LLAMA3,cosine_4_GPT35,cosine_4_GPT4,cosine_4_GEMINI,cosine_4_CLAUDE,cosine_4_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'}
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontsize',12)
title('Cosine');
xtickangle(45)
xlim([0 7]);
ylim([0 1])
yticks([0 0.25 0.5 0.75 1])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

% Hallucination
% LLM_hall = [hall_4_LLAMA3; hall_4_GPT35; hall_4_GPT4; hall_4_GEMINI];
% g = [zeros(length(hall_4_LLAMA3), 1); ones(length(hall_4_GPT35), 1); 2*ones(length(hall_4_GPT4), 1); 3*ones(length(hall_4_GEMINI), 1)];
% subplot(2,4,8,'align');
% % boxplot(LLM_hall, g,'Labels',{'LLama3','GPT3.5','GPT4','GEMINI'},'Whisker',0.5)
% MPG = [hall_4_LLAMA3, hall_4_GPT35, hall_4_GPT4, hall_4_GEMINI];
% Origin = {'LLama3','GPT3.5','GPT4','GEMINI'};
% Origin = cellstr(Origin);
% vs = violinplot(MPG, Origin);
% set(gca,'fontsize',12)
% title('Hallucination');
% xtickangle(45)
% ylim([0 2])
% yticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
% set(findobj(gca,'type','line'),'linew',2);
% ax = gca;
% set(gca,'GridLineStyle','--');
% ax.LineWidth = 1.0;
% ax.GridAlpha = 0.5;
% grid on

toc

%{
figure
subplot(1,4,1,'align');
h = boxplot([cosine_1, cosine_2, cosine_3, cosine_4], 'Labels', {'1-Gram', '2-Gram', '3-Gram', '4-Gram'},'Whisker',1);
xlabel('Cosine');
ylim([0 1])
grid on

subplot(1,4,2);
h = boxplot([jaccard_1, jaccard_2, jaccard_3, jaccard_4], 'Labels', {'1-Gram', '2-Gram', '3-Gram', '4-Gram'},'Whisker',1);
xlabel('Jaccard');
ylim([0 1])
grid on

subplot(1,4,3,'align');
h = boxplot([sorensen_dice_1, sorensen_dice_2, sorensen_dice_3, sorensen_dice_4], 'Labels', {'1-Gram', '2-Gram', '3-Gram', '4-Gram'},'Whisker',1);
xlabel('Sorensen-Dice');
ylim([0 1])
grid on

subplot(1,4,4,'align');
h = boxplot([qgram_1, qgram_2, qgram_3, qgram_4], 'Labels', {'1-Gram', '2-Gram', '3-Gram', '4-Gram'},'Whisker',1);
xlabel('Q-Grams');
ylim([0 1])
grid on
%}
