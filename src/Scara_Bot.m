function varargout = Scara_Bot(varargin)
% SCARA_BOT MATLAB code for Scara_Bot.fig
%      SCARA_BOT, by itself, creates a new SCARA_BOT or raises the existing
%      singleton*.
%
%      H = SCARA_BOT returns the handle to a new SCARA_BOT or the handle to
%      the existing singleton*.
%
%      SCARA_BOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCARA_BOT.M with the given input arguments.
%
%      SCARA_BOT('Property','Value',...) creates a new SCARA_BOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Scara_Bot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Scara_Bot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Scara_Bot

% Last Modified by GUIDE v2.5 10-Dec-2023 23:54:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Scara_Bot_OpeningFcn, ...
                   'gui_OutputFcn',  @Scara_Bot_OutputFcn, ...
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


% --- Executes just before Scara_Bot is made visible.
function Scara_Bot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Scara_Bot (see VARARGIN)

% Choose default command line output for Scara_Bot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

global a alpha d theta;
a1 = str2double(handles.a1_val.String);
a2 = str2double(handles.a2_val.String);
d1 = str2double(handles.d1_val.String);
d2 = str2double(handles.d2_val.String);

%Creat DH Matrix
a     = [a1    ;   a2   ;  0  ;    0   ];
alpha = [0     ;   0    ;  0  ;   pi   ];
d     = [d1    ;   d2   ;  0  ;  -24   ];
theta = [0     ;    0   ;  0  ;    0   ];
btTrajectory_tab1_Callback(hObject, eventdata, handles)

% UIWAIT makes Scara_Bot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Scara_Bot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function Theta1_val_Callback(hObject, eventdata, handles)
% hObject    handle to Theta1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta1_val as text
%        str2double(get(hObject,'String')) returns contents of Theta1_val as a double


% --- Executes during object creation, after setting all properties.
function Theta1_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta2_val_Callback(hObject, eventdata, handles)
% hObject    handle to Theta2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta2_val as text
%        str2double(get(hObject,'String')) returns contents of Theta2_val as a double


% --- Executes during object creation, after setting all properties.
function Theta2_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta4_val_Callback(hObject, eventdata, handles)
% hObject    handle to Theta4_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta4_val as text
%        str2double(get(hObject,'String')) returns contents of Theta4_val as a double


% --- Executes during object creation, after setting all properties.
function Theta4_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta4_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d3_val_Callback(hObject, eventdata, handles)
% hObject    handle to d3_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d3_val as text
%        str2double(get(hObject,'String')) returns contents of d3_val as a double


% --- Executes during object creation, after setting all properties.
function d3_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d3_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderTheta1_Callback(hObject, eventdata, handles)
% hObject    handle to sliderTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta;
handles.Theta1_val.String = get(handles.sliderTheta1,'Value'); 
theta(1) = wrapTo360(handles.sliderTheta1.Value)*pi/180;
%plot arm
plot_frame_arm(a,alpha,d,theta,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderTheta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderTheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderTheta2_Callback(hObject, eventdata, handles)
% hObject    handle to sliderTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta;
handles.Theta2_val.String = get(handles.sliderTheta2,'Value'); 
theta(2) = wrapTo360(handles.sliderTheta2.Value)*pi/180;
%plot arm
plot_frame_arm(a,alpha,d,theta,handles);

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderTheta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderTheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderTheta4_Callback(hObject, eventdata, handles)
% hObject    handle to sliderTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta;
handles.Theta4_val.String = get(handles.sliderTheta4,'Value'); 
theta(4) = wrapTo360(handles.sliderTheta4.Value)*pi/180;
%plot arm
plot_frame_arm(a,alpha,d,theta,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderTheta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderTheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderd3_Callback(hObject, eventdata, handles)
% hObject    handle to sliderd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta;
handles.d3_val.String = get(handles.sliderd3,'Value'); 
d(3) = -(handles.sliderd3.Value);
%plot arm
plot_frame_arm(a,alpha,d,theta,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderd3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderd3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function Opac_val_Callback(hObject, eventdata, handles)
% hObject    handle to Opac_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Opac_val as text
%        str2double(get(hObject,'String')) returns contents of Opac_val as a double


% --- Executes during object creation, after setting all properties.
function Opac_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Opac_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function Sld_Opac_Callback(hObject, eventdata, handles)
% hObject    handle to Sld_Opac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Opac_val.String = get(handles.Sld_Opac,'Value');
global a alpha d theta;
%plot arm
plot_frame_arm(a,alpha,d,theta,handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Sld_Opac_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sld_Opac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in ChB_WoSp.
function ChB_WoSp_Callback(hObject, eventdata, handles)
% hObject    handle to ChB_WoSp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
plot_frame_arm(a,alpha,d,theta,handles);
% Hint: get(hObject,'Value') returns toggle state of ChB_WoSp


% --- Executes on button press in ChB_coor4.
function ChB_coor4_Callback(hObject, eventdata, handles)
% hObject    handle to ChB_coor4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
plot_frame_arm(a,alpha,d,theta,handles);
% Hint: get(hObject,'Value') returns toggle state of ChB_coor4


% --- Executes on button press in ChB_coor3.
function ChB_coor3_Callback(hObject, eventdata, handles)
% hObject    handle to ChB_coor3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
plot_frame_arm(a,alpha,d,theta,handles);
% Hint: get(hObject,'Value') returns toggle state of ChB_coor3


% --- Executes on button press in ChB_coor2.
function ChB_coor2_Callback(hObject, eventdata, handles)
% hObject    handle to ChB_coor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
plot_frame_arm(a,alpha,d,theta,handles);
% Hint: get(hObject,'Value') returns toggle state of ChB_coor2


% --- Executes on button press in ChB_coor1.
function ChB_coor1_Callback(hObject, eventdata, handles)
% hObject    handle to ChB_coor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
plot_frame_arm(a,alpha,d,theta,handles);
% Hint: get(hObject,'Value') returns toggle state of ChB_coor1


% --- Executes on button press in ChB_coor0.
function ChB_coor0_Callback(hObject, eventdata, handles)
% hObject    handle to ChB_coor0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
plot_frame_arm(a,alpha,d,theta,handles);
% Hint: get(hObject,'Value') returns toggle state of ChB_coor0



function a1_val_Callback(hObject, eventdata, handles)
% hObject    handle to a1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1_val as text
%        str2double(get(hObject,'String')) returns contents of a1_val as a double


% --- Executes during object creation, after setting all properties.
function a1_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a2_val_Callback(hObject, eventdata, handles)
% hObject    handle to a2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2_val as text
%        str2double(get(hObject,'String')) returns contents of a2_val as a double


% --- Executes during object creation, after setting all properties.
function a2_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d2_val_Callback(hObject, eventdata, handles)
% hObject    handle to d2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d2_val as text
%        str2double(get(hObject,'String')) returns contents of d2_val as a double


% --- Executes during object creation, after setting all properties.
function d2_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d1_val_Callback(hObject, eventdata, handles)
% hObject    handle to d1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d1_val as text
%        str2double(get(hObject,'String')) returns contents of d1_val as a double


% --- Executes during object creation, after setting all properties.
function d1_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_Run.
function bt_Run_Callback(hObject, eventdata, handles)
% hObject    handle to bt_Run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a alpha d theta
Trajectory(handles,a,alpha,d,theta)


% --- Executes on button press in bt_Reset.
function bt_Reset_Callback(hObject, eventdata, handles)
% hObject    handle to bt_Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a d theta alpha;
set(handles.d3_val,'string',num2str(0));
set(handles.Theta1_val,'string',num2str(0));
set(handles.Theta2_val,'string',num2str(90));
set(handles.Theta4_val,'string',num2str(0));
set(handles.sliderTheta1,'Value',0);
set(handles.sliderTheta2,'Value',90);
set(handles.sliderTheta4,'Value',0);
set(handles.sliderd3,'Value',0);

theta(1) = wrapTo360(str2double(handles.Theta1_val.String))*pi/180;
if wrapTo360(str2double(handles.Theta2_val.String))*pi/180 == 0
    msgbox('Diem ki di');
    return
end
theta(2) = wrapTo360(str2double(handles.Theta2_val.String))*pi/180;
theta(4) = wrapTo360(str2double(handles.Theta4_val.String))*pi/180;
d(3) = -(str2double(handles.d3_val.String));
plot_frame_arm(a,alpha,d,theta,handles)


% --- Executes on button press in btn_Start.
function btn_Start_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a d theta alpha;
theta(1) = wrapTo360(str2double(handles.Theta1_val.String))*pi/180;
% if wrapTo360(str2double(handles.Theta2_val.String))*pi/180 == 0
%     msgbox('Diem ki di');
%     return
% end
theta(2) = wrapTo360(str2double(handles.Theta2_val.String))*pi/180;
theta(4) = wrapTo360(str2double(handles.Theta4_val.String))*pi/180;
d(3) = -(str2double(handles.d3_val.String));
plot_frame_arm(a,alpha,d,theta,handles);
set(handles.sliderTheta1,'Value',str2double(handles.Theta1_val.String));
set(handles.sliderTheta2,'Value',str2double(handles.Theta2_val.String));
set(handles.sliderTheta4,'Value',str2double(handles.Theta4_val.String));
set(handles.sliderd3,'Value',str2double(handles.d3_val.String));



% --- Executes on selection change in Path_Planning_select.
function Path_Planning_select_Callback(hObject, eventdata, handles)
% hObject    handle to Path_Planning_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Path_Planning_select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Path_Planning_select


% --- Executes during object creation, after setting all properties.
function Path_Planning_select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Path_Planning_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Trajectory_select.
function Trajectory_select_Callback(hObject, eventdata, handles)
% hObject    handle to Trajectory_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Trajectory_select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Trajectory_select


% --- Executes during object creation, after setting all properties.
function Trajectory_select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Trajectory_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_X_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_X as text
%        str2double(get(hObject,'String')) returns contents of Pos_X as a double


% --- Executes during object creation, after setting all properties.
function Pos_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_Y_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_Y as text
%        str2double(get(hObject,'String')) returns contents of Pos_Y as a double


% --- Executes during object creation, after setting all properties.
function Pos_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_Z_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_Z as text
%        str2double(get(hObject,'String')) returns contents of Pos_Z as a double


% --- Executes during object creation, after setting all properties.
function Pos_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Roll_val_Callback(hObject, eventdata, handles)
% hObject    handle to Roll_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Roll_val as text
%        str2double(get(hObject,'String')) returns contents of Roll_val as a double


% --- Executes during object creation, after setting all properties.
function Roll_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Roll_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pitch_val_Callback(hObject, eventdata, handles)
% hObject    handle to Pitch_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pitch_val as text
%        str2double(get(hObject,'String')) returns contents of Pitch_val as a double


% --- Executes during object creation, after setting all properties.
function Pitch_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pitch_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Yaw_val_Callback(hObject, eventdata, handles)
% hObject    handle to Yaw_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Yaw_val as text
%        str2double(get(hObject,'String')) returns contents of Yaw_val as a double


% --- Executes during object creation, after setting all properties.
function Yaw_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Yaw_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_X_Next_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_X_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_X_Next as text
%        str2double(get(hObject,'String')) returns contents of Pos_X_Next as a double


% --- Executes during object creation, after setting all properties.
function Pos_X_Next_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_X_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_Y_Next_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_Y_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_Y_Next as text
%        str2double(get(hObject,'String')) returns contents of Pos_Y_Next as a double


% --- Executes during object creation, after setting all properties.
function Pos_Y_Next_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_Y_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_Z_Next_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_Z_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_Z_Next as text
%        str2double(get(hObject,'String')) returns contents of Pos_Z_Next as a double


% --- Executes during object creation, after setting all properties.
function Pos_Z_Next_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_Z_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Roll_val_Next_Callback(hObject, eventdata, handles)
% hObject    handle to Roll_val_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Roll_val_Next as text
%        str2double(get(hObject,'String')) returns contents of Roll_val_Next as a double


% --- Executes during object creation, after setting all properties.
function Roll_val_Next_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Roll_val_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pitch_val_Next_Callback(hObject, eventdata, handles)
% hObject    handle to Pitch_val_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pitch_val_Next as text
%        str2double(get(hObject,'String')) returns contents of Pitch_val_Next as a double


% --- Executes during object creation, after setting all properties.
function Pitch_val_Next_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pitch_val_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Yaw_val_Next_Callback(hObject, eventdata, handles)
% hObject    handle to Yaw_val_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Yaw_val_Next as text
%        str2double(get(hObject,'String')) returns contents of Yaw_val_Next as a double


% --- Executes during object creation, after setting all properties.
function Yaw_val_Next_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Yaw_val_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_max_val_Callback(hObject, eventdata, handles)
% hObject    handle to a_max_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_max_val as text
%        str2double(get(hObject,'String')) returns contents of a_max_val as a double


% --- Executes during object creation, after setting all properties.
function a_max_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_max_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_max_val_Callback(hObject, eventdata, handles)
% hObject    handle to v_max_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_max_val as text
%        str2double(get(hObject,'String')) returns contents of v_max_val as a double


% --- Executes during object creation, after setting all properties.
function v_max_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_max_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_max_val_Callback(hObject, eventdata, handles)
% hObject    handle to q_max_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q_max_val as text
%        str2double(get(hObject,'String')) returns contents of q_max_val as a double


% --- Executes during object creation, after setting all properties.
function q_max_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q_max_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btTrajectory_tab1.
function btTrajectory_tab1_Callback(hObject, eventdata, handles)
% hObject    handle to btTrajectory_tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uip_Trajectory_tab1,'visible','on','position',[140.0 15.705882352941176 57.71428571428572 41.470588235294116]);
set(handles.uip_Trajectory_tab2,'visible','off','position',[141.57142857142856 12.294117647058822 130.0 44.705882352941174]);
set(handles.uip_Trajectory_tab3,'visible','off','position',[139.57142857142856 11.941176470588236 134.8571428571429 43.94117647058823]);
set(handles.btTrajectory_tab1,'BackgroundColor','blue','fontweight','bold','fontsize',10);
set(handles.btTrajectory_tab2,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.btTrajectory_tab3,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);


% --- Executes on button press in btTrajectory_tab2.
function btTrajectory_tab2_Callback(hObject, eventdata, handles)
% hObject    handle to btTrajectory_tab2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uip_Trajectory_tab1,'visible','off','position',[140.0 15.705882352941176 57.71428571428572 41.470588235294116]);
set(handles.uip_Trajectory_tab2,'visible','on','position',[141.57142857142856 12.294117647058822 130.0 44.705882352941174]);
set(handles.uip_Trajectory_tab3,'visible','off','position',[139.57142857142856 11.941176470588236 134.8571428571429 43.94117647058823]);
set(handles.btTrajectory_tab2,'BackgroundColor','blue','fontweight','bold','fontsize',10);
set(handles.btTrajectory_tab1,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.btTrajectory_tab3,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);


% --- Executes on button press in btTrajectory_tab3.
function btTrajectory_tab3_Callback(hObject, eventdata, handles)
% hObject    handle to btTrajectory_tab3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uip_Trajectory_tab1,'visible','off','position',[140.0 15.705882352941176 57.71428571428572 41.470588235294116]);
set(handles.uip_Trajectory_tab2,'visible','off','position',[141.57142857142856 12.294117647058822 130.0 44.705882352941174]);
set(handles.uip_Trajectory_tab3,'visible','on','position',[139.57142857142856 11.941176470588236 134.8571428571429 43.94117647058823]);
set(handles.btTrajectory_tab3,'BackgroundColor','blue','fontweight','bold','fontsize',10);
set(handles.btTrajectory_tab1,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
set(handles.btTrajectory_tab2,'BackgroundColor',[0.94 0.94 0.94],'fontweight','normal','fontsize',8);
