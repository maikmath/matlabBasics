% PLOTTING IN MATLAB - PART 3 
% 
% PREREQUISITE - PLOTTING 1 & 2 LECTURES 
% MATLAB Functions that will be discussed 
% stem - plotting discrete time sequences 
% fplot - function plot command 
% 3D PLOTTING BASICS 
% plot3 - 3D plotting 
% stem3 - 3D discrete plot 

% Using Stem to make discrete time plots 
% Input data 

% discrete signal is a signal with few points / samples 

% Increasing the number of samples moves discrete signal to
% continous domain 

inpData = linspace(-10, 10, 25)

inpData = sin(inpData);

numSamples = length(inpData);

xData = [-5:numSamples-6];

% Plotting discrete time data using Stem 

figure; stem(xData,inpData)

xlabel('Samples'); ylabel('Sine Input Data')

% If the xData matches the default settings
% (0 ,1 ,2 ,3 ...)

% use filled keyword to fill the marker of stem 

figure; stem(inpData,'filled')

xlabel('Samples'); ylabel('Sine Input Data')

% Specifiying Stem Display and Marker Options
% We can modify the stem display options using stem handle

figure; 

% Obtain the stem properties settings 

hData = stem(inpData,'filled');


xlabel('Samples'); ylabel('Sine Input Data')

% hData. property name

hData.Color = 'g'
hData.LineStyle = '-.';
hData.MarkerSize = 10;
hData.Marker = 'o';
hData.MarkerFaceColor = 'r';

% Another method would be to directly give it in as argument
% to stem function 

figure; stem(inpData, 'Color', 'r', 'LineStyle','-.',...
     'MarkerFaceColor','green',...
     'MarkerSize',10)

% Plotting multiple stem graphs on same figure window 
inpData = linspace(-10, 10, 100);

inpData1 = sin(inpData);

inpData2 = cos(inpData);

figure;

% Using hold on command 

stem(inpData1, 'filled')

hold on

stem(inpData2, 'filled')

hold off 

% To give some margins at top and bottom , left and right 

axis padded

legend('inpData1' ,'inpData2')


% Function Plot 
% We can use function plot to plot y = f(x) rather than y vs x 

% define function 

xData = linspace(-10,10,50);


% function 

fx = @(xData)sin(xData)

% plot f(x)  

fplot(fx, 'r-*')

grid on


% get plot handle for modifiying display properties 

hData = fplot(fx, 'r-*')

hData.Color = 'g'
hData.LineStyle = '-.';
hData.MarkerSize = 10;
hData.Marker = 'o';
hData.MarkerFaceColor = 'r';

grid on; 

% Plot 3 and stem 3 graphs 
% 3D data plots 

xData = linspace(-10,10,50);

yData = sin(xData);

zData = cos(xData); 

plot3(xData,yData,zData);

hData = plot3(xData,yData,zData);

hData.Color = 'g'
hData.LineStyle = '-.';
hData.MarkerSize = 10;
hData.Marker = 'o';
hData.MarkerFaceColor = 'r';

% 3D stem plots 

figure;

hData = stem3(xData,yData,zData);

hData.Color = 'b'
hData.LineStyle = '-.';
hData.MarkerSize = 10;
hData.Marker = 'o';
hData.MarkerFaceColor = 'g';














