# PSAutomationScripts
Currently a work in progress.
In here i'll be storing my powershell scripts I created to automate tasks within my environment.

# ConnectionToServerTest.ps1
This script serves as a tool to test if all endpoints connected to a domain controller can connect to it.

*To Do List:*
-  Upgrade the script so it reads endpoint names from a txt file for more flexible use. *DONE*
-  Use error handling to display a custom error. *DONE*
    - Done to address a nonterminating error in order to make the UI more clean.
 
# PostureCheck.ps1
This is a script I made that I configured to run every 5 minutes that reminds me to fix my posture, it uses 2 different kind of messages that will randomly be chosen. I used the Burnt-Toast module to build this

# PortChecker.ps1
This script serves as a tool to find any open ports that may be security risks

*To Do List:*
-    I want to make the script more flexible with what subnet sizes a user chooses.
-    Allow user to scan multiple ports at once
