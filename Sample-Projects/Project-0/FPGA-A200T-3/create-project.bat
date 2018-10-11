@ECHO OFF
SET NEED_VIVADO_VERSION=2018.2
SET vivado=C:\Xilinx\Vivado\%NEED_VIVADO_VERSION%\bin\vivado.bat
if exist %vivado% (
  %vivado% -mode batch -source create-project.tcl
) else (
  ECHO %vivado% not found. 
  ECHO Make sure you have Vivado %NEED_VIVADO_VERSION% installed
  pause
)
