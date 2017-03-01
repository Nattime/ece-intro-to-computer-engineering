function varargout = sec01_jiehuang_PROJ03(varargin)
% SEC01_JIEHUANG_PROJ03 M-file for sec01_jiehuang_PROJ03.fig
%      SEC01_JIEHUANG_PROJ03, by itself, creates a new SEC01_JIEHUANG_PROJ03 or raises the existing
%      singleton*.
%
%      H = SEC01_JIEHUANG_PROJ03 returns the handle to a new SEC01_JIEHUANG_PROJ03 or the handle to
%      the existing singleton*.
%
%      SEC01_JIEHUANG_PROJ03('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEC01_JIEHUANG_PROJ03.M with the given input arguments.
%
%      SEC01_JIEHUANG_PROJ03('Property','Value',...) creates a new SEC01_JIEHUANG_PROJ03 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sec01_jiehuang_PROJ03_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sec01_jiehuang_PROJ03_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sec01_jiehuang_PROJ03

% Last Modified by GUIDE v2.5 28-Apr-2011 00:28:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sec01_jiehuang_PROJ03_OpeningFcn, ...
                   'gui_OutputFcn',  @sec01_jiehuang_PROJ03_OutputFcn, ...
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


% --- Executes just before sec01_jiehuang_PROJ03 is made visible.
function sec01_jiehuang_PROJ03_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sec01_jiehuang_PROJ03 (see VARARGIN)

% Choose default command line output for sec01_jiehuang_PROJ03
set(handles.calculatebutton,'enable','off')
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sec01_jiehuang_PROJ03 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sec01_jiehuang_PROJ03_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

% --- Executes on button press in loadexambutton.
function loadexambutton_Callback(hObject, eventdata, handles)
% hObject    handle to loadexambutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = (get(handles.popupmenu1,'Value'));
switch selection
    case 1
        s = zeros(11,2);
        set(handles.table,'data',s);
        set(handles.calculatebutton,'enable','off');
    otherwise
        set(handles.calculatebutton,'enable','on');
        exam = xlsread('grades.xls')
        s = zeros(11,2);
        set(handles.table,'data',s)
        [r c] = size(exam);
if (r~=(selection-2))
    set(handles.display,'string','Number of Exams not equal to selection on menu.')
    set(handles.calculatebutton,'enable','off');
else
    set(handles.calculatebutton,'enable','on');
    set(handles.display,'string','Data will be shown on table')
    s = zeros(11,2);
    s(1:r,:) = exam;
    set(handles.table,'data',s);
end
end
guidata(hObject,handles)


% --- Executes on button press in calculatebutton.
function calculatebutton_Callback(hObject, eventdata, handles)
% hObject    handle to calculatebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.ecedit,'String');
b = get(handles.popupmenu1,'Value');
c = get(handles.attendedit,'String');
d = get(handles.otheredit,'String');
e = get(handles.projedit,'String');
f = get(handles.PSedit,'String');
g = get(handles.quizedit,'String');

total = (str2num(a) + (b-2) + str2num(c) + str2num(d) + str2num(f) + str2num(g) + str2num(e));
h = num2str(total);
set(handles.totalitems,'String',h);
datatable = get(handles.table,'Data');
[r c]=size(datatable);
p=sum(datatable(1:r,1));
q=sum(datatable(1:9,2));
set(handles.totalscores,'String',p);
set(handles.totalweight,'String',q);
v=0;
h=0;
for u=1:5
    v=(datatable(u,1)*(datatable(u,2)/100))+v;
end
    for w=6:r
    h=(datatable(w,1))+h;
    end
    f=h+v;
    k=(f/q)*100;
    fprintf('%.02f',f);
    set(handles.numericalgrade,'String',k);

if (k >= 90)
     set(handles.lettergrade, 'String', 'A')
elseif (k>=85)
  set(handles.lettergrade, 'String', 'B+')
elseif (k>=80)
     set(handles.lettergrade, 'String', 'B')
elseif (k>=75)
     set(handles.lettergrade, 'String', 'C+')
elseif (k>=70)
     set(handles.lettergrade, 'String', 'C')
elseif (k>=60)
     set(handles.lettergrade, 'String', 'D')
else
     set(handles.lettergrade, 'String', 'F')
end    
guidata(hObject, handles);

function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.


function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PSedit_Callback(hObject, eventdata, handles)
% hObject    handle to PSedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PSedit as text
%        str2double(get(hObject,'String')) returns contents of PSedit as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input = str2num(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.display, 'String', 'Problem Set input invalid') 
     set(handles.calculatebutton,'Enable','off')
else
    set(handles.display, 'String', '-') 
     set(handles.calculatebutton,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function PSedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PSedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function projedit_Callback(hObject, eventdata, handles)
% hObject    handle to projedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of projedit as text
%        str2double(get(hObject,'String')) returns contents of projedit as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input = str2num(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.display, 'String', 'Projects input invalid') 
     set(handles.calculatebutton,'Enable','off')
else
    set(handles.display, 'String', '-') 
     set(handles.calculatebutton,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function projedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to projedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function attendedit_Callback(hObject, eventdata, handles)
% hObject    handle to attendedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of attendedit as text
%        str2double(get(hObject,'String')) returns contents of attendedit as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input = str2num(get(hObject,'String'));
if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.display, 'String', 'Attendance input error') 
     set(handles.calculatebutton,'Enable','off')
else
     set(handles.display, 'String', '-')
     set(handles.calculatebutton,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function attendedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to attendedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function quizedit_Callback(hObject, eventdata, handles)
% hObject    handle to quizedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of quizedit as text
%        str2double(get(hObject,'String')) returns contents of quizedit as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input = str2num(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.display, 'String', 'Quiz input invalid') 
     set(handles.calculatebutton,'Enable','off')
else
    set(handles.display, 'String', '-') 
     set(handles.calculatebutton,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function quizedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to quizedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ecedit_Callback(hObject, eventdata, handles)
% hObject    handle to ecedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecedit as text
%        str2double(get(hObject,'String')) returns contents of ecedit as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input = str2num(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.display, 'String', 'Extra Credit input invalid') 
     set(handles.calculatebutton,'Enable','off')
else
    set(handles.display, 'String', '-') 
     set(handles.calculatebutton,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ecedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function otheredit_Callback(hObject, eventdata, handles)
% hObject    handle to otheredit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of otheredit as text
%        str2double(get(hObject,'String')) returns contents of otheredit as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input = str2num(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.display, 'String', 'Other input invalid') 
     set(handles.calculatebutton,'Enable','off')
else
    set(handles.display, 'String', '-') 
     set(handles.calculatebutton,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function otheredit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to otheredit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function totalitems_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalitems (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function totalscores_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalscores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function totalweight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalweight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function numericalgrade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numericalgrade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lettergrade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lettergrade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
get(handle.popupmenu1,'Value')

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu1 controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes when entered data in editable cell(s) in table.
function table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
clear;clc


% --- Executes on key press with focus on popupmenu1 and none of its controls.
function popupmenu1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
