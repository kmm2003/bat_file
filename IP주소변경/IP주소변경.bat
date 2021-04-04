@echo off
color 0a
echo
echo                            *사용자 인터페이스*
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
netsh interface ipv4 show addresses
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo 주의사항) 인터페이스명 입력시에는 ""까지 입력해주셔야합니다.
echo .
set /p name=사용자 인터페이스 좌측 상단에 써있는 인터페이스명을 입력해주세요. ex) "이더넷 2" :
echo .
set /p ip=변경하실 ip 주소를 입력해주세요 :
echo .
set /p gateway=게이트웨이 주소를 입력해주세요 :
echo .
set /p subnet=서브넷마스크를 입력해주세요 : 
netsh interface ipv4 set address %name% static %ip% %subnet% %gateway%
cd C:\
erase "IP주소변경.bat"
cls
echo 변경이 완료되었습니다!
pause
