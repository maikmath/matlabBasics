% PLOTTING IN MATLAB - 2 
% 
% PREREQUISITE - LECTURE ON VECTORS & PLOTTING-1 
% 
% MATLAB Functions that will be discussed 
% yyaxis -  Creates a chart with two y-axes 
% text -  Add text description to data points 
% bar-  Plot bar graph 
% pie -  Plot pie chart 

% yyaxis function 
% Example - Plot sine wave and logarithmic wave for the same x-data

% Generate 100 linear spaced points between values 0 to 20. 

xData = linspace(0,20,100); 

% First y data which is sine

yData1 = sin(xData); 

% Second y data which is logarithmic 

yData2 = log(xData); 

% Plotting yData1 and yData2 on single graph for same xData 

% Left y axis plot 

yyaxis left

plot(xData,yData1,'b-*')

ylabel('SINE DATA')

yyaxis right

plot(xData,yData2,'r-o')

ylabel('LOG DATA')

% Adding text to plot 
% Generate 100 linear spaced points between values 0 to 20. 

xData = linspace(0,20,100); 

% Generate yData 

yData = sin(xData); 

plot(xData,yData,'b-*');

% (3,0) represent the xPos and yPos for plotting values 

xPos = 3; 

yPos = 0; 

text(xPos,yPos,'\leftarrow Sine Wave')

text(9,0.5,'\rightarrow Sine(\theta)')

% List of available matlab text commands with latex interpreter
% shared in the git.
% Plot Bar Graph and Pie Chart 
% Generate 10 linear spaced points between values 0 to 20. 

xData = linspace(0,20,10);

% Perform element wise power (.^) to 2 operation to generate yData

% xData^2 - xData*xData (matrix multiplication) 

% xData.^2 = element wise power (each value inside xData is squared)

yData = xData.^2; 

% Plot bar graph in new figure; 

figure;

bar(xData,yData);

text(10,350,'\rightarrow y = x^2')

barWidth = 0.5; 

bar(xData,yData, barWidth);

% Plot two yData in bar graphs

% y = x^2 
yData1 = xData*2; 

% y = x^3 
yData2 = xData*3; 

% y = x/2 
yData3 = xData/2; 

% Vertical concatenation (ref lecture on Vectors) 

yData = [yData1;yData2;yData3];

bar(xData,yData, barWidth);

bar(xData,yData, barWidth, 'stacked');

xPos = 5; 

yPos = 100; 

text(xPos,yPos,'\bf Stacked Display')

xlabel('xData'); 

ylabel('yData'); 

title('Bar Graph')

% Pie Chart 
% Generate 3 linear spaced points between values 0 to 20. 

xData = linspace(0,20,3);

pie(xData);

% With floating values (2 decimal places) 

pie(xData,'%.2f')

% With floating values and percentage 

pie(xData,'%.2f%%')
% Plotting graph side by side 
% We can use subplot or tiledlayout

xData = linspace(0,20,3);

yData = xData.^2; 

% Subplot can be used in this case (also discussed previously in
% plotting -1 lecture 

% Syntax (2,2,1) represent plot array of 2x2 (2 rows, 2 cols)
% and position - 1. 

% position - 4 
subplot(2,2,4); 

bar(xData,yData);

% position - 2 
subplot(2,2,2); 

pie(xData);

% position - 3 
subplot(2,2,3); 

plot(xData,yData);

% position - 1 
subplot(2,2,1); 

plot(xData,yData, 'r-o');


% Another option for same would be 'tiledlayout'

% Display in a new figure 

figure; 

%(2,2) creata tiled display of size 2X2 (row column)

tiledlayout(2,3)

nexttile; 

pie(xData);

nexttile; 

bar(xData,yData);

nexttile; 

plot(xData,yData);

nexttile; 

plot(xData,yData, 'r-o');





































































































