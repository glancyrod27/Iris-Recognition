function [image image1 person1 index_sdi1 sdi1]=Output1(g); a=imread('C:\Iris Recognition\Project 2014\database\im1.jpg'); [v]=feature_vect(a);
v1=v;
a=imread('C:\Iris Recognition\Project 2014\database\im2.jpg');
[v]=feature_vect(a); v2=v;
a=imread('C:\Iris Recognition\Project 2014\database\im4.jpg'); [v]=feature_vect(a);
v3=v;
a=imread('C:\Iris Recognition\Project 2014\database\im5.jpg'); [v]=feature_vect(a);
v4=v;
a=imread('C:\Iris Recognition\Project 2014\database\im7.jpg'); [v]=feature_vect(a);
v5=v;
a=imread('C:\Iris Recognition\Project 2014\database\im8.jpg'); [v]=feature_vect(a);
v6=v;
a=imread('C:\Iris Recognition\Project 2014\database\im10.jpg'); [v]=feature_vect(a);
v7=v;
a=imread('C:\Iris Recognition\Project 2014\database\im11.jpg'); [v]=feature_vect(a);
v8=v;
a=imread('C:\Iris Recognition\Project 2014\database\im13.jpg'); [v]=feature_vect(a);
v9=v;
a=imread('C:\Iris Recognition\Project 2014\database\im14.jpg'); [v]=feature_vect(a);
v10=v;
a=imread('C:\Iris Recognition\Project 2014\database\im16.jpg'); [v]=feature_vect(a);
v11=v;
a=imread('C:\Iris Recognition\Project 2014\database\im17.jpg'); [v]=feature_vect(a);
v12=v;
a=imread('C:\Iris Recognition\Project 2014\database\im19.jpg'); [v]=feature_vect(a);
v13=v;
a=imread('C:\Iris Recognition\Project 2014\database\im20.jpg'); [v]=feature_vect(a);
v14=v;
a=imread('C:\Iris Recognition\Project 2014\database\im22.jpg'); [v]=feature_vect(a);
v15=v;
a=imread('C:\Iris Recognition\Project 2014\database\im23.jpg'); [v]=feature_vect(a);
v16=v;
a=imread('C:\Iris Recognition\Project 2014\database\im25.jpg'); [v]=feature_vect(a);
v17=v;
a=imread('C:\Iris Recognition\Project 2014\database\im26.jpg'); [v]=feature_vect(a);
v18=v;
a=imread('C:\Iris Recognition\Project 2014\database\im28.jpg'); [v]=feature_vect(a);
v19=v;
a=imread('C:\Iris Recognition\Project 2014\database\im29.jpg'); [v]=feature_vect(a);
v20=v;
[v]=feature_vect(g); v21=v;
y1=xlswrite('C:\Iris Recognition\Project 2014\process\irisxlsheet.xls',[v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21]);
z1=xlsread('C:\Iris Recognition\Project 2014\process\irisxlsheet.xls');
for j=1:20 for i=1:256
f = z1(i,j);
g1 = v21(i,1);
w1(i) = bitxor(f,g1); end
di1(j)=sum(w1)/256; end
[sdi1,index_sdi1]=sort(di1,'ascend');
%sorting of indexes as per hamming
if (index_sdi1(1)==1 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im1.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\glancy.jpg');
elseif (index_sdi1(1)==2 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im2.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\glancy.jpg');
elseif (index_sdi1(1)==3 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im4.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\flevia.jpg');
elseif (index_sdi1(1)==4 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im5.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\flevia.jpg');
elseif (index_sdi1(1)==5 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im7.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\olivia.jpg');
elseif (index_sdi1(1)==6 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im8.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\olivia.jpg');
elseif (index_sdi1(1)==7 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg') ; image1=imread('C:\Iris Recognition\Project 2014\database\im10.jpg'); person1=imread('C:\Iris Recognition\Project2014\person\flavian.jpg');
elseif (index_sdi1(1)==8 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im11.jpg'); person1=imread('C:\Iris Recognition\Project2014\person\flavian.jpg');
elseif (index_sdi1(1)==9 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im13.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\stalen.jpg');
elseif (index_sdi1(1)==10 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im14.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\stalen.jpg');
elseif (index_sdi1(1)==11 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im16.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\ruchita.jpg');
elseif (index_sdi1(1)==12 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im17.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\ruchita.jpg');
elseif (index_sdi1(1)==13 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im19.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\sarah.jpg');
elseif (index_sdi1(1)==14 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg') ; image1=imread('C:\Iris Recognition\Project 2014\database\im20.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\sarah.jpg');
elseif (index_sdi1(1)==15 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im22.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\gladwin.jpg');
elseif (index_sdi1(1)==16 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg');
image1=imread('C:\Iris Recognition\Project 2014\database\im23.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\gladwin.jpg');
elseif (index_sdi1(1)==17 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im25.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\viviana.jpg');
elseif (index_sdi1(1)==18 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im26.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\viviana.jpg');
elseif (index_sdi1(1)==19 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im28.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\ansley.jpg');
elseif (index_sdi1(1)==20 && sdi1(1)<= 0.09)
image=imread('C:\Iris Recognition\Project 2014\process\Match.jpg'); image1=imread('C:\Iris Recognition\Project 2014\database\im29.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\ansley.jpg');
else
image=imread('C:\Iris Recognition\Project 2014\process\Nomatch.jpg'); image1=imread('C:\Iris Recognition\Project 2014\process\Error.jpg'); person1=imread('C:\Iris Recognition\Project 2014\person\unknown.jpg');
end end