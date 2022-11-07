% VECTORS & MATRICES USING MATLAB 
% 
% MATLAB Functions that can be used
% 
% colon operator - for creating and indexing elements
% linspace - create linearly spaced vector 
% cat - concatenation of vector 
% rand, randi, zeros, ones, null, identity -  matrix creation 
% reshape -  changing size of vectors and matrices 
% sum, diff, min, max -  vector & matrix computations 
% element wise operations

% Vectors in MATLAB 
% values separted with space (column horizontal vector)

colVec = [1 2 3 4 5];

disp('Col Vector is  '); 

disp(colVec);

% values separted with columns (row - vertical vector) 

rowVec = [1; 2; 3; 4 ;5];

disp('Row Vector is  '); 

disp(rowVec);

% Transpose of vector will give the opposite type 

rowVecFromTrans = transpose(colVec);

disp('Row Vector from Transpose is  '); 

disp(rowVecFromTrans);


colVecFromTrans = transpose(rowVec);

disp('Col Vector from Transpose is  '); 

disp(colVecFromTrans);


% Creating vectors using linspace 

rowLinspace = linspace(1,5,5);

disp('Row Vector using Linspace is  '); 

disp(rowLinspace);


% Vector Concatenation 

% Vectors can be joined together in rowwise or columnwise manner

firstHalfVec = [1 2 3];

secondHalfVec = [4 5 6]; 

dimJoin = 2; 

% dimJoin represents the dimension of concatenation 

% dimJoin = 1 represents row concatenation (vertically join)

% dimjoin = 2 represents column concatenation (horizontally join) 

% Concatenate horizontally with dimJoin = 2

fullVec = cat(dimJoin, firstHalfVec, secondHalfVec);

disp('Full vector after horizontal concatenation is  '); 

disp(fullVec);


% Concatenate vertically with dimJoin = 1
dimJoin = 1; 

fullVec = cat(dimJoin, firstHalfVec, secondHalfVec);

disp('Full vector after vertical concatenation is  '); 

disp(fullVec);


% Concatenation using just brackets [ ] 


firstHalfVec = [1 2 3];

secondHalfVec = [4 5 6]; 

% Concatenate horizontally 

fullVec = [firstHalfVec, secondHalfVec];

disp('Full vector after bracket horizontal concatenation [ ,] is  '); 

disp(fullVec);


% Concatenate vertically 

fullVec = [firstHalfVec ; secondHalfVec];

disp('Full vector after bracket vertical concatenation [;] is  '); 

disp(fullVec);

% To Note: For vectors concatenation the dimension should match
% just like in matrix 

% Dimension not matching vectors will throw error. 

% For vectors the length of both vectors should be same for

% concatenation. 

firstHalfVec = [1 2];

len1stHalfVec = length(firstHalfVec);

secondHalfVec = [4 5 6]; 

len2ndHalfVec = length(secondHalfVec);

disp('Length of the first half vector is   '); 

disp(len1stHalfVec);

disp('Length of the second half vector is   '); 

disp(len2ndHalfVec);

% fullVec = [firstHalfVec ; secondHalfVec];

% Computation with Vectors 
vec1 = [1 2 3];

vec2 = [4 5 6]; 

% sum of Vectors 

sumVec = sum(vec1); 

% Difference of vectors 

diffVec = diff(vec2); 

disp('Sum of all elements in vector1 is   '); 

% 1+2+3 

disp(sumVec);

disp('Difference between elements in vector2 is   '); 

% 5-4, 6-5 

disp(diffVec);

% Mean, Median, Cumsum on vectors in similar manner. 
% mean(vec2), median(vec2), cumsum(vec2) 

% Dot & Cross Products with Vectors 

vec1 = [1 2 3];

vec2 = [4 5 6]; 

% dot product 

dotVec = dot(vec1,vec2); 

% cross product 

crossVec = cross(vec1, vec2);

disp('Dot product of two vector is  '); 

disp(dotVec);

disp('Cross product of two vector is  '); 

disp(crossVec);


% Element wise operation in Vectors

vec1 = [1 2 3];

vec2 = [4 5 6];

% Element wise multiplication, division and power

% Take each element in the vector and do operation with same
% element in the vector.

eleMulVec = vec1 .* vec2; 

eleDivVec = vec2 ./ vec1; 

elepowVec = vec1 .^ vec2; 


disp('Element wise product of two vector is  '); 

disp(eleMulVec);

disp('Element wise division of two vector is  '); 

disp(eleDivVec);

disp('Element wise power of two vector is  '); 

disp(elepowVec);

% For addition and subtraction just normal + and - would work. 

eleAddVec = vec1 + vec2; 

eleSubVec = vec1 - vec2; 


disp('Element wise sum of two vector is  '); 

disp(eleAddVec);

disp('Element wise difference of two vector is  '); 

disp(eleSubVec);



% Vector Indexing in Matlab 
% Will not use Disp here on wards instead will skip semi colon
% at the end of the line to display the output. 

vec1 = [1:5];

vec2 = transpose(vec1);

disp(vec1);

disp(vec2); 

% Choose third elements element from the Vectors 

vec1Ele = vec1(3)

vec2Ele = vec2(3)


% Choose a group of elements from vector 

vec1Ele = vec1(1:3)


vec2Ele = vec2(2:end)


% Vector creation in Matlab 
% Creating vectors with maltab functions 


vec1 = ones(1,5)

vec1 = randn(1,5)

vec1 = zeros(1,5) 

vec1 = randi([1 5], 1,5)



% Changing the size of the vectors 

vec1 = [1 2 3 4 5 6 7 8 9]

vec1Len = length(vec1)

% Reshape the vector to have 9 elements. 

% [3 x 3]

vecReshape = reshape(vec1, [3 3])
























































































































































































































