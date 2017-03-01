function varargout = sec06_parth022_PROJ03(varargin)
% SEC06_PARTH022_PROJ03 M-file for sec06_parth022_PROJ03.fig
%      SEC06_PARTH022_PROJ03, by itself, creates a new SEC06_PARTH022_PROJ03 or raises the existing
%      singleton*.
%
%      H = SEC06_PARTH022_PROJ03 returns the handle to a new SEC06_PARTH022_PROJ03 or the handle to
%      the existing singleton*.
%
%      SEC06_PARTH022_PROJ03('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEC06_PARTH022_PROJ03.M with the given input arguments.
%
%      SEC06_PARTH022_PROJ03('Property','Value',...) creates a new SEC06_PARTH022_PROJ03 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sec06_parth022_PROJ03_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sec06_parth022_PROJ03_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sec06_parth022_PROJ03

% Last Modified by GUIDE v2.5 26-Apr-2011 02:11:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sec06_parth022_PROJ03_OpeningFcn, ...
                   'gui_OutputFcn',  @sec06_parth022_PROJ03_OutputFcn, ...
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


% --- Executes just before sec06_parth022_PROJ03 is made visible.
function sec06_parth022_PROJ03_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sec06_parth022_PROJ03 (see VARARGIN)

% Choose default command line output for sec06_parth022_PROJ03
set(handles.calculate_push,'enable','off')
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sec06_parth022_PROJ03 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sec06_parth022_PROJ03_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in proj_num.
function proj_num_Callback(hObject, eventdata, handles)
% hObject    handle to proj_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns proj_num contents as cell array
%        contents{get(hObject,'Value')} returns selected item from proj_num
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.errorpanel, 'String', 'Error while input Projects') 
     set(handles.calculate_push,'Enable','off')
else
    set(handles.errorpanel, 'String', '-') 
     set(handles.calculate_push,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function proj_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to proj_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in other_num.
function other_num_Callback(hObject, eventdata, handles)
% hObject    handle to other_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns other_num contents as cell array
%        contents{get(hObject,'Value')} returns selected item from other_num

input = str2num(get(hObject,'String'));

if (isempty(input)  || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.errorpanel, 'String', 'Error while input Other') 
    set(handles.calculate_push,'Enable','off')
else
     set(handles.calculate_push,'Enable','on')
    set(handles.errorpanel, 'String', '-')
end
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function other_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to other_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ps_num_Callback(hObject, eventdata, handles)
% hObject    handle to ps_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ps_num as text
%        str2double(get(hObject,'String')) returns contents of ps_num as a double
input = str2num(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.errorpanel, 'String', 'Error while input Problem Sets')
      set(handles.calculate_push,'Enable','off')
else
    set(handles.errorpanel, 'String', '-') 
     set(handles.calculate_push,'Enable','on')
end
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function ps_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ps_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function quizzes_num_Callback(hObject, eventdata, handles)
% hObject    handle to quizzes_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of quizzes_num as text
%        str2double(get(hObject,'String')) returns contents of quizzes_num as a double
input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.errorpanel, 'String', 'Error while input Quizzes')
      set(handles.calculate_push,'Enable','off')
else
    set(handles.errorpanel, 'String', '-') 
     set(handles.calculate_push,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function quizzes_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to quizzes_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ec_num_Callback(hObject, eventdata, handles)
% hObject    handle to ec_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ec_num as text
%        str2double(get(hObject,'String')) returns contents of ec_num as a double
input = str2num(get(hObject,'String'));

if (isempty(input) == true || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.errorpanel, 'String', 'Error while input Extra Credit') 
     set(handles.calculate_push,'Enable','off')
else
    set(handles.errorpanel, 'String', '-') 
     set(handles.calculate_push,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ec_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ec_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lei_push.
function lei_push_Callback(hObject, eventdata, handles)
% hObject    handle to lei_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.calculate_push,'enable','on');

selection = (get(handles.noe_pop,'value'));

switch selection

case 1

m = zeros(11,2);

set(handles.table,'data',m);

set(handles.calculate_push,'enable','off');
otherwise
set(handles.calculate_push,'enable','on');
examScores = xlsread('grades.xls')
m = zeros(11,2);
set(handles.table,'data',m)
[r c] = size(examScores);

% exams = [0 1 2 3 4 5];

%number of rows does not match number of exams

if (r~=(selection-2))

set(handles.errorpanel,'string','Number of Exams not equal to selection on menu.')
set(handles.calculate_push,'enable','off');
else
set(handles.calculate_push,'enable','on');
set(handles.errorpanel,'string','Data will be shown on table')

m = zeros(11,2);

m(1:r,:) = examScores;

set(handles.table,'data',m);

end

end

guidata(hObject,handles)



% --- Executes on button press in calculate_push.
function calculate_push_Callback(hObject,eventdata, handles)
% hObject    handle to calculate_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.ec_num,'String');
b = get(handles.noe_pop,'value');
c = get(handles.attendance_num,'String');
d = get(handles.other_num,'String');
e = get(handles.proj_num,'String');
f = get(handles.ps_num,'String');
g = get(handles.quizzes_num,'String');

% a and b are variables of Strings type, and need to be converted
% to variables of Number type before they can be added together

total =( str2num(a) + + (b-2) + str2num(c)+ str2num(d)+ str2num(f)+str2num(g)+str2num(e));
h = num2str(total);
% need to convert the answer back into String type to display it
set(handles.ti_results1,'String',h);


% FOR TABLE

tabledata = get(handles.table,'data');

[r c]=size(tabledata)
%tableData(1:rows) 
p=sum(tabledata(1:r,1));
q=sum(tabledata(1:9,2));
%update the table
set(handles.ts_results,'string',p);
set(handles.tw_results,'string',q);



        
%r=(tabledata(1,1)*(tabledata(1,2)/100))+ (tabledata(2,1)*(tabledata(2,2)/100)) + (tabledata(3,1)*(tabledata(3,2)/100))+ (tabledata(4,1)*(tabledata(4,2)/100)) + (tabledata(5,1)*(tabledata(5,2)/100))
v=0;
h=0;
for u=1:5
    v=(tabledata(u,1)*(tabledata(u,2)/100))+v;
end
    for w=6:r
    h=(tabledata(w,1))+h;
    end
    f=h+v;
    k=(f/q)*100;
    fprintf('%.02f',f);
    set(handles.ng_results,'string',k);
    
    
    
    %if statement to print the letter grade based in his percentage
if (k >= 90)
    %disp('Letter Grade : A')
     set(handles.lg_results, 'String', 'A')
elseif (k>=85)
    %disp('Letter Grade : B+')
  set(handles.lg_results, 'String', 'B+')
elseif (k>=80)
   % disp('Letter Grade : B')
     set(handles.lg_results, 'String', 'B')
elseif (k>=75)
   % disp('Letter Grade : C+') 
  set(handles.lg_results, 'String', 'C+')
elseif (k>=70)
    %disp('Letter Grade : C')
     set(handles.lg_results, 'String', 'C')
elseif (k>=60)
   % disp('Letter Grade : D')
  set(handles.lg_results, 'String', 'D')
else
   % disp('Letter Grade : F')
         set(handles.lg_results, 'String', 'F')
end    
    
    


    guidata(hObject, handles);


function attendance_num_Callback(hObject, eventdata, handles)
% hObject    handle to attendance_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of attendance_num as text
%        str2double(get(hObject,'String')) returns contents of attendance_num as a double

input = str2num(get(hObject,'String'));

if (isempty(input) || input < 0 || isnumeric(input) == false || fix(input) ~= input)
     set(hObject,'String','-')
     set(handles.errorpanel, 'String', 'Error while input Attendance') 
     set(handles.calculate_push,'Enable','off')
else
    set(handles.errorpanel, 'String', '-')
     set(handles.calculate_push,'Enable','on')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function attendance_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to attendance_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in noe_pop.
function noe_pop_Callback(hObject, eventdata, handles)
% hObject    handle to noe_pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns noe_pop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from noe_pop

get(handle.noe_pop,'Value')
% --- Executes during object creation, after setting all properties.
function noe_pop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noe_pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in table.
function table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) editedclear
clc
clear
clc
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
