% PLOTTING DATA USING MATLAB 
% 
% MATLAB Functions that can be used
% 
% plot - Plotting graphs 
% xlabel, ylabel - Labeling graphs 
% xlim, ylim - Closing the text file 
% title, legend - Reading from text file
% hold - Writing to text file 
% gca , grid - Get current axes and displaying grids 

% Generate data for plotting
% lin space will generate 100 linearly spaced points for plotting

% graphData = 0:1:10

graphData = linspace(0,10,100)

p1 = sin(graphData);

p2 = cos(graphData);



% Plot the datas 

% X-Axis - graphData  Y-Axis - p1 , p2 

% Intialize new figure 

figure; 

plot(graphData,p1);

figure;

plot(graphData,p2);



% Labeling the graph
figure; 

plot(graphData,p1);

title('TRIGNOMETRIC PLOT'); xlabel('TIME'); ylabel('SINE')


% Changing the Axis Limit 

figure; 

plot(graphData,p1);

title('TRIGNOMETRIC PLOT'); xlabel('TIME'); ylabel('SINE')

% Change the range of my x-axis and y-axis 

xlim([0 5]); ylim([0 1])

legend('Plot 1 (p1)')

% Plotting multiple graphs in the same figure 
figure; 

plot(graphData,p1);

hold on; 

plot(graphData, p2);

hold off; 

title('TRIGNOMETRIC PLOT'); xlabel('TIME'); ylabel('SINE')

% xlim([0 5]); ylim([0 1]);


% Changing the graph appearence 
figure; 

% Linespec can be used = line type, color, marker shape

% '-b.' use line with blue color and dot marker 

% Refer Matlab help for marker shapes

plot(graphData,p1,'--b.');

hold on;

plot(graphData,p2,'--rs');

hold off; 



% Line width and marker size 

figure;

plot(graphData,p1,'--b*', 'LineWidth',2, 'MarkerSize',2);

hold on;

plot(graphData,p2,'--r*', 'LineWidth',2, 'MarkerSize',2);

hold off; 

title('TRIGNOMETRIC PLOT'); xlabel('TIME'); ylabel('SINE')

xlim([0 5]); ylim([0 1]);

legend('sine','cos')


% Placing the graphs side by side 
% Using subplot instead of plot 

% Syntax = subplot(rowSize,colSize,plotIdx)

figure; 

rowSize = 2;
colSize = 2; 

plotIdx = 2;

subplot(rowSize,colSize,plotIdx)
plot(graphData,p1,'--b*', 'LineWidth',2, 'MarkerSize',2);

plotIdx = 1; 

subplot(rowSize,colSize,plotIdx)
plot(graphData,p2,'--r*', 'LineWidth',2, 'MarkerSize',2);


plotIdx = 3; 

subplot(rowSize,colSize,plotIdx)
plot(graphData,p2,'--r*', 'LineWidth',2, 'MarkerSize',2);


plotIdx = 4; 

subplot(rowSize,colSize,plotIdx)
plot(graphData,p2,'--r*', 'LineWidth',2, 'MarkerSize',2);



% Using get current axes (gca) and grid 

figure; 

% without gca modifications 

plot(graphData,p2,'--r*', 'LineWidth',2, 'MarkerSize',2);

title('TRIGNOMETRIC PLOT'); xlabel('TIME'); ylabel('SINE')


% with gca modifications

plot(graphData,p2,'--r*', 'LineWidth',2, 'MarkerSize',2);

title('TRIGNOMETRIC PLOT'); xlabel('TIME'); ylabel('SINE')

plotGraph1 = gca; 

plotGraph1.FontSize = 16;

plotGraph1.XLim = [0 5];

plotGraph1.YLim = [0 1];

grid on; 



