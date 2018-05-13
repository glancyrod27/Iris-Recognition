function varargout = gui_5(varargin)
% GUI_5 M-file for gui_5.fig
% GUI_5, by itself, creates a new GUI_5 or raises the existingsingleton*.
% H = GUI_5 returns the handle to a new GUI_5 or the handle to
% the existing singleton*. %
% GUI_5('CALLBACK',hObject,eventData,handles,...) calls the local
% function named CALLBACK in GUI_5.M with the given input arguments. %
% GUI_5('Property','Value',...) creates a new GUI_5 or raises the
% existing singleton*. Starting from the left, property value pairs are
% applied to the GUI before gui_5_OpeningFcn gets called. An
% unrecognized property name or invalid value makes property application
% stop. All inputs are passed to gui_5_OpeningFcn via varargin. %
% *See GUI Options on GUIDE's Tools menu. Choose "GUI allows only one
% instance to run (singleton)". %
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help gui_5
% Last Modified by GUIDE v2.5 09-Apr-2014 13:23:10
% Begin initialization code - DO NOT EDIT gui_Singleton = 1;
gui_State = struct('gui_Name', mfilename, ... 'gui_Singleton', gui_Singleton, ... 'gui_OpeningFcn', @gui_5_OpeningFcn, ... 'gui_OutputFcn', @gui_5_OutputFcn, ... 'gui_LayoutFcn', [] , ...
'gui_Callback', []); ifnargin&&ischar(varargin{1}) gui_State.gui_Callback = str2func(varargin{1}); end
ifnargout
[varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
% --- Executes just before gui_5 is made visible.
function gui_5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA)
% varargin command line arguments to gui_5 (see VARARGIN) handles.a1='';
handles.a2='';
handles.a3='';
guidata(hObject,handles);
% Choose default command line output for gui_5 handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes gui_5 wait for user response (see UIRESUME) % uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line. functionvarargout = gui_5_OutputFcn(hObject, eventdata, handles)
% varargout cell array for returning output args (see VARARGOUT); % hObject handle to figure
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
% import the background image and show it on the axes
bg = imread('C:\Iris Recognition\Project 2014\back ground GUI\bg2.jpg'); imagesc(bg);
%prevent plotting over the background and turn the axis off set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols uistack(ah, 'bottom');
% Update handles structure guidata(hObject, handles);
function edit1_Callback(hObject, eventdata, handles)
% hObject handle to edit1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit1 as text
% str2double(get(hObject,'String')) returns contents of edit1 as a double
% --- Executes during object creation, after setting all properties. function edit1_CreateFcn(hObject, eventdata, handles)
% hObject handle to edit1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
% See ISPC and COMPUTER. ifispc&&isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor')) set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton1 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA) [filename, pathname] = uigetfile('*.jpg', 'Pick a file'); ifisequal(filename,0) || isequal(pathname,0)
msgbox(sprintf('User has Pressed Cancel'),'Error','Error');
else
filename=strcat(pathname,filename);
% pathname
a=imread(filename); axes(handles.axes1) imshow(a)
end
handles.a1=a; guidata(hObject,handles);
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton2 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA) axes(handles.axes1)
clareset
axes(handles.axes2)
clareset
axes(handles.axes4)
clareset
handles.a1='';
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton3 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA)
try
i=handles.a1;
[m m1 p1 index dist]=Output1(i);
y2=xlswrite('C:\Iris Recognition\Project 2014\process\distance.xls',[dist]); handles.a2=index;
guidata(hObject,handles);
axes(handles.axes2); imshow(m1); axes(handles.axes4); imshow(p1);
figure,imshow(m),title('match found????');
catch
msgbox(sprintf('Please Load Iris Image!!!!'),'Error','Error'); end
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton4 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA)
try
i1=handles.a1;
[im2 im3 im4 im5 im6 im7]=F_v(i1);
figure;
subplot(1,3,1),imshow(im2),title('grayscale image'); subplot(1,3,2),imshow(im3),title('histogram equalisation'); subplot(1,3,3),imshow(im4),title('Clipped image');
figure;
subplot(1,3,1),imshow(im5),title('Masked image'); subplot(1,3,2),imshow(im6),title('Decomposed image'); subplot(1,3,3),imshow(im7),title('Canny edge detection'); catch
msgbox(sprintf('Please Load Iris Image!!!!'),'Error','Error');
end
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton5 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA)
try
ind=handles.a2;
d=xlsread('C:\Iris Recognition\Project 2014\process\distance.xls');
if((ind(1,1)==1 || ind(1,1)==2) && d(1,1)<=0.09) open('p1.doc');
elseif((ind(1,1)==3 || ind(1,1)==4) && d(1,1)<=0.09) open('p2.doc');
elseif((ind(1,1)==5 || ind(1,1)==6) && d(1,1)<=0.09) open('p3.doc');
elseif((ind(1,1)==7 || ind(1,1)==8) && d(1,1)<=0.09) open('p4.doc');
elseif((ind(1,1)==9 || ind(1,1)==10) && d(1,1)<=0.09) open('p5.doc');
elseif((ind(1,1)==11 || ind(1,1)==12) && d(1,1)<=0.09) open('p6.doc');
elseif((ind(1,1)==13 || ind(1,1)==14) && d(1,1)<=0.09) open('p7.doc');
elseif((ind(1,1)==15 || ind(1,1)==16) && d(1,1)<=0.09) open('p8.doc');
elseif((ind(1,1)==17 || ind(1,1)==18) && d(1,1)<=0.09) open('p9.doc');
elseif((ind(1,1)==19 || ind(1,1)==20) && d(1,1)<=0.09) open('p10.doc');
else
msgbox(sprintf('You are not valid user!!!'),'Error','Error'); end
catch
msgbox(sprintf('You Can not access the file. Either you have not loaded the image or have not processed it!!!'),'Error','Error');
end
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject handle to pushbutton6 (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB % handles structure with handles and user data (see GUIDATA) close all