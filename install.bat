::  ____       _       _      __  __      
:: |  _ \ _ __(_)_ __ | | __ |  \/  | ___ 
:: | | | | '__| | '_ \| |/ / | |\/| |/ _ \
:: | |_| | |  | | | | |   <  | |  | |  __/
:: |____/|_|  |_|_| |_|_|\_\ |_|  |_|\___|

:: This Windows batch script installs Linux
:: JupyterLab on your Windows 10 or 11 laptop.

:: It's best to install Ubuntu 20.04 from the
:: Windows Store first, then run this script.

:: Save & Run this .bat on your Desktop for
:: JupyterLab served at http://localhost:8888

:: - Always get the latest Python (3.11)
:: - Name installer 3.8.bat for Python 3.8
:: - Always get the latest JupyterLab (3.6)
:: - Exceed limits of cloud-host notebooks.
:: - Run the versions the Linux servers do.
:: - Automate Web browsers with Playwright.
:: - Cycle your IP with easy Windows VPN.
:: - Learn more at https://pipulate.com
::                    ___          
::                   |   |         _____  
::                   |_  |        /     \      
::                     \ |       |       \     
::                     |  \      |       /     
::                      \  \____ \_      \     
::                       \      \_/      |     
::                 ___.   \_            _/     
::.-,             /    \    |          |       
::|  \          _/      `--_/           \_     
:: \  \________/                     /\   \    
:: |                                /  \_  \   
:: `-----------,                   |     \  \  
::             |                  /       \  | 
::             |                 |         | \ 
::             /                 |         \__|
::            /   _              |             
::           /   / \_             \            
::           |  /    \__      __--`            
::          _/ /        \   _/                 
::      ___/  /          \_/                   
::     /     /                                 
::     `----`                                  
::
:: INSTRUCTIONS (SAVE AS .BAT)
:: Name file install.bat and save it to your Desktop.
:: Alternatively, name it 3.8.bat for Python 3.8
:: or any other version you want to install.

:: This is usually acomplished by visiting the URL:
:: https://raw.githubusercontent.com/miklevin/drinkme/main/install.bat
:: Right-clicking on the page and choosing Save As...
:: Then, in the Save As dialog, change the Save as
:: type: to All Files (*.*) and name the file install.bat
:: Then, click Save and you're ready to run it.
::
:: There can be challenges such as Windows Defender
:: SmartScreen blocking the file from running. If so,
:: you can right-click on the file and choose Run as
:: Administrator. You may also need to click More Info
:: and then Run Anyway. If you have any problems, you
:: can always contact me at https://pipulate.com
::
:: The reason for this novel approach is that Linux has
:: reached the point where you can have a "floating"
:: Linux environment that is not tied to a particular
:: computer and has all the advantages of the cloud
:: versions of Linux, but without the limitations. It
:: can also last you a lifetime, floating from one
:: computer to the next, as you upgrade your hardware
:: and operating systems. Stuff you make with it will
:: be compatible with the cloud versions, too.

REM Set up envioronment and parse opitonal arguemnts.
set drinkme=0.6.1
set python=3.11
@echo off
local
cls

REM get full path of current script
set "script_path=%~dpnx0"

REM get just the filename portion without extension
for %%I in ("%script_path%") do set "script_name=%%~nI"

REM set default Python version
set "version=%python%"

REM check for first command line argument
if not "%1" == "" (
    REM if argument has period in it, use it as version
    for %%I in ("%~1") do (
        if "%%~xI" neq "" set "version=%%~nI%%~xI"
    )
) else (
    REM if no argument, check if script name has period in it
    for %%I in ("%script_name%") do (
        if "%%~xI" neq "" set "version=%%~nI%%~xI"
    )
)
echo  This will install Ubuntu 20.04 and Python %version% using DrinkMe %drinkme%
:::rabbit:::                                                                        __        
:::rabbit::: Magic Trick Linux: Always Up Your Sleeve! - Use all the best versions/)  \ 
:::rabbit:::  _     _                 __     ____  __  - Free as in Libre  /)\___//    |
:::rabbit::: | |   (_)_ __  _   ___  _\ \   / /  \/  | - Normal paths  ___(/_ 0 0 |    |
:::rabbit::: | |   | | '_ \| | | \ \/ /\ \ / /| |\/| | - On Mac/Win  *(     =(_T_)=    |
:::rabbit::: | |___| | | | | |_| |>  <  \ V / | |  | | - Timeless      \  )   \"\ \    /
:::rabbit::: |_____|_|_| |_|\__,_/_/\_\  \_/  |_|  |_| - Mad skillz     |__>-\_>_> \__/ 
:::rabbit:::                                           
:::rabbit::: Use a Linux VM like a Java machine or a CSS reset. Normalize your code!
:::rabbit::: This script will install Linux under the Windows Subsystem for Linux (WSL2)
:::rabbit::: and use it to host JupterLab, accessible through your Windows browser at
:::rabbit::: http://localhost:8888 so all your Python code is standard and future-proof.
:::rabbit:::
:::rabbit::: It's best to install Ubuntu 20.04 from the Windows Store first, then run
:::rabbit::: this script. Save & Run this .bat on your Desktop for the ultimate portable
:::rabbit::: Linux environment that can float from computer to computer for a lifetime.
:::rabbit:::
:::rabbit::: This script will also install Python 3.11 and JupyterLab 3.6.
:::rabbit:::
:::rabbit::: If you want to install a different version of Python, you can do so by
:::rabbit::: renaming the install.bat file to 3.8.bat or 3.9.bat or 3.10.bat, etc.
:::rabbit:::
:::rabbit::: Mac Version:
:::rabbit::: Coming Soon!           Press [Enter] to JUMP DOWN THE LINUX RABBIT HOLE...
:::rabbit:::                                  (or press Ctrl+C escape.)      prompt 1/3
for /f "delims=: tokens=1*" %%A in ('findstr /b ":::rabbit:::" "%~f0"') do (echo.%%B)
set /p warning= %
:::unicorn:::
:::unicorn:::  Write once, Run Anywhere without the      
:::unicorn:::  need to modify your code for platforms     THE LINUX CAN BE INVISIBLE
:::unicorn:::  or production environments. You rarely     ___________________________ 
:::unicorn:::  actually need to see Linux. Just make     /                           \
:::unicorn:::  your Jupyter Notebooks "Linux standard"   |       Ridiculous!         |               
:::unicorn:::                                            |   There's no such thing.  |
:::unicorn:::                                            \___________________________/               
:::unicorn:::   Yes there is, Mr. Unicorn!                               ()     ,      
:::unicorn:::    ________________________     Here's how it works:         O    \\  .  
:::unicorn:::   |  Windows 10 or 11     |    ________________________       o   |\\/|  
:::unicorn:::   |     ____ ____         |   | * Magic Trick Linux * |          / " '\ 
:::unicorn:::   |  ,_/site\____\______. |   | (still your hardware) |  see!   . .   . 
:::unicorn:::   |  |                  | |   |   __________________  |< - - - /    ) | 
:::unicorn:::   |  |   WEB BROWSER    | |   |  |  screen sesion  |  |       '  _.'  | 
:::unicorn:::   |  | localhost:8888 <<---------->>Jupyter Server |  |       '-'/    \ 
:::unicorn:::   |__|                  |_|   |  |_________________|  |                 
:::unicorn:::      '------------------'     |_______________________|  No, not Docker
:::unicorn:::                                                         
:::unicorn:::   - Better than Jupyter-Desktop for portability    "The time has come to
:::unicorn:::   - Better than Anaconda for system automation     get on standard tools"
:::unicorn:::   - Better than Docker for ease & admin-ability    the Walrus never said.
:::unicorn:::   - Better than the Cloud for privacy, security    
:::unicorn:::     package availability & browser automation            - The Carpenter
:::unicorn:::                                                             
:::unicorn:::                      Press [Enter] to jump down the Linux rabbit hole...
:::unicorn:::                                (or press Ctrl+C escape.)      prompt 2/3
for /f "delims=: tokens=1*" %%A in ('findstr /b ":::unicorn:::" "%~f0"') do (echo.%%B)
set /p warning= %
:::warn::: _   _         _                    _               _                _    
:::warn:::| \ | | ___   | |_ _   _ _ __ _ __ (_)_ __   __ _  | |__   __ _  ___| | __
:::warn:::|  \| |/ _ \  | __| | | | '__| '_ \| | '_ \ / _` | | '_ \ / _` |/ __| |/ /
:::warn:::| |\  | (_) | | |_| |_| | |  | | | | | | | | (_| | | |_) | (_| | (__|   < 
:::warn:::|_| \_|\___/   \__|\__,_|_|  |_| |_|_|_| |_|\__, | |_.__/ \__,_|\___|_|\_\
:::warn::: - This will uninstall previous Ubuntu-20.04|___/under WSL   <-- IMPORTANT
:::warn:::                                                                       __ 
:::warn::: - A new Ubuntu 20.04 will be installed REPLACING THE DEFAULT!!!      /  \
:::warn::: - OTHER LINUXES running under WSL are LEFT UNTOUCHED.               |/)\_|
:::warn::: - JupyterLab will be reachable at http://localhost:8888          ___(/_ 0|
:::warn:::                                                                *(     =(_|
:::warn::: THE RULES OF WONDERLAND:                                         \  )   \/
:::warn::: - A "Linux Shell" icon will appear where you run the installer.   |__>-_/
:::warn::: - Double-clicking it will open a Terminal, ensuring Linux is rrrrrunning!
:::warn::: - The Terminal, a.k.a. Shell or command-line currently MUST be opened
:::warn:::   AT LEAST ONCE before visiting http://localhost:8888 in a browser.
:::warn::: - The Linux Terminal CAN BE CLOSED immediately after opening.
:::warn::: - Enjoy a genuine Linux Python experience in your browser!
:::warn:::                                                                         
:::warn::: GETTING A COOL JUPYTER ICON:                                                 
:::warn::: - You can create a JupyterLab icon on your Desktop through Microsoft    
:::warn:::   Edge browser by clicking the "..." menu in the upper right corner     
:::warn:::   and selecting "Apps > Install this site as an app".
:::warn::: - Change the icon to jupyter.ico found in the DrinkMe repo.
:::warn:::
:::warn:::                      Press [Enter] to jump down the Linux rabbit hole...
:::warn:::                                (or press Ctrl+C escape.)      prompt 3/3
for /f "delims=: tokens=1*" %%A in ('findstr /b ":::warn:::" "%~f0"') do (echo.%%B)

set /p warning= %
:::down:::                                         ___             
:::down:::                                        |   |         _____  
:::down:::                                        |_  |        /     \      
:::down:::                                          \ |       |       \     
:::down:::                                          |  \      |       /     
:::down:::                                           \  \____ \_      \     
:::down:::                                            \      \_/      |     
:::down:::                                      ___.   \_            _/     
:::down:::                     .-,             /    \    |          |       
:::down:::                     |  \          _/      `--_/           \_     
:::down:::                      \  \________/                     /\   \    
:::down:::                      |                                /  \_  \   
:::down:::                      `-----------,                   |     \  \  
:::down:::                                  |                  /       \  | 
:::down:::                                  |                 |         | \ 
:::down:::                                  /                 |         \__|
:::down:::                                 /   _              |             
:::down:::                                /   / \_             \            
:::down:::                                |  /    \__      __--`            
:::down:::                               _/ /        \   _/                 
:::down:::                           ___/  /          \_/                   
:::down:::                          /     /                                 
:::down:::                          `----`                                  
:::down:::           
:::down::: You're falling down the rabbit hole. Please have patience and be brave!
for /f "delims=: tokens=1*" %%A in ('findstr /b ":::down:::" "%~f0"') do (echo.%%B)
echo  Dropping: Ubuntu 20.04, Python %version%, DrinkMe %drinkme%... Wonderland awaits!

wsl --unregister Ubuntu-20.04 >nul
wsl --set-default-version 2 >nul

REM These are variables for the automatically created Ubuntu 20.04 user under WSL.
set wsluser="ubuntu"
set password="foo"

REM The big install! If it's your first time, it will make you reboot your machine.
ubuntu2004 install --root >nul

REM Once Ubuntu 20.04 is installed, this sets up the default user.
wsl -d Ubuntu-20.04 -u root useradd -m "%wsluser%" >nul 2>&1
wsl -d Ubuntu-20.04 -u root sh -c "echo "%wsluser%:%password%" | chpasswd" >nul 2>&1
wsl -d Ubuntu-20.04 -u root chsh -s /bin/bash "%wsluser%" >nul
wsl -d Ubuntu-20.04 -u root usermod -aG adm,cdrom,sudo,dip,plugdev,lxd "%wsluser%" >nul 2>&1
ubuntu2004 config --default-user "%wsluser%" >nul

REM This creates "repos" folder in your Windows HOME for Windows/Linux file sharing.
if not exist "%USERPROFILE%\repos" mkdir %USERPROFILE%\repos >nul 2>&1
if not exist "%USERPROFILE%\repos" mkdir %USERPROFILE%\repos >nul 2>&1
if not exist "%USERPROFILE%\repos\transfer" mkdir %USERPROFILE%\repos\transfer >nul 2>&1
if not exist "%USERPROFILE%\.wslconfig" curl -sL -o %USERPROFILE%\.wslconfig "https://raw.githubusercontent.com/miklevin/drinkme/main/.wslconfig" >nul 2>&1
if not exist "%USERPROFILE%\.jupyter" mkdir %USERPROFILE%\.jupyter >nul 2>&1
if not exist "%USERPROFILE%\.config" mkdir %USERPROFILE%\.config >nul 2>&1
curl -sL -o %USERPROFILE%\repos\transfer\wsl.conf "https://raw.githubusercontent.com/miklevin/drinkme/main/wsl.conf" >nul 2>&1
curl -sL -o %USERPROFILE%\.config\bash.ico "https://raw.githubusercontent.com/miklevin/drinkme/main/icons/bash.ico" >nul 2>&1

REM Put the WSL config files in place.
wsl -d Ubuntu-20.04 -u root cp "/mnt/c/Users/%USERNAME%/repos/transfer/wsl.conf" /etc/wsl.conf

REM If you're running from a location with these optional second-stage install files, copy them over.
if exist apt_installs.sh (copy apt_installs.sh %USERPROFILE%\repos\transfer > nul 2>&1) else (curl -L -o %USERPROFILE%\repos\transfer\apt_installs.sh "https://raw.githubusercontent.com/miklevin/drinkme/main/apt_installs.sh" > nul 2>&1)
if exist requirements.txt (copy requirements.txt %USERPROFILE%\repos\transfer > nul 2>&1) else (curl -L -o %USERPROFILE%\repos\transfer\requirements.txt "https://raw.githubusercontent.com/miklevin/drinkme/main/requirements.txt" >nul 2>&1)

REM This stops and restarts like a wsl --shutdown to activate systemd and metadata options.
wsl -t Ubuntu-20.04 >nul 2>&1

:: Create symbolic links from Windows paths to WSL paths.
wsl -d Ubuntu-20.04 -e bash -lic "ln -s /mnt/c/Users/%USERNAME%/.ssh/ /home/ubuntu/.ssh && ln -s /mnt/c/Users/%USERNAME%/repos/ /home/ubuntu/repos && ln -s /mnt/c/Users/%USERNAME%/.config/ /home/ubuntu/.config && ln -s /mnt/c/Users/%USERNAME%/.jupyter/ /home/ubuntu/.jupyter" >nul 2>&1

if exist %USERPROFILE%\.vimrc (wsl -d Ubuntu-20.04 -e bash -lic "cp /mnt/c/Users/%USERNAME%/.vimrc /home/ubuntu/" >nul 2>&1) else (curl -L -o %USERPROFILE%\.vimrc "https://raw.githubusercontent.com/miklevin/drinkme/main/.vimrc" >nul 2>&1)
if exist %USERPROFILE%\.gitconfig (wsl -d Ubuntu-20.04 -e bash -lic "cp /mnt/c/Users/%USERNAME%/.gitconfig /home/ubuntu/" >nul 2>&1) else (curl -L -o %USERPROFILE%\.gitconfig "https://raw.githubusercontent.com/miklevin/drinkme/main/.gitconfig" >nul 2>&1)
if exist %USERPROFILE%\.pypirc (wsl -d Ubuntu-20.04 -e bash -lic "cp /mnt/c/Users/%USERNAME%/.pypirc /home/ubuntu/" >nul 2>&1) else (curl -L -o %USERPROFILE%\.pypirc "https://raw.githubusercontent.com/miklevin/drinkme/main/.pypirc" >nul 2>&1)

:: We update the software repository on the Ubuntu 20.04 Machine
echo  You have plenty of time to look around and wonder what will happen next.
wsl -d Ubuntu-20.04 -u root -e sudo apt update >nul 2>&1

:: And now the big upgrading of all the Ubuntu 20.04 software.
echo  After such a fall as this, you will think nothing of switching hardware.
wsl -d Ubuntu-20.04 -u root -e sudo apt upgrade -y >nul 2>&1

:: You know what's nice? Not having to type a password every time you sudo a command!
wsl -d Ubuntu-20.04 -u root /bin/bash -c "echo 'ubuntu	ALL=(ALL:ALL) NOPASSWD:ALL'> /etc/sudoers.d/ubuntu" >nul 2>&1

:: Grab and run second-half of install that runs under WSL and set up Linux graphics.
wsl -d Ubuntu-20.04 -u ubuntu -e curl -L -o /home/ubuntu/install_wsl.sh "https://raw.githubusercontent.com/miklevin/drinkme/main/install_wsl.sh" >nul 2>&1
wsl -d Ubuntu-20.04 -e bash -c bash /home/ubuntu/install_wsl.sh %VAR% 2>&1

:: ACLs need a wsl --shutdown for git clone to work. Also keep the WSL session alive.
wsl -t Ubuntu-20.04 >nul 2>&1
wsl -d Ubuntu-20.04 -e bash -c nohup ping -i 6 172.17.224.1 >/dev/null 2>&1 &
echo Rerun this often for the latest. All your Notebooks and settings are safe!

wsl -d Ubuntu-20.04 -u root -e chmod 600 /home/ubuntu/.ssh/id_rsa_drinkme >nul 2>&1
wsl -d Ubuntu-20.04 -u root -e chmod 600 /home/ubuntu/.ssh/id_rsa_drinkme.pub >nul 2>&1
wsl -d Ubuntu-20.04 -u root -e curl -L -o /home/ubuntu/repos/transfer/git_installs.sh "https://raw.githubusercontent.com/miklevin/drinkme/main/git_installs.sh" >nul 2>&1
wsl -d Ubuntu-20.04 -u root -e sh /home/ubuntu/repos/transfer/git_installs.sh >nul 2>&1

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Linux Shell.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps\wt.exe" >> %SCRIPT%
echo olink.Arguments = "-p Ubuntu-20.04" >> %SCRIPT%
echo olink.IconLocation = "%USERPROFILE%\.config\bash.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
del /Q %USERPROFILE%\repos\transfer\*
                                                                                    
:::thump:::                                                       .----------------.
:::thump:::                                                       | Oh, my fur and |
:::thump:::                                                   /) (  whiskers! It's |                   
:::thump::: _     Linux has      _          _ _        /)\___// o | to Jupyer I go |
:::thump:::| |    __ _ _ __   __| | ___  __| | |   ___(/_ 0 0     '----------------'                   
:::thump:::| |   / _` | '_ \ / _` |/ _ \/ _` | | *(     =(_T_)=  http://localhost:8888
:::thump:::| |__| (_| | | | | (_| |  __/ (_| |_|   \  )   \"\      
:::thump:::|_____\__,_|_| |_|\__,_|\___|\__,_(_)    |__>-\_>_>  
for /f "delims=: tokens=1*" %%A in ('findstr /b ":::thump:::" "%~f0"') do (echo.%%B)
echo Double-click the icon "Linux Shell" created where you ran the script.
echo.
echo You can then reach JupyterLab in a Windows browser at http://localhost:8888
echo From Microsoft Edge, you can make JupyterLab an app from: .../Apps/Install
echo.
set /p warning=Press [Enter] to release this console window. %
