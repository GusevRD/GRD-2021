@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" x86
"C:\Users\gimso\source\repos\GRD-2021\Debug\GRD-2021.exe" -in:"C:\Users\gimso\source\repos\GRD-2021\Debug\in.txt"
ml /c /coff /Zi "C:\Users\gimso\source\repos\GRD-2021\GenCode\GeneratedAsm.asm"
link /OPT:NOREF /DEBUG /SUBSYSTEM:CONSOLE MASMStaticLib.lib GeneratedAsm.obj
GeneratedAsm.exe
pause