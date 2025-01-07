tic

T_GEMINI_Hall_Sec_TF = readtable('Hallucination-GEMINI_second,_third_&_fourth_words.csv')
T_GPT35_Hall_Sec_TF = readtable('Hallucination-GPT35_second,_third_&_fourth_words.csv')
T_GPT4_Hall_Sec_TF = readtable('Hallucination-GPT4_second,_third_&_fourth_words.csv')
T_LLAMA3_Hall_Sec_TF = readtable('Hallucination-LLAMA3_second,_third_&_fourth_words.csv')
T_CLAUDE_Hall_Sec_TF = readtable('Hallucination-CLAUDE_second,_third_&_fourth_words.csv')
T_MISTRAL_Hall_Sec_TF = readtable('Hallucination-MISTRAL_second,_third_&_fourth_words.csv')

% Hallucination
hall_4_LLAMA3_Sec_TF = table2array(T_LLAMA3_Hall_Sec_TF(:,4:4))
hall_4_GPT35_Sec_TF = table2array(T_GPT35_Hall_Sec_TF(:,4:4))
hall_4_GPT4_Sec_TF = table2array(T_GPT4_Hall_Sec_TF(:,4:4))
hall_4_GEMINI_Sec_TF = table2array(T_GEMINI_Hall_Sec_TF(:,4:4))
hall_4_CLAUDE_Sec_TF = table2array(T_CLAUDE_Hall_Sec_TF(:,4:4))
hall_4_MISTRAL_Sec_TF = table2array(T_MISTRAL_Hall_Sec_TF(:,4:4))

%figure
%set(gca,'xaxisLocation','top')

figure
set(gcf, 'Position',  [0, 0, 700, 550])

% Hallucination
%subplot(1,4,1,'align');
% LLM_hall = [hall_4_LLAMA3_Sec; hall_4_GPT35_Sec; hall_4_GPT4_Sec; hall_4_GEMINI_Sec; hall_4_CLAUDE_Sec; hall_4_MISTRAL_Sec];
% g = [zeros(length(hall_4_LLAMA3_Sec), 1); ones(length(hall_4_GPT35_Sec), 1); 2*ones(length(hall_4_GPT4_Sec), 1); 3*ones(length(hall_4_GEMINI_Sec), 1); 4*ones(length(hall_4_CLAUDE_Sec), 1); 3*ones(length(hall_4_MISTRAL_Sec), 1)];
% boxplot(LLM_hall, g,'Labels',{'LLama3','GPT-3.5','GPT-4','GEMINI'},'Whisker',0.5)
MPG = [hall_4_LLAMA3_Sec_TF, hall_4_GPT35_Sec_TF, hall_4_GPT4_Sec_TF, hall_4_GEMINI_Sec_TF, hall_4_CLAUDE_Sec_TF, hall_4_MISTRAL_Sec_TF];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'};
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontweight','bold','fontsize',14)
% title('Single Event','fontsize',12);
xlim([0 7]);
xtickangle(45)
ylim([0 4])
% yticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
T_GEMINI_Hall = readtable('Hallucination-GEMINI_first_word.csv')
T_GPT35_Hall = readtable('Hallucination-GPT35_first_word.csv')
T_GPT4_Hall = readtable('Hallucination-GPT4_first_word.csv')
T_LLAMA3_Hall = readtable('Hallucination-LLAMA3_first_word.csv')
T_CLAUDE_Hall = readtable('Hallucination-CLAUDE_first_word.csv')
T_MISTRAL_Hall = readtable('Hallucination-MISTRAL_first_word.csv')

% Hallucination
hall_4_LLAMA3 = table2array(T_LLAMA3_Hall(:,5:5))
hall_4_GPT35 = table2array(T_GPT35_Hall(:,5:5))
hall_4_GPT4 = table2array(T_GPT4_Hall(:,5:5))
hall_4_GEMINI = table2array(T_GEMINI_Hall(:,5:5))
hall_4_CLAUDE = table2array(T_CLAUDE_Hall(:,5:5))
hall_4_MISTRAL = table2array(T_MISTRAL_Hall(:,5:5))

% Hallucination
subplot(1,5,2,'align');
% LLM_hall = [hall_4_LLAMA3; hall_4_GPT35; hall_4_GPT4; hall_4_GEMINI];
% g = [zeros(length(hall_4_LLAMA3), 1); ones(length(hall_4_GPT35), 1); 2*ones(length(hall_4_GPT4), 1); 3*ones(length(hall_4_GEMINI), 1); 4*ones(length(hall_4_CLAUDE), 1); 5*ones(length(hall_4_MISTRAL), 1)];
% boxplot(LLM_hall, g,'Labels',{'LLama3','GPT-3.5','GPT-4','GEMINI'},'Whisker',0.5)
MPG = [hall_4_LLAMA3, hall_4_GPT35, hall_4_GPT4, hall_4_GEMINI, hall_4_CLAUDE, hall_4_MISTRAL];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'};
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontweight','bold','fontsize',14)
% title('Number of Events','fontsize',12);
xlim([0 7]);
xtickangle(45)
ylim([0 4])
% yticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on
%}

T_GEMINI_Hall_Sec = readtable('Hallucination-GEMINI_second_word.csv')
T_GPT35_Hall_Sec = readtable('Hallucination-GPT35_second_word.csv')
T_GPT4_Hall_Sec = readtable('Hallucination-GPT4_second_word.csv')
T_LLAMA3_Hall_Sec = readtable('Hallucination-LLAMA3_second_word.csv')
T_CLAUDE_Hall_Sec = readtable('Hallucination-CLAUDE_second_word.csv')
T_MISTRAL_Hall_Sec = readtable('Hallucination-MISTRAL_second_word.csv')

% Hallucination
hall_4_LLAMA3_Sec = table2array(T_LLAMA3_Hall_Sec(:,4:4))
hall_4_GPT35_Sec = table2array(T_GPT35_Hall_Sec(:,4:4))
hall_4_GPT4_Sec = table2array(T_GPT4_Hall_Sec(:,4:4))
hall_4_GEMINI_Sec = table2array(T_GEMINI_Hall_Sec(:,4:4))
hall_4_CLAUDE_Sec = table2array(T_CLAUDE_Hall_Sec(:,4:4))
hall_4_MISTRAL_Sec = table2array(T_MISTRAL_Hall_Sec(:,4:4))

% Hallucination
figure
set(gcf, 'Position',  [0, 0, 700, 550])
%subplot(1,4,2,'align');
% LLM_hall = [hall_4_LLAMA3_Sec; hall_4_GPT35_Sec; hall_4_GPT4_Sec; hall_4_GEMINI_Sec; hall_4_CLAUDE_Sec; hall_4_MISTRAL_Sec];
% g = [zeros(length(hall_4_LLAMA3_Sec), 1); ones(length(hall_4_GPT35_Sec), 1); 2*ones(length(hall_4_GPT4_Sec), 1); 3*ones(length(hall_4_GEMINI_Sec), 1); 4*ones(length(hall_4_CLAUDE_Sec), 1); 3*ones(length(hall_4_MISTRAL_Sec), 1)];
% boxplot(LLM_hall, g,'Labels',{'LLama3','GPT-3.5','GPT-4','GEMINI'},'Whisker',0.5)
MPG = [hall_4_LLAMA3_Sec, hall_4_GPT35_Sec, hall_4_GPT4_Sec, hall_4_GEMINI_Sec, hall_4_CLAUDE_Sec, hall_4_MISTRAL_Sec];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'};
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontweight','bold','fontsize',14)
% title('Classes','fontsize',12);
xlim([0 7]);
xtickangle(45)
ylim([0 4])
% yticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

T_GEMINI_Hall_Class = readtable('Hallucination-GEMINI_third_word.csv')
T_GPT35_Hall_Class = readtable('Hallucination-GPT35_third_word.csv')
T_GPT4_Hall_Class = readtable('Hallucination-GPT4_third_word.csv')
T_LLAMA3_Hall_Class = readtable('Hallucination-LLAMA3_third_word.csv')
T_CLAUDE_Hall_Class = readtable('Hallucination-CLAUDE_third_word.csv')
T_MISTRAL_Hall_Class = readtable('Hallucination-MISTRAL_third_word.csv')

% Hallucination
hall_4_LLAMA3_Class = table2array(T_LLAMA3_Hall_Class(:,4:4))
hall_4_GPT35_Class = table2array(T_GPT35_Hall_Class(:,4:4))
hall_4_GPT4_Class = table2array(T_GPT4_Hall_Class(:,4:4))
hall_4_GEMINI_Class = table2array(T_GEMINI_Hall_Class(:,4:4))
hall_4_CLAUDE_Class = table2array(T_CLAUDE_Hall_Class(:,4:4))
hall_4_MISTRAL_Class = table2array(T_MISTRAL_Hall_Class(:,4:4))

% Hallucination
figure
set(gcf, 'Position',  [0, 0, 700, 550])
%subplot(1,4,3,'align');
% LLM_hall = [hall_4_LLAMA3_Class; hall_4_GPT35_Class; hall_4_GPT4_Class; hall_4_GEMINI_Class];
% g = [zeros(length(hall_4_LLAMA3_Class), 1); ones(length(hall_4_GPT35_Class), 1); 2*ones(length(hall_4_GPT4_Class), 1); 3*ones(length(hall_4_GEMINI_Class), 1)];
% boxplot(LLM_hall, g,'Labels',{'LLama3','GPT-3.5','GPT-4','GEMINI'},'Whisker',0.5)
MPG = [hall_4_LLAMA3_Class, hall_4_GPT35_Class, hall_4_GPT4_Class, hall_4_GEMINI_Class, hall_4_CLAUDE_Class, hall_4_MISTRAL_Class];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'};
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontweight','bold','fontsize',14);
% title('Attributes','fontsize',12);
xlim([0 7]);
xtickangle(45)
ylim([0 4])
% yticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

T_GEMINI_Hall_Attrs = readtable('Hallucination-GEMINI_fourth_word.csv')
T_GPT35_Hall_Attrs = readtable('Hallucination-GPT35_fourth_word.csv')
T_GPT4_Hall_Attrs = readtable('Hallucination-GPT4_fourth_word.csv')
T_LLAMA3_Hall_Attrs = readtable('Hallucination-LLAMA3_fourth_word.csv')
T_CLAUDE_Hall_Attrs = readtable('Hallucination-CLAUDE_fourth_word.csv')
T_MISTRAL_Hall_Attrs = readtable('Hallucination-MISTRAL_fourth_word.csv')

% Hallucination
hall_4_LLAMA3_Attrs = table2array(T_LLAMA3_Hall_Attrs(:,4:4))
hall_4_GPT35_Attrs = table2array(T_GPT35_Hall_Attrs(:,4:4))
hall_4_GPT4_Attrs = table2array(T_GPT4_Hall_Attrs(:,4:4))
hall_4_GEMINI_Attrs = table2array(T_GEMINI_Hall_Attrs(:,4:4))
hall_4_CLAUDE_Attrs = table2array(T_CLAUDE_Hall_Attrs(:,4:4))
hall_4_MISTRAL_Attrs = table2array(T_MISTRAL_Hall_Attrs(:,4:4))

% Hallucination
figure
set(gcf, 'Position',  [0, 0, 700, 550])
%subplot(1,4,4,'align');
%LLM_hall = [hall_4_LLAMA3_Attrs; hall_4_GPT35_Attrs; hall_4_GPT4_Attrs; hall_4_GEMINI_Attrs];
%g = [zeros(length(hall_4_LLAMA3_Attrs), 1); ones(length(hall_4_GPT35_Attrs), 1); 2*ones(length(hall_4_GPT4_Attrs), 1); 3*ones(length(hall_4_GEMINI_Attrs), 1)];
% boxplot(LLM_hall, g,'Labels',{'LLama3','GPT-3.5','GPT-4','GEMINI'},'Whisker',0.5)
MPG = [hall_4_LLAMA3_Attrs, hall_4_GPT35_Attrs, hall_4_GPT4_Attrs, hall_4_GEMINI_Attrs, hall_4_CLAUDE_Attrs, hall_4_MISTRAL_Attrs];
Origin = {'LLama3','GPT-3.5','GPT-4','GEMINI','CLAUDE','MISTRAL'};
Origin = cellstr(Origin);
vs = violinplot(MPG, Origin);
set(gca,'fontweight','bold','fontsize',14)
% title('ADD/SET','fontsize',12);
xlim([0 7]);
xtickangle(45)
ylim([0 4])
% yticks([0 0.5 1 1.5 2 2.5 3 3.5 4])
set(findobj(gca,'type','line'),'linew',2);
ax = gca;
ax.PositionConstraint = "innerposition";
set(gca,'GridLineStyle','--');
ax.LineWidth = 1.0;
ax.GridAlpha = 0.5;
grid on

toc