nasm -f win64 -o %~n1.obj "%1"

gcc  %~n1.obj -o %~n1.exe

cls

%~n1.exe