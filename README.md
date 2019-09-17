# kDownloader

## Download

[Mega](https://mega.nz/#!vEBl1Y7T!0JCjIuFuZDyBF55RVf2oHf6qzxEDZ8I8o8RfkJcix60)

[MediaFire](http://www.mediafire.com/file/43w0oe6vg51e5q7/kDownloader.7z/file)

## How To Use:

1) Download the "kDownloader.7z" file from the Mega link provided above.

2) Extract it anywhere you'd like.

3) Launch the GUI (batch file)

4) On first launch, you'll be guided through adding the directories to the program. (Directories will be remembered, even after closing and relaunching the program!

5) Download to your hearts content!


## Changelog
v1.36 - 9.12.2019

/-/ kDownloader NOW HAS AN ARCHIVE FUNCTION!

/-/ HOW TO USE: When the feature is active (don't worry, you can go into settings and turn this function "off" or "on" later if you'd like), every download will be saved to the archive file (located in the "config" folder).

/-/ What this means, is that if a video is already present in the archive file, then if you attempt to download that video again, it will check the archive file and tell you that it has already been downloaded.

/-/ "Quick" download options in main menu are not affected by this feature, so if you want to keep "Archive" turned on, but for whatever reason need to re-download a video that has been previously downloaded, then the "Quick" options are your answer!

/-/ ***QUICK NOTE***: kDownloader still functions the same, so even if you use "QuickMP3" option to download a video AGAIN, and the video is still in the directory, then it won't redownload because it's still there.

/-/ Title check and config file has been removed, as it was a complicated solution to a simple problem.

/---------------------------------

v1.35.1 - 9.12.2019

/-/ A check has been added for the title config file. If it exists, then it will print out the program name and version number as the title of the window. If it doesn't exist, it will just set the title to the program name.

/-/ "Playlist with Archive" in the experimental menu has been updated to now download to "%download%\Video", instead of just directly downloading to the "%downloads%" directory.

/---------------------------------

v1.35 - 9.12.2019

/-/ There is now an option to "re-add" the "Downloads" and "Youtube-DL" directories in the main menu.

/-/ Menus have been re-organized. Should be easier to navigate, and will make it easier for me to add new features/options in the future.

/---------------------------------


v1.34.2 - 9.12.2019

/-/ Code has been edited to use "%~dp0" instead of "%cd%".

/-/ Everything should work normally, but it's just a bit of clean-up to avoid headache inducing code.

/---------------------------------

v1.34.1 - 9.12.2019

/-/ kDownloader will now use ".config" files to store configuration data, instead of ".bat" files.

/---------------------------------

v1.34 - 9.10.2019

/-/ kDownloader will now auto-update Youtube-DL on first launch.

/---------------------------------

v1.33.3 - 9.10.2019

/-/ kDownloader will now check for BOTH directory config files. If even one is missing, both directory config files will be deleted and the user will be sent to the directory selection screen.

/---------------------------------

v1.33.2 - 9.10.2019

/-/ Fixed a bug that allowed the custom directory fields to be left blank. Currently, you are not allowed to leave them blank anymore, but you can just put a single letter and it will still accept it. This will be fixed in a later release. For now, just add the directory, please :).

/---------------------------------

v1.33.1 - 9.07.2019

/-/ Updated "playlist with archives" download code in "experimental section" so that folders for the playlist are now titled "(playlist) by (uploader)" instead of just "(playlist)".

/-/ Added a changelog to zip package.

/---------------------------------

v1.33 - 9.07.2019

/-/ All the necessary files for kDownloader to work have now been packaged into a single zip file. Just download the file, extract it wherever you want, and open the GUI!

/-/ The GUI will now guide you through everything, from actually downloading videos, to adding the required directories! No more editing the code to make it work :)

/-/ Updated "How To Use" in readme section.

/-/ Added "credits" for original "ffmpeg" and "youtube-dl" authors, as well as links to their pages.

/---------------------------------

v1.32 - 9.03.2019

/-/ Added an experimental section to the GUI

/-/ Experimental section includes video & playlist downloads with archive support! (downloaded videos will be remembered, so they wont' be redownloaded the next time!

/-/ Experimental section includes downloading videos using links stored in a text file. Just paste the links into the specific text file, each link on its own line, save, and run the experimental code!

/-/ Note: Experimental features are just that, experimental. It may work perfectly, it may not. Still working out some kinks.

/---------------------------------

v1.31 - 8.31.2019

/-/ Removed "changelog" and "Production Crew" from batch file and placed it in "Readme.md" file.

/---------------------------------

v1.3 - 8.31.2019

/-/ Changed default download format of videos to "mkv" extension, with the exception of option 3, which is still "mp4".

/-/ credit to ShadowBoy01 for providing input :)

/---------------------------------

v1.2 - 8.31.2019

/-/ Added a new option (now option 3) to download videos as "mp4".

/-/ credit goes to ShadowBoy01 for the idea :)

/---------------------------------

v1.1 - 8.30.2019

/-/ Fixed "solo" and "solo subs" download options where the extension wasn't specified.

/-/ credit to ShadowBoy01 for reporting this issue :)

/---------------------------------

v1.0 - 8.30.2019

/-/ Added a changelog to file.

/-/ Launched V1 into the world :)

/---------------------------------

vbeta1.1 - 8.30.2019

/-/ Added "--no-check-certificate" to ALL download codes.

/-/ credit to ShadowBoy01 for reporting this issue :)

/---------------------------------

vbeta1.0 - 8.30.2019

/-/ Initial launch.

/---------------------------------

## Production Crew
koinupapi   | owner / coder

ShadowBoy01 | debugger / partner / tester

/---------------------------------

## Credits

This project did not create/write the fundamental code that makes this all work. This project ONLY added a GUI to it. All credit for the actual function goes to their respective owners/creators. Mad props to them, these tools are incredibly useful!

[Youtube-DL](https://github.com/ytdl-org/youtube-dl)

[Ffmpeg](https://ffmpeg.org/)
