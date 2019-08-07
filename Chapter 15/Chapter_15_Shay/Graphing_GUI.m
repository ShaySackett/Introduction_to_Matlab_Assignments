function varargout = Graphing_GUI(varargin)
% GRAPHING_GUI MATLAB code for Graphing_GUI.fig
%      GRAPHING_GUI, by itself, creates a new GRAPHING_GUI or raises the existing
%      singleton*.
%
%      H = GRAPHING_GUI returns the handle to a new GRAPHING_GUI or the handle to
%      the existing singleton*.
%
%      GRAPHING_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHING_GUI.M with the given input arguments.
%
%      GRAPHING_GUI('Property','Value',...) creates a new GRAPHING_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Graphing_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Graphing_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Graphing_GUI

% Last Modified by GUIDE v2.5 07-Aug-2019 14:04:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Graphing_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Graphing_GUI_OutputFcn, ...
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


% --- Executes just before Graphing_GUI is made visible.
function Graphing_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Graphing_GUI (see VARARGIN)

% Choose default command line output for Graphing_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Graphing_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Graphing_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in x_button.
function x_button_Callback(hObject, eventdata, handles)
% hObject    handle to x_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of x_button
handles.x_button_state = 1;
handles.y_button_state = 0;
handles.z_button_state = 0;
%handles.data = peaks(100);
guidata(hObject,handles);

% --- Executes on button press in y_button.
function y_button_Callback(hObject, eventdata, handles)
% hObject    handle to y_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of y_button
handles.x_button_state = 0;
handles.y_button_state = 1;
handles.z_button_state = 0;
%handles.data = magic(10);
guidata(hObject,handles);


% --- Executes on button press in z_button.
function z_button_Callback(hObject, eventdata, handles)
% hObject    handle to z_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of z_button
handles.x_button_state = 0;
handles.y_button_state = 0;
handles.z_button_state = 1;
%handles.data = flipud(peaks(100));
guidata(hObject,handles);


% --- Executes on button press in surface_plot_button.
function surface_plot_button_Callback(hObject, eventdata, handles)
% hObject    handle to surface_plot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of surface_plot_button
handles.s_plot_button_state = 1;
handles.m_plot_button_state = 0;
handles.c_plot_button_state = 0;
guidata(hObject,handles);
%surf(handles.data)


% --- Executes on button press in mesh_plot_button.
function mesh_plot_button_Callback(hObject, eventdata, handles)
% hObject    handle to mesh_plot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of mesh_plot_button
handles.s_plot_button_state = 0;
handles.m_plot_button_state = 1;
handles.c_plot_button_state = 0;
guidata(hObject,handles);
%mesh(handles.data)




% --- Executes on button press in contour_plot_button.
function contour_plot_button_Callback(hObject, eventdata, handles)
% hObject    handle to contour_plot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of contour_plot_button
handles.s_plot_button_state = 0;
handles.m_plot_button_state = 0;
handles.c_plot_button_state = 1;
guidata(hObject,handles);
%contour(handles.data)


% --- Executes on button press in plot_button.
function plot_button_Callback(hObject, eventdata, handles)
% hObject    handle to plot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.x_button_state == 1
     if handles.s_plot_button_state == 1
         surf(peaks(100))
     elseif handles.m_plot_button_state == 1
         mesh(peaks(100))
     elseif handles.c_plot_button_state == 1
         contour(peaks(100))
     end
elseif handles.y_button_state == 1 
    if handles.s_plot_button_state == 1
         surf(magic(10))
     elseif handles.m_plot_button_state == 1
         mesh(magic(10))
     elseif handles.c_plot_button_state == 1
         contour(magic(10))
    end
elseif  handles.z_button_state == 1
    if handles.s_plot_button_state == 1
         surf(flipud(peaks(10)))
     elseif handles.m_plot_button_state == 1
         mesh(flipud(peaks(10)))
     elseif handles.c_plot_button_state == 1
         contour(flipud(peaks(10)))
    end
end
    
     
