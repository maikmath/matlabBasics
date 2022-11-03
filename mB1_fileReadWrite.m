clear all; close all; clc;

range = [1 5];

Row = 5;

Col = 1; 

numVector = randi(range,Row,Col);

disp(numVector);

txtFileCreate = fopen('storenumVector.txt','wt');

fprintf(txtFileCreate,'%d\n',numVector);

fclose(txtFileCreate);

type storenumVector.txt

writematrix(numVector,'storenumVector1.txt')

type storenumVector1.txt

range = [1 5];

Row = 5;

Col = 5;

numArray = randi(range,Row,Col)*randn(1);

disp(numArray);

txtFileCreate = fopen('storenumArray.txt','wt');


fprintf(txtFileCreate,'%f %f %f %f %f \n',numArray);

fprintf(txtFileCreate,'%0.2f %0.2f %0.2f %0.2f %0.2f \n',numArray);


fprintf(txtFileCreate,'%f\n',numArray);

fclose(txtFileCreate);

type storenumArray.txt;

writematrix(numArray,'storenumArray1.txt','Delimiter','tab')    

writematrix(numArray,'storenumArray1.txt','Delimiter',';')  

type storenumArray1.txt;

txtFileRead = fopen('storenumArray.txt','r');

readDataType = '%f %f %f';


sizeReadData = [3 Inf];

readData = fscanf(txtFileRead,readDataType,sizeReadData)

disp(size(readData));