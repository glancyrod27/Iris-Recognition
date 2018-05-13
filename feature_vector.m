function [v]=feature_vect(a) b1=rgb2gray(a);
c1=uint8(b1);
h1=histeq(c1); % For Histogram equ
[row col]=size(b1); C=row*col;
for i=1:1:row % for clipping for j=1:1:col
if h1(i,j)>=0 && h1(i,j)<28 h1(i,j)=0;
end end
end
for i=1:1:row for j=1:1:col
if h1(i,j)>=200 && h1(i,j)<256 h1(i,j)=0;
end end
end
M=imread('C:\Iris Recognition\Project 2014\process\Mask2.bmp'); M=uint8(M);
inw=h1.*M;
%figure,imshow(inw),title('output after masking')
[E F G H]=dwt2(inw,'db1');%1st level decomposition first=[E F;G H];
final1=[E F;G H];
[I J K L]=dwt2(E,'db1');%2nd level decomposition second=[I J;K L];
final2=[second F;G H];
[M N O P]=dwt2(I,'db1');%3RD level decomposition third=[M N;O P];
mid=[third J;K L];
final3=[mid F;G H];
[Q R S T]=dwt2(M,'db1');%4th level decomposition fourth=[Q R;S T];
mid41=[fourth N;O P];
mid42=[mid41 J;K L];
final4=[mid42 F;G H];
U=round(Q);
%figure,imshow(uint8(final1)) %figure,imshow(uint8(final2)) %figure,imshow(uint8(final3)) %figure,imshow(uint8(final4))
gb1=edge(Q,'canny'); %figure,imshow(gb1),title('canny')
v=gb1(:); end