% Sorting Vectors and Arrays in MATLAB
% 
% MATLAB Functions that can be used
% 
% sort - Create or open a text file 
% sortrows - Writing to a text file 
% issorted - Closing the text file 
% 
% 
% Sorting Numeric Vectors with SORT

%% Creating a Random Numeric Vector 

range = [1 10];

row = 1; col = 5;

inpVec = randi(range,[row col]);

disp(inpVec);

% Sort in Ascending Order 
sortAscVec = sort(inpVec, 'ascend');

disp(sortAscVec);

% Sort in Descending Order 
sortDesVec = sort(inpVec,'descend');

disp(sortDesVec);

% Sorting Numeric Arrays with SORT
%% Creating a Random Numeric Array 

range = [1 10];

row = 5; col = 5;

inpArr = randi(range,[row col]);

% Sorting Arrays in Ascending & Descending Order 

% disp(inpArr);

sortAscArr = sort(inpArr,'ascend');

% disp(sortAscArr);

sortDesArr = sort(inpArr,'descend');

% disp(sortDesArr);

% Find the index of these sorted arrays 

[sortAscArr, sortAscIdx] = sort(inpArr,'ascend');

% sortAscIdx = At what position my value was "before sorting" in the Array or
% Vector 

% sort arranges each "column" in the ascending or descending order.

% disp(inpArr);
% 
% disp(sortAscArr);
% 
% disp(sortAscIdx);



% Sort along the rows 

sortDirection = 1; % 1 or 2 (1 - column sort and 2 - row sort )

% If sortDirection not given matlab assumes it to be 1 or column sort 

[sortAscArr, sortAscIdx] = sort(inpArr, sortDirection,'ascend');

% disp(inpArr);
% 
% disp(sortAscArr);

% Sorting Numeric Arrays with SORTROWS
sortDir = 3;

sortRowAscArr = sortrows(inpArr, sortDir, 'ascend');

% sort row will sort only along that particular column 

% disp(inpArr);
% 
% disp(sortRowAscArr);

sortRowDesArr = sortrows(inpArr, sortDir, 'descend');

% disp(inpArr);
% 
% disp(sortRowDesArr);


[sortRowDesArr ,sortRowDesIdx] = sortrows(inpArr, sortDir,'descend');

% disp(inpArr);
% 
% disp(sortRowDesArr);
% 
% disp(sortRowDesIdx);


[sortRowDesArr ,sortRowDesIdx] = sortrows(inpArr, sortDir,'descend');

% disp(inpArr);
% 
% disp(sortRowDesArr);
% 
% disp(sortRowDesIdx);

% Check if the Array Sorted in Ascending Order Using ISSORTED, ISSORTED ROWS

isSortArr = issorted(sortAscArr);

disp(isSortArr);

isSortRowArr = issorted(sortRowAscArr,sortDir);

disp(isSortRowArr);


% One case example to sort a matrix in to ascending order

% Given A = [5 4 8; 3 9 6; 1 7 2], the output should be [1 2 3; 4 5 6; 7 8 9]

inpArr = [5 4 8; 3 9 6; 1 7 2]

row = size(inpArr,1)

col = size(inpArr,2)

inpVec = reshape(inpArr,[1 size(inpArr,1)*size(inpArr,2)])

outVec = sort(inpVec,'ascend')

outArr = reshape(outArr,[row col])

% Transpose of the output array 

outArr = outArr'

% Simple Transpose of a matrix will change the sort from column dimension
% to row dimension and vice versa 



































