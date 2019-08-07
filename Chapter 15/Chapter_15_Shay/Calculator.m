function varargout = Calculator(varargin)
% CALCULATOR MATLAB code for Calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculator

% Last Modified by GUIDE v2.5 06-Aug-2019 21:34:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculator_OutputFcn, ...
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


% --- Executes just before Calculator is made visible.
function Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculator (see VARARGIN)

% Choose default command line output for Calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calculator_OutputFcn(hObject, eventdata, handles) 
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
if handles.add_button_state == 1
    result = handles.left + handles.right;
elseif handles.subtract_button_state == 1
    result = handles.left - handles.right;
elseif handles.multi_button_state == 1
    result = handles.left * handles.right;
elseif handles.div_button_state == 1
    result = handles.left / handles.right;
    
end

set(handles.result_box, 'String', result)
guidata(hObject, handles)

% --- Executes on button press in add_button.
function add_button_Callback(hObject, eventdata, handles)
% hObject    handle to add_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of add_button
add_button_state = get(hObject,'Value');
handles.add_button_state = add_button_state;
handles.subtract_button_state = 0;
handles.multi_button_state = 0; 
handles.div_button_state = 0;
guidata(hObject,handles);


% --- Executes on button press in multi_button.
function multi_button_Callback(hObject, eventdata, handles)
% hObject    handle to multi_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of multi_button
multi_button_state = get(hObject,'Value');
handles.multi_button_state = multi_button_state;
handles.subtract_button_state = 0;
handles.add_button_state = 0; 
handles.div_button_state = 0;
guidata(hObject,handles);


% --- Executes on button press in subtract_button.
function subtract_button_Callback(hObject, eventdata, handles)
% hObject    handle to subtract_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of subtract_button
subtract_button_state = get(hObject,'Value');
handles.subtract_button_state = subtract_button_state;
handles.multi_button_state = 0;
handles.add_button_state = 0; 
handles.div_button_state = 0;
guidata(hObject,handles);


% --- Executes on button press in div_button.
function div_button_Callback(hObject, eventdata, handles)
% hObject    handle to div_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of div_button
div_button_state = get(hObject,'Value');
handles.div_button_state = div_button_state;
handles.multi_button_state = 0;
handles.add_button_state = 0; 
handles.subtract_button_state = 0;
guidata(hObject,handles);
