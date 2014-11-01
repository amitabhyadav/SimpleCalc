function varargout = calsim(varargin)
% CALSIM MATLAB code for calsim.fig
%      CALSIM, by itself, creates a new CALSIM or raises the existing
%      singleton*.
%
%      H = CALSIM returns the handle to a new CALSIM or the handle to
%      the existing singleton*.
%
%      CALSIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALSIM.M with the given input arguments.
%
%      CALSIM('Property','Value',...) creates a new CALSIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calsim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calsim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calsim

% Last Modified by GUIDE v2.5 02-Jul-2014 09:39:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calsim_OpeningFcn, ...
                   'gui_OutputFcn',  @calsim_OutputFcn, ...
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


% --- Executes just before calsim is made visible.
function calsim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calsim (see VARARGIN)

% Choose default command line output for calsim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calsim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calsim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function num1_Callback(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num1 as text
%        str2double(get(hObject,'String')) returns contents of num1 as a double


% --- Executes during object creation, after setting all properties.
function num1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num2_Callback(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num2 as text
%        str2double(get(hObject,'String')) returns contents of num2 as a double


% --- Executes during object creation, after setting all properties.
function num2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.num1,'String');
f=str2num(a);
b=get(handles.num2,'String');
e=str2num(b);
c=e+f;
set(handles.ans,'String',c);

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.num1,'String');
f=str2num(a);
b=get(handles.num2,'String');
e=str2num(b);
c=e*f;
set(handles.ans,'String',c);

% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.num1,'String');
f=str2num(a);
b=get(handles.num2,'String');
e=str2num(b);
c=f-e;
set(handles.ans,'String',c);

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.num1,'String');
f=str2num(a);
b=get(handles.num2,'String');
e=str2num(b);
c=f/e;
set(handles.ans,'String',c);


function ans_Callback(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ans as text
%        str2double(get(hObject,'String')) returns contents of ans as a double

% --- Executes during object creation, after setting all properties.
function ans_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rem.
function rem_Callback(hObject, eventdata, handles)
% hObject    handle to rem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.num1,'String');
f=str2num(a);
b=get(handles.num2,'String');
e=str2num(b);
c=rem(f,e);
set(handles.ans,'String',c);
