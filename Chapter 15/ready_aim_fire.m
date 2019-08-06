function varargout = ready_aim_fire(varargin)
% READY_AIM_FIRE MATLAB code for ready_aim_fire.fig
%      READY_AIM_FIRE, by itself, creates a new READY_AIM_FIRE or raises the existing
%      singleton*.
%
%      H = READY_AIM_FIRE returns the handle to a new READY_AIM_FIRE or the handle to
%      the existing singleton*.
%
%      READY_AIM_FIRE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in READY_AIM_FIRE.M with the given input arguments.
%
%      READY_AIM_FIRE('Property','Value',...) creates a new READY_AIM_FIRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ready_aim_fire_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ready_aim_fire_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ready_aim_fire

% Last Modified by GUIDE v2.5 05-Aug-2019 23:53:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ready_aim_fire_OpeningFcn, ...
                   'gui_OutputFcn',  @ready_aim_fire_OutputFcn, ...
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


% --- Executes just before ready_aim_fire is made visible.
function ready_aim_fire_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ready_aim_fire (see VARARGIN)

% Choose default command line output for ready_aim_fire
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ready_aim_fire wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ready_aim_fire_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in fire_pushbutton.
function fire_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to fire_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
time = 0:.001:100;
h=time*handles.vel*cosd(handles.theta);
v=time*handles.vel*sind(handles.theta)-1/2*9.81*time.^2;
pos=find(v>=0);
horizontal=h(pos);
vertical=v(pos);
comet(horizontal,vertical);


function launch_angle_Callback(hObject, eventdata, handles)
% hObject    handle to launch_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of launch_angle as text
%        str2double(get(hObject,'String')) returns contents of launch_angle as a double
handles.theta=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function launch_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to launch_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function launch_velocity_Callback(hObject, eventdata, handles)
% hObject    handle to launch_velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of launch_velocity as text
%        str2double(get(hObject,'String')) returns contents of launch_velocity as a double
handles.vel=str2double(get(hObject,'String'));
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function launch_velocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to launch_velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
