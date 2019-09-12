@echo off
color 0B

::=========<SET TITLE>=========
set kdtitle=kDownloader v1.36
title %kdtitle%
::=========</SET TITLE>=========

::=========<YOUTUBE-DL UPDATE>=========
:ytdlUpdate
IF EXIST "%~dp0config\ytdlUpdate.config" goto :archiveTest
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo We will now check for updates for Youtube-DL
cd "%~dp0config"
youtube-dl -U
echo Done.>"%~dp0config\ytdlUpdate.config"
cd..
cls
goto :archiveTest
exit
::=========</YOUTUBE-DL UPDATE>=========

::=========<ARCHIVE CHECK>=========
:archiveTest
IF EXIST "%~dp0config\ya.config" goto :ytConfigTest
IF EXIST "%~dp0config\na.config" goto :ytConfigTest
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
set /p aq=Would you like to use the archive feature with kDownloader? [1=yes/2=no]: 
if /I "%aq%" EQU "1" echo.>"%~dp0config\ya.config" goto :yaexists
if /I "%aq%" EQU "2" echo.>"%~dp0config\na.config" goto :naexists
goto :archiveTest
exit

:yaexists
cls
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo You've chosen to use the archive feature with kDownloader.
echo Saving your choice now...
TIMEOUT 5
goto :ytConfigTest
exit

:naexists
cls
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo You've chosen NOT to use the archive feature with kDownloader.
echo Saving your choice now...
TIMEOUT 5
goto :ytConfigTest
exit
::=========<ARCHIVE CHECK>=========

::=========<DIRECTORY ADDED TESTS>=========
:ytConfigTest
IF EXIST "%~dp0config\YTconfig.config" goto :dlConfigTest 
cls
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Youtube-DL directory has not been added, proceeding to "Directory Addition" screen...
TIMEOUT 5
goto :delDirConfigData
exit

:dlConfigTest
IF EXIST "%~dp0config\DLconfig.config" goto :varSet
cls
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Download directory has not been added, proceeding to "Directory Addition" screen...
TIMEOUT 5
goto :delDirConfigData
exit
::=========</DIRECTORY ADDED TESTS>=========

::=========<DELETE DIRECTORY CONFIG DATA>=========
:delDirConfigData
IF EXIST "%~dp0config\YTconfig.config" del "%~dp0config\YTconfig.config" /f /q
IF EXIST "%~dp0config\DLconfig.config" del "%~dp0config\DLconfig.config" /f /q
goto :dirQ
exit
::=========</DELETE DIRECTORY CONFIG DATA>=========

::=========<DELETE ARCHIVE CONFIG DATA>=========
:delArchiveFiles
cls
IF EXIST "%~dp0config\ya.config" del "%~dp0config\ya.config" /f /q
IF EXIST "%~dp0config\na.config" del "%~dp0config\na.config" /f /q
goto :archiveTest
exit
::=========</DELETE ARCHIVE CONFIG DATA>=========

::=========<DIRECTORY SETTING>=========
:dirQ
cls
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Your "Youtube-DL" directory is not set, let's fix that!
echo Your "Downloads" directory is not set, let's fix that!
echo /
echo //
echo /
set /p customVars=Would you like to use custom directories, or use the default directories? [1=custom,2=default]: 
if /I "%customVars%" EQU "1" goto :addCustomVarsYT
if /I "%customVars%" EQU "2" goto :defaultVars
goto :dirQ

:addCustomVarsYT
set /p ytdldir=Enter Youtube-Dl directory path here: 
if /I "%ytdldir%" EQU "" goto :ytdldirInvalid
echo %ytdldir%>"%~dp0config\YTconfig.config"
goto :addCustomVarsDL
exit

:addCustomVarsDL
set /p downdir=Enter download directory path here: 
if /I "%downdir%" EQU "" goto :downdirInvalid
echo %downdir%>"%~dp0config\DLconfig.config"
goto :varSet
exit

:ytdldirInvalid
echo You cannot leave this field blank! Try again!
goto :addCustomVarsYT
exit

:downdirInvalid
echo You cannot leave this field blank! Try again!
goto :addCustomVarsDL
exit

:defaultVars
echo %~dp0config>"%~dp0config\YTconfig.config"
echo %~dp0downloads>"%~dp0config\DLconfig.config"
echo Default directories have been applied.
TIMEOUT 5
goto :varSet
exit
::=========</DIRECTORY SETTING>=========


::=========<VARIABLE SETTING>=========
:varSet
set /p ytdldir=<"%cd%/config/YTconfig.config"
set /p downdir=<"%cd%/config/DLconfig.config"
goto :mainMenu
::=========</VARIABLE SETTING>=========

::=========<MENU CODE>=========

::=========<MAIN MENU>=========
:mainMenu
color 0B
cls
cd %ytdldir%
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Your "Youtube-DL" directory is "%ytdldir%"
echo Your "Downloads" directory is "%downdir%"
if exist "%~dp0config\ya.config" echo "Archive" feature has been turned ON.
if exist "%~dp0config\na.config" echo "Archive" feature has been turned OFF.
echo /
echo //
echo /
echo ============================================================================================
echo 1) Quick Video (MKV) 2) Quick Audio (MP3)
echo /
echo 3) Video Menu        4) Audio Menu
echo /
echo 8) Settings          9) Update Checker
echo 0) Exit
echo /
echo e) Experimental Menu
echo ============================================================================================
echo /
echo //
echo /
set /p q=Enter the number of the option you want: 
if /I "%q%" EQU "1" goto :quickVideoMKV
if /I "%q%" EQU "2" goto :quickAudioMP3
if /I "%q%" EQU "3" goto :videoMenu
if /I "%q%" EQU "4" goto :audioMenu
if /I "%q%" EQU "8" goto :settingsMenu
if /I "%q%" EQU "9" goto :updatechecker
if /I "%q%" EQU "0" goto :exit
if /I "%q%" EQU "e" goto :experimentalMenu
if /I "%q%" EQU "E" goto :experimentalMenu
goto :mainMenu
::=========</MAIN MENU>=========

::=========<MAIN MENU>=========
:settingsMenu
color 0B
cls
cd %ytdldir%
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Your "Youtube-DL" directory is "%ytdldir%"
echo Your "Downloads" directory is "%downdir%"
if exist "%~dp0config\ya.config" echo "Archive" feature has been turned ON.
if exist "%~dp0config\na.config" echo "Archive" feature has been turned OFF.
echo /
echo //
echo /
echo ============================================================================================
echo 1) Re-Add Directories 2) Archive On/Off
echo /
echo 9) Main Menu          0) Exit
echo ============================================================================================
echo /
echo //
echo /
set /p q=Enter the number of the option you want: 
if /I "%q%" EQU "1" goto :delDirConfigData
if /I "%q%" EQU "2" goto :delArchiveFiles
if /I "%q%" EQU "2" goto :mainMenu
if /I "%q%" EQU "0" goto :exit
goto :mainMenu
::=========</MAIN MENU>=========

::=========<VIDEO MENU>=========
:videoMenu
color 0B
cls
cd %ytdldir%
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Your "Youtube-DL" directory is "%ytdldir%"
echo Your "Downloads" directory is "%downdir%"
echo /
echo //
echo /
echo ============================================================================================
echo 1) Single video        2) Single video (w/subs)
echo 3) Single video (mp4)  4) Youtube Playlist
echo /
echo 9) Main Menu           0) Exit
echo ============================================================================================
echo /
echo //
echo /
set /p q=Enter the number of the option you want: 
if /I "%q%" EQU "1" goto :singleVideo
if /I "%q%" EQU "2" goto :singleVideosubs
if /I "%q%" EQU "3" goto :singleVideomp4
if /I "%q%" EQU "4" goto :videoPlaylist
if /I "%q%" EQU "9" goto :mainMenu
if /I "%q%" EQU "0" goto :exit
goto :videoMenu
::=========</VIDEO MENU>=========

::=========<AUDIO MENU>=========
:audioMenu
color 0B
cls
cd %ytdldir%
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader -- Download videos using youtube-dl
echo ============================================================================================
echo /
echo //
echo /
echo Your "Youtube-DL" directory is "%ytdldir%"
echo Your "Downloads" directory is "%downdir%"
echo /
echo //
echo /
echo ============================================================================================
echo 1) Audio (mp3)       2) Audio (aac)
echo 3) Audio (wav)       4) Audio (flac)
echo /
echo 9) Main Menu         0) Exit
echo ============================================================================================
echo /
echo //
echo /
set /p q=Enter the number of the option you want: 
if /I "%q%" EQU "1" goto :singleAudiomp3
if /I "%q%" EQU "2" goto :singleAudioaac
if /I "%q%" EQU "3" goto :singleAudiowav
if /I "%q%" EQU "4" goto :singleAudioflac
if /I "%q%" EQU "9" goto :mainMenu
if /I "%q%" EQU "0" goto :exit
goto :audioMenu
::=========</AUDIO MENU>=========

::=========<EXPERIMENTAL MENU>=========
:experimentalMenu
title %kdtitle% EXPERIMENTAL
cd "%ytdldir%"
color 0B
cls
echo /
echo //
echo /
echo ============================================================================================
echo kDownloader EXPERIMENTAL || WARNING! THESE OPTIONS ARE STILL IN ALPHA/BETA, AND MAY CONTAIN BUGS OR CAUSE DATA LOSS. USE AT YOUR OWN RISK!
echo ============================================================================================
echo /
echo //
echo /
echo ============================================================================================
echo 1) Archive-able Playlists
echo 2) Read links from a ".txt" file
echo 9) Return to main menu
echo 0) Exit
echo ============================================================================================
echo /
echo //
echo /
set /p q=Enter the number of the option you want: 
if /I "%q%" EQU "1" goto :playlistWithArchive
if /I "%q%" EQU "2" goto :singleVideoWithTextFile
if /I "%q%" EQU "9" goto :mainMenu
if /I "%q%" EQU "0" goto :exit
goto :experimentalMenu
::=========</EXPERIMENTAL MENU>=========

::=========</MENU CODE>=========


::=========<MAIN MENU OPTION CODES>=========
::=========<QUICK CODES>=========
:quickVideoMKV
echo /
echo //
echo /
echo ===============================
echo THIS VIDEO FILE WILL BE SAVED DIRECTLY TO YOUR DOWNLOADS DIRECTORY. NO FOLDERS OR FOLDER STRUCTURE WILL BE CREATED.
echo ===============================
echo /
echo //
echo /
set /p soloURL=Paste the URL here please: 
cls
youtube-dl -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%"
goto :mainMenuQuickMKVText
exit

:quickAudioMP3
echo /
echo //
echo /
echo ===============================
echo THIS AUDIO FILE WILL BE SAVED DIRECTLY TO YOUR DOWNLOADS DIRECTORY. NO FOLDERS OR FOLDER STRUCTURE WILL BE CREATED.
echo ===============================
echo /
echo //
echo /
set /p URL=Paste the URL here please: 
cls
youtube-dl -c --no-check-certificate -x --audio-format mp3 -o "%downdir%/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%"
goto :mainMenuQuickMP3Text
exit
::=========</QUICK CODES>=========

:updatechecker
youtube-dl -U
echo .
echo ..
echo .
echo Youtube-Dl has finished updating! Press any button to return to the main menu.
pause
goto :mainMenu
exit
::=========</MAIN MENU OPTION CODES>=========

::=========<VIDEO MENU OPTION CODES>=========
:singleVideo
echo /
echo //
echo /
set /p soloURL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%" & goto: videoMenuSingleText
youtube-dl -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%"
goto :videoMenuSingleText
exit

:singleVideosubs
echo /
echo //
echo /
set /p soloURL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" --all-subs --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%" & goto :videoMenuSingleText
youtube-dl --all-subs --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%"
goto :videoMenuSingleText
exit

:singleVideomp4
echo /
echo //
echo /
set /p soloURL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate --recode-video mp4 --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%" & goto :videoMenuSingleText
youtube-dl -c --no-check-certificate --recode-video mp4 --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%"
goto :videoMenuSingleText
exit

:videoPlaylist
echo /
echo //
echo /
set /p pURL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(playlist)s/%%(playlist_index)s.%%(title)s - %%(uploader)s.%%(ext)s" "%pURL%" & goto :videoMenuPlaylistText
youtube-dl -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(playlist)s/%%(playlist_index)s.%%(title)s - %%(uploader)s.%%(ext)s" "%pURL%"
goto :videoMenuPlaylistText
exit
::=========</VIDEO MENU OPTION CODES>=========

::=========<AUDIO MENU OPTION CODES>=========
:singleAudiomp3
echo /
echo //
echo /
set /p URL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate -x --audio-format mp3 -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%" & goto :audioMenuText
youtube-dl -c --no-check-certificate -x --audio-format mp3 -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%"
goto :audioMenuText
exit

:singleAudioaac
echo /
echo //
echo /
set /p URL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate -x --audio-format aac -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%" & goto :audioMenuText
youtube-dl -c --no-check-certificate -x --audio-format aac -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%"
goto :audioMenuText
exit

:singleAudiowav
echo /
echo //
echo /
set /p URL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate -x --audio-format wav -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%" & goto :audioMenuText
youtube-dl -c --no-check-certificate -x --audio-format wav -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%"
goto :audioMenuText
exit

:singleAudioflac
echo /
echo //
echo /
set /p URL=Paste the URL here please: 
cls
if exist "%~dp0config\ya.config" youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate -x --audio-format flac -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%" & goto :audioMenuText
youtube-dl -c --no-check-certificate -x --audio-format flac -o "%downdir%/Audio/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%URL%"
goto :audioMenuText
exit
::=========</AUDIO MENU OPTION CODES>=========

:exit
exit

::==========================================

::=========<EXPERIMENTAL MENU OPTION CODES>========
:playlistWithArchive
echo /
echo //
echo /
set /p pURL=Paste the URL here please: 
cls
youtube-dl --download-archive "%~dp0config\archive.config" -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(playlist)s by %%(uploader)s/%%(playlist_index)s.%%(title)s - %%(uploader)s.%%(ext)s" "%pURL%"
echo .
echo ..
echo .
color 0A
echo Your playlist has finished downloading and has been archived. Press any button to return to the experimental menu.
pause
goto :experimentalMenu
exit

:singleVideoWithTextFile
echo /
echo //
echo /
cls
youtube-dl --batch-file "%ytdldir%/config/BatchLinks.txt" -c --no-check-certificate --recode-video mkv --postprocessor-args "-vcodec copy" -o "%downdir%/Video/%%(uploader)s/%%(title)s - %%(uploader)s.%%(ext)s" "%soloURL%"
echo .
echo ..
echo .
color 0A
echo Your video has finished downloading. Press any button to return to the experimental menu.
pause
goto :experimentalMenu
exit
::=========</EXPERIMENTAL MENU OPTION CODES>========

::=========<AFTER ACTION TEXT>========
:mainMenuQuickMKVText
echo .
echo ..
echo .
color 0A
echo Your video has finished downloading. Press any button to return to the main menu.
pause
goto :mainMenu
exit

:mainMenuQuickMP3Text
echo .
echo ..
echo .
color 0A
echo Your audio file has finished downloading. Press any button to return to the main menu.
pause
goto :mainMenu
exit

:videoMenuSingleText
echo .
echo ..
echo .
color 0A
echo Your video has finished downloading. Press any button to return to the video menu.
pause
goto :videoMenu
exit

:videoMenuPlaylistText
echo .
echo ..
echo .
color 0A
echo Your playlist has finished downloading. Press any button to return to the video menu.
pause
goto :videoMenu
exit

:audioMenuText
echo .
echo ..
echo .
color 0A
echo Your MP3 file has finished downloading. Press any button to return to the audio menu.
pause
goto :audioMenu
exit
::=========<AFTER ACTION TEXT>========