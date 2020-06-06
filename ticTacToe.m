## MIT License
##
## Copyright 2020 4yub1k salahuddin@protonmail.com
##
## Permission is hereby granted, free of charge, to any person obtaining a copy of this
## software and associated documentation files (the "Software"), to deal in the Software
## without restriction, including without limitation the rights to use, copy, modify, merge,
## publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
## to whom the Software is furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in all copies
## or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
## INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
## PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
## FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
## OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
## DEALINGS IN THE SOFTWARE.


function varargout = ticTacToe(varargin)
%github.com/4yub1k/  Salahuddin@protonmail.com
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ticTacToe_OpeningFcn, ...
                   'gui_OutputFcn',  @ticTacToe_OutputFcn, ...
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


% --- Executes just before ticTacToe is made visible.
function ticTacToe_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ticTacToe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ticTacToe_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a1=0;b1=0;
if(a2==0 & b2==1)
ac='O';
a1=a1+1;b2=0;
set(handles.pushbutton1,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b1=b1+1;a2=0;
set(handles.pushbutton1,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a1=a1+1;b3=0;
set(handles.pushbutton1,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b1=b1+1;a3=0;
set(handles.pushbutton1,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a1=a1+1;b4=0;
set(handles.pushbutton1,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b1=b1+1;a4=0;
set(handles.pushbutton1,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a1=a1+1;b5=0;
set(handles.pushbutton1,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b1=b1+1;a5=0;
set(handles.pushbutton1,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a1=a1+1;b6=0;
set(handles.pushbutton1,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b1=b1+1;a6=0;
set(handles.pushbutton1,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a1=a1+1;b7=0;
set(handles.pushbutton1,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b1=b1+1;a7=0;
set(handles.pushbutton1,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a1=a1+1;b8=0;
set(handles.pushbutton1,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b1=b1+1;a8=0;
set(handles.pushbutton1,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a1=a1+1;b9=0;
set(handles.pushbutton1,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b1=b1+1;a9=0;
set(handles.pushbutton1,'string',ab) 

elseif(a1==0 & b1==0)
 ab='X';
 b1=b1+1;b1=1;
set(handles.pushbutton1,'string',ab) 

end
%checking for winner.
if(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton4,'string')=='X' &...
        get(handles.pushbutton7,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton4,'string')=='O' &...
        get(handles.pushbutton7,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

elseif(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton2,'string')=='X' &...
        get(handles.pushbutton3,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton2,'string')=='O' &...
        get(handles.pushbutton3,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a2=0;b2=0;
if(a1==0 & b1==1)
ac='O';
a2=a2+1;b1=0;
set(handles.pushbutton2,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b2=b2+1;a1=0;
set(handles.pushbutton2,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a2=a2+1;b3=0;
set(handles.pushbutton2,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b2=b2+1;a3=0;
set(handles.pushbutton2,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a2=a2+1;b4=0;
set(handles.pushbutton2,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b2=b2+1;a4=0;
set(handles.pushbutton2,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a2=a2+1;b5=0;
set(handles.pushbutton2,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b2=b2+1;a5=0;
set(handles.pushbutton2,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a2=a2+1;b6=0;
set(handles.pushbutton2,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b2=b2+1;a6=0;
set(handles.pushbutton2,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a2=a2+1;b7=0;
set(handles.pushbutton2,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b2=b2+1;a7=0;
set(handles.pushbutton2,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a2=a2+1;b8=0;
set(handles.pushbutton2,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b2=b2+1;a8=0;
set(handles.pushbutton2,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a2=a2+1;b9=0;
set(handles.pushbutton2,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b2=b2+1;a9=0;
set(handles.pushbutton2,'string',ab)
elseif(a2==0 & b2==0)
 ab='X';
 b2=b2+1;b2=1;
set(handles.pushbutton2,'string',ab)
end
%checking for winner.
if(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton2,'string')=='X' &...
        get(handles.pushbutton3,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton2,'string')=='O' &...
        get(handles.pushbutton3,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton2,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton2,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end
function pushbutton3_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a3=0;b3=0;
if(a1==0 & b1==1)
ac='O';
a3=a3+1;b1=0;
set(handles.pushbutton3,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b3=b3+1;a1=0;
set(handles.pushbutton3,'string',ab)

elseif(a2==0 & b2==1)
ac='O';
a3=a3+1;b2=0;
set(handles.pushbutton3,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b3=b3+1;a2=0;
set(handles.pushbutton3,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a3=a3+1;b4=0;
set(handles.pushbutton3,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b3=b3+1;a4=0;
set(handles.pushbutton3,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a3=a3+1;b5=0;
set(handles.pushbutton3,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b3=b3+1;a5=0;
set(handles.pushbutton3,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a3=a3+1;b6=0;
set(handles.pushbutton3,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b3=b3+1;a6=0;
set(handles.pushbutton3,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a3=a3+1;b7=0;
set(handles.pushbutton3,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b3=b3+1;a7=0;
set(handles.pushbutton3,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a3=a3+1;b8=0;
set(handles.pushbutton3,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b3=b3+1;a8=0;
set(handles.pushbutton3,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a3=a3+1;b9=0;
set(handles.pushbutton3,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b3=b3+1;a9=0;
set(handles.pushbutton3,'string',ab)
elseif(a3==0 & b3==0)
 ab='X';
 b3=b3+1;b3=1;
set(handles.pushbutton3,'string',ab)
x=0;y=0;z=0;

end
%checking for winner.
if(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton2,'string')=='X' &...
        get(handles.pushbutton3,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton2,'string')=='O' &...
        get(handles.pushbutton3,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton7,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton3,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton7,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton3,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

elseif(get(handles.pushbutton3,'string')=='X' & get(handles.pushbutton6,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton3,'string')=='O' & get(handles.pushbutton6,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end
%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a4=0;b4=0;
if(a1==0 & b1==1)
ac='O';
a4=a4+1;b1=0;
set(handles.pushbutton4,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b4=b4+1;a1=0;
set(handles.pushbutton4,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a4=a4+1;b3=0;
set(handles.pushbutton4,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b4=b4+1;a3=0;
set(handles.pushbutton4,'string',ab)
elseif(a2==0 & b2==1)
ac='O';
a4=a4+1;b2=0;
set(handles.pushbutton4,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b4=b4+1;a2=0;
set(handles.pushbutton4,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a3=a4+1;b5=0;
set(handles.pushbutton4,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b4=b4+1;a5=0;
set(handles.pushbutton4,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a4=a4+1;b6=0;
set(handles.pushbutton4,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b4=b4+1;a6=0;
set(handles.pushbutton4,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a4=a4+1;b7=0;
set(handles.pushbutton4,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b4=b4+1;a7=0;
set(handles.pushbutton4,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a4=a4+1;b8=0;
set(handles.pushbutton4,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b4=b4+1;a8=0;
set(handles.pushbutton4,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a4=a4+1;b9=0;
set(handles.pushbutton4,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b4=b4+1;a9=0;
set(handles.pushbutton4,'string',ab)
elseif(a4==0 & b4==0)
 ab='X';
 b4=b4+1;b4=1;
set(handles.pushbutton4,'string',ab)
end
%checking for winner.
if(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton4,'string')=='X' &...
        get(handles.pushbutton7,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton4,'string')=='O' &...
        get(handles.pushbutton7,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton4,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton6,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton4,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton6,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end
function pushbutton5_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a5=0;b5=0;
if(a1==0 & b1==1)
ac='O';
a5=a5+1;b1=0;
set(handles.pushbutton5,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b5=b5+1;a1=0;
set(handles.pushbutton5,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a5=a5+1;b3=0;
set(handles.pushbutton5,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b5=b5+1;a3=0;
set(handles.pushbutton5,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a5=a5+1;b4=0;
set(handles.pushbutton5,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b5=b5+1;a4=0;
set(handles.pushbutton5,'string',ab)
elseif(a2==0 & b2==1)
ac='O';
a3=a4+1;b2=0;
set(handles.pushbutton5,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b5=b5+1;a2=0;
set(handles.pushbutton5,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a5=a5+1;b6=0;
set(handles.pushbutton5,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b5=b5+1;a6=0;
set(handles.pushbutton5,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a5=a5+1;b7=0;
set(handles.pushbutton5,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b5=b5+1;a7=0;
set(handles.pushbutton5,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a5=a5+1;b8=0;
set(handles.pushbutton5,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b5=b5+1;a8=0;
set(handles.pushbutton5,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a5=a5+1;b9=0;
set(handles.pushbutton5,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b5=b5+1;a9=0;
set(handles.pushbutton5,'string',ab)
elseif(a5==0 & b5==0)
 ab='X';
 b5=b5+1;b5=1;
set(handles.pushbutton5,'string',ab)
end

%checking for winner.
if(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton2,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton8,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton2,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton8,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

elseif(get(handles.pushbutton3,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton7,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton3,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton7,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

elseif(get(handles.pushbutton4,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton6,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton4,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton6,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 
end

function pushbutton6_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a6=0;b6=0;
if(a1==0 & b1==1)
ac='O';
a6=a6+1;b1=0;
set(handles.pushbutton6,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b6=b6+1;a1=0;
set(handles.pushbutton6,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a6=a6+1;b3=0;
set(handles.pushbutton6,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b6=b6+1;a3=0;
set(handles.pushbutton6,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a6=a6+1;b4=0;
set(handles.pushbutton6,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b6=b6+1;a4=0;
set(handles.pushbutton6,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a3=a4+1;b5=0;
set(handles.pushbutton6,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b6=b6+1;a5=0;
set(handles.pushbutton6,'string',ab)

elseif(a2==0 & b2==1)
ac='O';
a6=a6+1;b2=0;
set(handles.pushbutton6,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b6=b6+1;a2=0;
set(handles.pushbutton6,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a6=a6+1;b7=0;
set(handles.pushbutton6,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b6=b6+1;a7=0;
set(handles.pushbutton6,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a6=a6+1;b8=0;
set(handles.pushbutton6,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b6=b6+1;a8=0;
set(handles.pushbutton6,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a6=a6+1;b9=0;
set(handles.pushbutton6,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b6=b6+1;a9=0;
set(handles.pushbutton6,'string',ab)
elseif(a6==0 & b6==0)
 ab='X';
 b6=b6+1;b6=0;
set(handles.pushbutton6,'string',ab)
end
if(get(handles.pushbutton4,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton6,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton4,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton6,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton3,'string')=='X' & get(handles.pushbutton6,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton7,'string')=='O' & get(handles.pushbutton6,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end

function pushbutton7_Callback(hObject, eventdata, handles)

global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a7=0;b7=0;
if(a1==0 & b1==1)
ac='O';
a7=a7+1;b1=0;
set(handles.pushbutton7,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b7=b7+1;a1=0;
set(handles.pushbutton7,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a7=a7+1;b3=0;
set(handles.pushbutton7,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b7=b7+1;a3=0;
set(handles.pushbutton7,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a7=a7+1;b4=0;
set(handles.pushbutton7,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b7=b7+1;a4=0;
set(handles.pushbutton7,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a3=a4+1;b5=0;
set(handles.pushbutton7,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b7=b7+1;a5=0;
set(handles.pushbutton7,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a7=a7+1;b6=0;
set(handles.pushbutton7,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b7=b7+1;a6=0;
set(handles.pushbutton7,'string',ab)

elseif(a2==0 & b2==1)
ac='O';
a7=a7+1;b2=0;
set(handles.pushbutton7,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b7=b7+1;a2=0;
set(handles.pushbutton7,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a7=a7+1;b8=0;
set(handles.pushbutton7,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b7=b7+1;a8=0;
set(handles.pushbutton7,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a7=a7+1;b9=0;
set(handles.pushbutton7,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b7=b7+1;a9=0;
set(handles.pushbutton7,'string',ab)
elseif(a7==0 & b7==0)
 ab='X';
 b7=b7+1;b7=1;
set(handles.pushbutton7,'string',ab)
end

if(get(handles.pushbutton7,'string')=='X' & get(handles.pushbutton8,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton7,'string')=='O' & get(handles.pushbutton8,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton4,'string')=='X' &...
        get(handles.pushbutton7,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton4,'string')=='O' &...
        get(handles.pushbutton7,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

elseif(get(handles.pushbutton3,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton7,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton3,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton7,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end
function pushbutton8_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a8=0;b8=0;
if(a1==0 & b1==1)
ac='O';
a8=a8+1;b1=0;
set(handles.pushbutton8,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b8=b8+1;a1=0;
set(handles.pushbutton8,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a8=a8+1;b3=0;
set(handles.pushbutton8,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b8=b8+1;a3=0;
set(handles.pushbutton8,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a8=a8+1;b4=0;
set(handles.pushbutton8,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b8=b8+1;a4=0;
set(handles.pushbutton8,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a3=a4+1;b5=0;
set(handles.pushbutton8,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b8=b8+1;a5=0;
set(handles.pushbutton8,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a8=a8+1;b6=0;
set(handles.pushbutton8,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b8=b8+1;a6=0;
set(handles.pushbutton8,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a8=a8+1;b7=0;
set(handles.pushbutton8,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b8=b8+1;a7=0;
set(handles.pushbutton8,'string',ab)

elseif(a2==0 & b2==1)
ac='O';
a8=a8+1;b2=0;
set(handles.pushbutton8,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b8=b8+1;a2=0;
set(handles.pushbutton8,'string',ab)

elseif(a9==0 & b9==1)
ac='O';
a8=a8+1;b9=0;
set(handles.pushbutton8,'string',ac)
elseif(a9==1 & b9==0)
 ab='X';
 b8=b8+1;a9=0;
set(handles.pushbutton8,'string',ab)
elseif(a8==0 & b8==0)
 ab='X';
 b8=b8+1;b8=1;
set(handles.pushbutton8,'string',ab)
end
if(get(handles.pushbutton2,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton5,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton2,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton8,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton7,'string')=='X' & get(handles.pushbutton8,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton7,'string')=='O' & get(handles.pushbutton8,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end

function pushbutton9_Callback(hObject, eventdata, handles)
global a1; global a2; global a3; global a4;global a5;global a6;global a7;global a8,global a9;
global b1; global b2; global b3; global b4;global b5;global b6;global b7;global b8,global b9;
a9=0;b9=0;
if(a1==0 & b1==1)
ac='O';
a9=a9+1;b1=0; 
set(handles.pushbutton9,'string',ac)
elseif(a1==1 & b1==0)
 ab='X';
 b9=b9+1;a1=0;
set(handles.pushbutton9,'string',ab)

elseif(a3==0 & b3==1)
ac='O';
a9=a9+1;b3=0; 
set(handles.pushbutton9,'string',ac)
elseif(a3==1 & b3==0)
 ab='X';
 b9=b9+1;a3=0;
set(handles.pushbutton9,'string',ab)
elseif(a4==0 & b4==1)
ac='O';
a9=a9+1;b4=0; 
set(handles.pushbutton9,'string',ac)
elseif(a4==1 & b4==0)
 ab='X';
 b9=b9+1;a4=0;
set(handles.pushbutton9,'string',ab)
elseif(a5==0 & b5==1)
ac='O';
a3=a4+1;b5=0;
set(handles.pushbutton9,'string',ac)
elseif(a5==1 & b5==0)
 ab='X';
 b9=b9+1;a5=0;
set(handles.pushbutton9,'string',ab)

elseif(a6==0 & b6==1)
ac='O';
a9=a9+1;b6=0; 
set(handles.pushbutton9,'string',ac)
elseif(a6==1 & b6==0)
 ab='X';
 b9=b9+1;a6=0;
set(handles.pushbutton9,'string',ab)

elseif(a7==0 & b7==1)
ac='O';
a9=a9+1;b7=0; 
set(handles.pushbutton9,'string',ac)
elseif(a7==1 & b7==0)
 ab='X';
 b9=b9+1;a7=0;
set(handles.pushbutton9,'string',ab)

elseif(a8==0 & b8==1)
ac='O';
a9=a9+1;b8=0; 
set(handles.pushbutton9,'string',ac)
elseif(a8==1 & b8==0)
 ab='X';
 b9=b9+1;a8=0;
set(handles.pushbutton9,'string',ab)

elseif(a2==0 & b2==1)
ac='O';
a9=a9+1;b2=0; 
set(handles.pushbutton9,'string',ac)
elseif(a2==1 & b2==0)
 ab='X';
 b9=b9+1;a2=0;
set(handles.pushbutton9,'string',ab)
elseif(a9==0 & b9==0)
 ab='X';
 b9=b9+1;b9=1;
set(handles.pushbutton9,'string',ab)
end
%checking for winner.
if(get(handles.pushbutton7,'string')=='X' & get(handles.pushbutton8,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton7,'string')=='O' & get(handles.pushbutton8,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner');   

elseif(get(handles.pushbutton1,'string')=='X' & get(handles.pushbutton5,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton1,'string')=='O' & get(handles.pushbutton5,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

elseif(get(handles.pushbutton3,'string')=='X' & get(handles.pushbutton6,'string')=='X' &...
        get(handles.pushbutton9,'string')=='X')
f = msgbox('     Congrats X !!    ','Winner');
elseif(get(handles.pushbutton3,'string')=='O' & get(handles.pushbutton6,'string')=='O' &...
        get(handles.pushbutton9,'string')=='O')
f = msgbox('     Congrats O !!    ','Winner'); 

end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
close all;
ticTacToe
