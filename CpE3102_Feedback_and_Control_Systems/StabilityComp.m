%Note: matXY, wherein X is the row number and Y is the column number

syms e

mat11 = 1;  mat12 = -1; 
mat21 = 1;  mat22 = -1;

%This is where we're gunna get the values
mat = [mat11, mat12 ; mat21, mat22]

output = -(det(mat))/mat21