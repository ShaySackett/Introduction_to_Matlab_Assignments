function varargout = MathMachine_GUI(varargin)
% MATHMACHINE_GUI MATLAB code for MathMachine_GUI.fig
%      MATHMACHINE_GUI, by itself, creates a new MATHMACHINE_GUI or raises the existing
%      singleton*.
%
%      H = MATHMACHINE_GUI returns the handle to a new MATHMACHINE_GUI or the handle to
%      the existing singleton*.
%
%      MATHMACHINE_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATHMACHINE_GUI.M with the given input arguments.
%
%      MATHMACHINE_GUI('Property','Value',...) creates a new MATHMACHINE_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MathMachine_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MathMachine_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MathMachine_GUI

% Last Modified by GUIDE v2.5 06-Aug-2019 14:36:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MathMachine_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MathMachine_GUI_OutputFcn, ...
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


% --- Executes just before MathMachine_GUI is made visible.
function MathMachine_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MathMachine_GUI (see VARARGIN)

% Choose default command line output for MathMachine_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MathMachine_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MathMachine_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
Val1 = str2double(get(hObject, 'String'));
handles.Val1 = Val1;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
Val2 = str2double(get(hObject, 'String'));
handles.Val2 = Val2;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.radiobutton1 == 1
    Solution = handles.Val1 + handles.Val2;
    set(handles.text3, 'String', Solution);
    guidata(hObject,handles);
elseif handles.radiobutton2 == 1
    Solution = handles.Val1 - handles.Val2;
    set(handles.text3, 'String', Solution);
    guidata(hObject,handles);
elseif handles.radiobutton3 == 1
	Solution = handles.Val1 * handles.Val2;
    set(handles.text3, 'String', Solution);
    guidata(hObject,handles);
elseif handles.radiobutton4 == 1
	Solution = handles.Val1 / handles.Val2;
    set(handles.text3, 'String', Solution);
    guidata(hObject,handles);
end
    
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
radiobutton4_state = get(hObject,'Value');
handles.radiobutton4 = radiobutton4_state;
handles.radiobutton3 = 0;
handles.radiobutton2 = 0;
handles.radiobutton1 = 0;
guidata(hObject,handles);

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
radiobutton3_state = get(hObject,'Value');
handles.radiobutton3 = radiobutton3_state;
handles.radiobutton4 = 0;
handles.radiobutton2 = 0;
handles.radiobutton1 = 0;
guidata(hObject,handles);

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
radiobutton2_state = get(hObject,'Value');
handles.radiobutton2 = radiobutton2_state;
handles.radiobutton4 = 0;
handles.radiobutton3 = 0;
handles.radiobutton1 = 0;
guidata(hObject,handles);

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
radiobutton1_state = get(hObject,'Value');
handles.radiobutton1 = radiobutton1_state;
handles.radiobutton4 = 0;
handles.radiobutton3 = 0;
handles.radiobutton2 = 0;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


