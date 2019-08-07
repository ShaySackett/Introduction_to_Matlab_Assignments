function varargout = adding_machine(varargin)
% ADDING_MACHINE MATLAB code for adding_machine.fig
%      ADDING_MACHINE, by itself, creates a new ADDING_MACHINE or raises the existing
%      singleton*.
%
%      H = ADDING_MACHINE returns the handle to a new ADDING_MACHINE or the handle to
%      the existing singleton*.
%
%      ADDING_MACHINE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADDING_MACHINE.M with the given input arguments.
%
%      ADDING_MACHINE('Property','Value',...) creates a new ADDING_MACHINE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before adding_machine_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to adding_machine_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help adding_machine

% Last Modified by GUIDE v2.5 06-Aug-2019 20:38:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @adding_machine_OpeningFcn, ...
                   'gui_OutputFcn',  @adding_machine_OutputFcn, ...
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


% --- Executes just before adding_machine is made visible.
function adding_machine_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to adding_machine (see VARARGIN)

% Choose default command line output for adding_machine
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes adding_machine wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = adding_machine_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function left_input_Callback(hObject, eventdata, handles)
% hObject    handle to left_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of left_input as text
%        str2double(get(hObject,'String')) returns contents of left_input as a double
left = str2double(get(hObject,'String'));
handles.left = left;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function left_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to left_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function right_input_Callback(hObject, eventdata, handles)
% hObject    handle to right_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of right_input as text
%        str2double(get(hObject,'String')) returns contents of right_input as a double
right = str2double(get(hObject,'String'));
handles.right = right;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function right_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to right_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equals_button.
function equals_button_Callback(hObject, eventdata, handles)
% hObject    handle to equals_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
result = handles.right + handles.left;
set(handles.result_box, 'String', result);
guidata(hObject,handles);
