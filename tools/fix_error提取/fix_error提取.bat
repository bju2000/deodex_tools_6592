@echo off
color 1e
echo.
echo ����adb�С�������
echo.
adb\adb kill-server
adb\adb start-server
echo.
echo ���ڵȴ��ֻ�����
adb\adb wait-for-device
echo.
echo ���������ļ�
adb\adb push deodexerant /data/local/tmp/
adb\adb shell chmod 755 /data/local/tmp/deodexerant
echo.
echo ������ȡfix_error
adb\adb shell /data/local/tmp/deodexerant > fix_error
echo.
echo ��ȡ���
echo. 
pause