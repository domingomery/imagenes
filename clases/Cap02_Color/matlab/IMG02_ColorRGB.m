function varargout = IMG02_ColorRGB(varargin)
% IMG02_COLORRGB MATLAB code for IMG02_ColorRGB.fig
%      IMG02_COLORRGB, by itself, creates a new IMG02_COLORRGB or raises the existing
%      singleton*.
%
%      H = IMG02_COLORRGB returns the handle to a new IMG02_COLORRGB or the handle to
%      the existing singleton*.
%
%      IMG02_COLORRGB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMG02_COLORRGB.M with the given input arguments.
%
%      IMG02_COLORRGB('Property','Value',...) creates a new IMG02_COLORRGB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IMG02_ColorRGB_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IMG02_ColorRGB_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IMG02_ColorRGB

% Last Modified by GUIDE v2.5 13-Oct-2015 11:55:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IMG02_ColorRGB_OpeningFcn, ...
                   'gui_OutputFcn',  @IMG02_ColorRGB_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before IMG02_ColorRGB is made visible.
function IMG02_ColorRGB_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IMG02_ColorRGB (see VARARGIN)

% Choose default command line output for IMG02_ColorRGB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IMG02_ColorRGB wait for user response (see UIRESUME)
% uiwait(handles.figure1);


global I
I = zeros(256,256,3,'uint8');
figure(1)
clf
displayimage(I)



% --- Outputs from this function are returned to the command line.
function varargout = IMG02_ColorRGB_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I
x = uint8(get(hObject,'Value')*255);
I(:,:,1) = x;
displayimage(I)

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I
x = uint8(get(hObject,'Value')*255);
I(:,:,2) = x;
displayimage(I)


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I
x = uint8(get(hObject,'Value')*255);
I(:,:,3) = x;
displayimage(I)


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function displayimage(I)
figure(1)
imshow(I)
title(sprintf('R=%d, G=%d, B=%d',I(1,1,1),I(1,1,2),I(1,1,3)))
