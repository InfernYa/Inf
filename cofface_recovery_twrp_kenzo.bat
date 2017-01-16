@echo off
TITLE ����魨� ��訢���騪� recovery TWRP �� cofface ��� Redmi Note 3 Pro (kenzo)
color 3f
echo.
ECHO. ===========================================================================
echo.
echo   �� ᮡ�ࠥ��� ����� recovery TWRP ��� Redmi Note 3 Pro (kenzo)
echo.
echo.  ���� ࠧࠡ��稪�: weibo.com/cofface,
echo.  ��ॢ�� � ���������� �ਯ� �� ���짮��⥫� MrEagle, 4pda.ru
echo.
echo   - �᫨ �� �� ��� ��訢��� recovery TWRP, ��������, ���ன� �� ����!
echo.
echo   - � ��⨢��� ��砥, ������ ���� ������� ��� �த�������
echo.
ECHO. ===========================================================================
pause >nul
CLS
ECHO. ===========================================================================
echo.
echo   ������ �������ᠭ�� ����⢨�, �⮡� ���� � ०�� fastboot:
echo.
echo.    1. �� �����, � ��� ������ ���� ࠧ�����஢���� �����稪 (bootloader)
echo.
echo.    2. �몫��� ᬠ��䮭. ������ � ����� 㤥ন���� ������
echo.       "��������� ���������" � "���������"
echo.
echo     3. �� �࠭� ����� �஫��, ६������騩 ஡��
echo.
echo.    4. �믮���� ����⢨�, ���ᠭ�� ���, �������� ��� ᬠ��䮭
echo.       � ��������� � ������ ���� ������� ��� �த�������
echo.
echo.    5. �롥�� ���� �� ��ਠ�⮢:
echo.         1: �� ��� ����� TWRP �� ����ﭭ�� �᭮��
echo.         2: �� ��� ⮫쪮 �������� �����㧨�� TWRP
echo. 
echo     - �᫨ �� �� ��� ��祣� ������ � recovery, ��������, ���ன� �� ����!
echo.
:vibor
set /p param="������ ��� ��ਠ�� (1 ��� 2): "
if "%param%"=="1" goto :next
if "%param%"=="2" goto :next
goto :vibor
:next
echo.
echo.    �� ��ࠫ� ��ਠ�� "%param%":
if "%param%"=="1" echo     ����� TWRP �� ����ﭭ�� �᭮��
if "%param%"=="2" echo     �������� �����㧨�� TWRP
echo.
echo.    ��� �த������� ������ ���� �������...
pause >nul
echo.
echo.
ECHO. ===========================================================================
CLS
ECHO. ===========================================================================
echo.
echo.
echo    ���� �� ������ 㢨���� �ਬ�୮ ᫥������ ��ப�
echo    (��� � ��砫� � ��� �㤥� ��㣨�):
echo.
echo.
echo         e5435c2d7d62 fastboot
echo.
echo.
echo    �᫨ �� �ᯥ譮 �믮����� �� ����⢨�, ������稫� ᬠ��䮭
echo    � ��������� � ���� ������ ᮮ�饭��, �������筮� ��襭���ᠭ����,
echo    � ������ ���� �������, �⮡� ����� ����� ��訢�� recovery TWRP
echo.
echo    � ��⨢��� ��砥, ��������, ���ன� �� ���� � �஢����,
echo    �ࠢ��쭮 �� ��⠭������ �� �ࠩ��� � ᬠ��䮭 ������祭 ��୮
echo.
echo    ��। ���쭥�訬� ����⢨ﬨ, ��易⥫쭮 㡥�����,
echo    �� �������� � ᬠ��䮭 ᮥ������ �ࠢ��쭮!
echo.
ECHO. ===========================================================================
echo.
echo.
fastboot.exe devices
echo.
echo.    �᫨ �� ��୮, � ������ ���� �������,
echo.    �⮡� ����� ����� ��訢��/�����㧪� recovery TWRP...
pause >nul
if  "%param%"=="1" goto :flash
if  "%param%"=="2" goto :boot
:flash
CLS
ECHO. ===========================================================================
echo.
echo.
echo    ������ � ��� ������ �⮡ࠧ����� �ਬ�୮ ᫥���饥:
echo.
echo.
echo.   sending 'recovery' (38174 KB)...
echo.   OKAY [  0.500s]
echo.   writing 'recovery'...
echo.   OKAY [  0.560s]
echo.   finished. total time: 2.455s
echo.
echo    �᫨ �� 㢨���� ���� �ਬ�୮ ⠪�� �� ᮮ�饭��,
echo.   � ������ ���� ������� ��� ����᪠ recovery TWRP...
ECHO. ===========================================================================
echo.
echo.
fastboot.exe flash recovery cofface_recovery_twrp_kenzo.img
echo.
echo   �᫨ �� ��୮, � TWRP 㦥 ���� �� ����ﭭ�� �᭮�� � ��� ᬠ��䮭
echo.
echo.  ������ ���� ������� ��� ��१���㧪� ᬠ��䮭� � recovery TWRP...
pause >nul
:boot
CLS
ECHO. ===========================================================================
echo.
echo    ����� � ��� ������ �⮡ࠧ����� �ਬ�୮ ᫥���饥:
echo.
echo.   downloading 'boot.img'...
echo.   OKAY [  0.838s]
echo.   booting...
echo.   OKAY [  0.025s]
echo.   finished. total time: 0.864s
echo.
echo    �᫨ �� 㢨���� ���� �ਬ�୮ ⠪�� �� ᮮ�饭��, ����� ��訢�� ��諠 �ᯥ譮
echo    � �� �࠭� ᬠ��䮭� ������ �� �⮡ࠧ����� ����䥩� TWRP
echo.
ECHO. ===========================================================================
echo.
echo.
fastboot.exe boot cofface_recovery_twrp_kenzo.img
echo.
echo    �᫨ �� ��୮, � �� �࠭� ᬠ��䮭� ������ �� �⮡ࠧ����� ����䥩� TWRP.
echo    �᫨ �� ⠪, � � ��� ����ࠢ���, �� �ᯥ譮 ��訫�/�����㧨�� TWRP!
echo.
echo    �᫨ �� �࠭� �⮡ࠦ����� �� ������ ��� �� ����䥩� TWRP,
echo    � ������ �� �ࠢ�� ������ (�� �� �࠭� ᬠ��䮭� � ��� ᪮॥ �ᥣ� ⮫쪮 ���)
echo    � �롥�� �㦭� ��� �� �� ᯨ᪠.
echo.
echo    ������ ���� �������, �⮡� ������� �� ����...
pause >nul