@echo on
go build -ldflags "-s -w -H=windowsgui" -o hksplitmaker.exe github.com/CuteReimu/hksplitmaker || exit
upx -1 hksplitmaker.exe
set zipname=��ʱ��������.zip
if exist %zipname% (
    del /F %zipname%
)
C:\Progra~1\WinRAR\Rar.exe a -r %zipname% hk-split-maker\src\asset\hollowknight\categories hk-split-maker\src\asset\hollowknight\icons hk-split-maker\src\asset\hollowknight\splits.txt LICENSE README.md hksplitmaker.exe translate.tsv
