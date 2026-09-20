@echo off
echo ===============================
echo   Opening Edge, Chrome, Notes, WordPad Docs, (TEKION UPDATE)
echo ===============================

REM ---- OPEN CHROME WITH 5 TABS ----
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://outlook.office365.com/"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://secure.simplepart.com/manage/home.aspx"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://www.paypal.com/signin?returnUri=https%3A%2F%2Fwww.paypal.com%2Fmep%2F"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://ship3.shipstation.com/home"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://as.na.nissan.biz/SecureAuth71/SecureAuth.aspx"

REM ---- OPEN TEKION WITH EDGE ----
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://app.tekioncloud.com/home"
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://app.tekioncloud.com/parts/sales-order"

REM ---- OPEN STICKY NOTES (using your .lnk file) ----
start "" "C:\Users\User\Documents\templates\Sticky Notes"

REM ---- OPEN WORDPAD DOCS ----
start "" "C:\Users\User\Documents\templates\xxxxx STICKY NOTES TEMPLATES.docx"
start "" "C:\Users\User\Documents\templates\BACKORDER.docx"

echo All apps launched WELCOME TO WORK xxxxx!
