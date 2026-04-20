@echo off
echo Starting commit script...

:: Create temporary files and make commits
for /l %%i in (1,1,30) do (
    echo Creating temporary file %%i...
    echo Content for commit %%i > temp_file_%%i.txt
    echo Timestamp: %%i >> temp_file_%%i.txt
    
    git add temp_file_%%i.txt
    
    if %%i==1 set "msg=Initial project setup"
    if %%i==2 set "msg=Add main structure"
    if %%i==3 set "msg=Update index page"
    if %%i==4 set "msg=Add navigation menu"
    if %%i==5 set "msg=Implement hero section"
    if %%i==6 set "msg=Add destination cards"
    if %%i==7 set "msg=Update footer design"
    if %%i==8 set "msg=Add contact form"
    if %%i==9 set "msg=Implement gallery section"
    if %%i==10 set "msg=Add team members"
    if %%i==11 set "msg=Update styling"
    if %%i==12 set "msg=Add blog section"
    if %%i==13 set "msg=Fix responsive issues"
    if %%i==14 set "msg=Add animations"
    if %%i==15 set "msg=Update meta tags"
    if %%i==16 set "msg=Add social links"
    if %%i==17 set "msg=Implement search functionality"
    if %%i==18 set "msg=Add testimonials"
    if %%i==19 set "msg=Update color scheme"
    if %%i==20 set "msg=Add booking form"
    if %%i==21 set "msg=Fix navigation bugs"
    if %%i==22 set "msg=Add mobile menu"
    if %%i==23 set "msg=Update typography"
    if %%i==24 set "msg=Add loading animations"
    if %%i==25 set "msg=Implement filters"
    if %%i==26 set "msg=Add map integration"
    if %%i==27 set "msg=Update footer layout"
    if %%i==28 set "msg=Add newsletter signup"
    if %%i==29 set "msg=Fix accessibility issues"
    if %%i==30 set "msg=Add error pages"
    
    git commit -m "!msg"
    echo Commit %%i/30: !msg
)

:: Clean up temporary files
echo Cleaning up temporary files...
for /l %%i in (1,1,30) do (
    git rm temp_file_%%i.txt
)

git commit -m "Clean up temporary files"

echo All commits completed!
pause
