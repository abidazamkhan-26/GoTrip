@echo off
echo Making 30 commits...

git add .
git commit -m "Initial project setup"

echo test > file1.txt
git add file1.txt
git commit -m "Add first test file"

echo test > file2.txt
git add file2.txt
git commit -m "Add second test file"

echo test > file3.txt
git add file3.txt
git commit -m "Add third test file"

echo test > file4.txt
git add file4.txt
git commit -m "Add fourth test file"

echo test > file5.txt
git add file5.txt
git commit -m "Add fifth test file"

echo test > file6.txt
git add file6.txt
git commit -m "Add sixth test file"

echo test > file7.txt
git add file7.txt
git commit -m "Add seventh test file"

echo test > file8.txt
git add file8.txt
git commit -m "Add eighth test file"

echo test > file9.txt
git add file9.txt
git commit -m "Add ninth test file"

echo test > file10.txt
git add file10.txt
git commit -m "Add tenth test file"

echo test > file11.txt
git add file11.txt
git commit -m "Add eleventh test file"

echo test > file12.txt
git add file12.txt
git commit -m "Add twelfth test file"

echo test > file13.txt
git add file13.txt
git commit -m "Add thirteenth test file"

echo test > file14.txt
git add file14.txt
git commit -m "Add fourteenth test file"

echo test > file15.txt
git add file15.txt
git commit -m "Add fifteenth test file"

echo test > file16.txt
git add file16.txt
git commit -m "Add sixteenth test file"

echo test > file17.txt
git add file17.txt
git commit -m "Add seventeenth test file"

echo test > file18.txt
git add file18.txt
git commit -m "Add eighteenth test file"

echo test > file19.txt
git add file19.txt
git commit -m "Add nineteenth test file"

echo test > file20.txt
git add file20.txt
git commit -m "Add twentieth test file"

echo test > file21.txt
git add file21.txt
git commit -m "Add twenty-first test file"

echo test > file22.txt
git add file22.txt
git commit -m "Add twenty-second test file"

echo test > file23.txt
git add file23.txt
git commit -m "Add twenty-third test file"

echo test > file24.txt
git add file24.txt
git commit -m "Add twenty-fourth test file"

echo test > file25.txt
git add file25.txt
git commit -m "Add twenty-fifth test file"

echo test > file26.txt
git add file26.txt
git commit -m "Add twenty-sixth test file"

echo test > file27.txt
git add file27.txt
git commit -m "Add twenty-seventh test file"

echo test > file28.txt
git add file28.txt
git commit -m "Add twenty-eighth test file"

echo test > file29.txt
git add file29.txt
git commit -m "Add twenty-ninth test file"

echo test > file30.txt
git add file30.txt
git commit -m "Add thirtieth test file"

del file*.txt
git add .
git commit -m "Clean up test files"

echo Done! 30+ commits created.
pause
