# kDownloader

## Download

[Mega](https://mega.nz/#!vEBl1Y7T!0JCjIuFuZDyBF55RVf2oHf6qzxEDZ8I8o8RfkJcix60)

[MediaFire](http://www.mediafire.com/file/43w0oe6vg51e5q7/kDownloader.7z/file)

## How To Use:

1) Download the "kDownloader.7z" file from one of the provided links above.

2) Extract it anywhere you'd like. All the necessary files needed to make kDownloader work are present in the provided in the ".7z" file.

3) Launch the GUI (batch file)

4) On first launch, you'll be guided through adding the directories to the program. (Directories will be remembered, even after closing and relaunching the program!

5) Download to your hearts content!

## Features

/-/ "Quick options will download directly to "downloads\"

/-/ "Single Video" options will download to "downloads\video\uploader\"

/-/ "Playlist" video options will download to "downloads\video\playlist title\"

/-/ All audio options will download to "downloads\audio\uploader\"

/-/ Youtube-DL Update - On first launch, kDownloader checks for an update for Youtube-DL. This is normal, and will happen only once, on the VERY FIRST time you launch kDownloader. There is an option to manually check for Youtube-DL in the main menu.

/-/ Archive - This feature simply means whenever you download a video using one of the download options in kDownloader (excluding the "Quick" options in the main menu), the video id and the source of the download will be saved to an "archive" config file. What this does is it prevents you from downloading the same video again. The best example of this is like so:
-- There is youtube series called "Hermitcraft 6" on StressMonster101 's channel.
-- I've used kDownloader to download the entire playlist. Easy. But the series, and as a result the playlist, is continually updated as new episodes are released. So what do I do? Just manually go into to the playlist and download the specific episode now?
-- No, the best way to do this is use kDownloader with the archive feature turned ON. All the videos that are downloaded from the playlist will be saved to the list.
-- Now, the next time that I use kDownloader to download the playlist, it will skip all the ones that are already on the list, and will only download the new videos!
-- ** QUICK NOTE ** The archive feature will soon be made MUCH more powerful when I comebine it with the feature to paste links into a text file and kDownloader will auto download them! 

/-/ Directories

/-/-/ Default Directories

/-/-/-/ So, in order to use kDownloader properly, kDownloader needs to know where you want it to download files to, as well as the location of the "youtube-dl.exe" file, and where its configuration files are located.

/-/-/-/ If you select kDownloader to use the default directories, everything will be contained and stay inside of the "kDownloader" folder that you've extracted from the 7z file that you downloaded!

/-/-/-/ Files will be download to "kDownloader\downloads"

/-/-/-/ All configuration files, and "youtube-dl.exe" will be saved to "kDownloader\config"

/-/-/ Custom Directories

/-/-/-/ Just like before, kDownloader does need to know where "youtube-dl.exe" and other configuration files are located, as well as where to download files.

/-/-/-/ If you use custom directories, kDownloader will guide you to which directory you need to enter at which point.

/-/-/-/ Currently, you cannot leave these fields blank, BUT you can jsut enter random nonsense. I currently don't have a way to check for actual directory paths. So yes, you can technically break kDownloader by just entering a "1" or something when it asks you for the directory path, but then what's the point of using kDownloader?

/-/ Main Menu

/-/-/ Quick Video (MKV)

/-/-/-/ As previously stated, this option does not fall subject to whether the "archive" feature is turned on or off.

/-/-/-/ This option will download a video directly to the root of your "downloads" directory, and convert it to "mkv" if it isn't already in that format.

/-/-/ Quick Audio (MP3)

/-/-/-/ As previously stated, this option does not fall subject to whether the "archive" feature is turned on or off.

/-/-/-/ This option will download an mp3 file directly to the root of your "downloads" directory, and convert it to "mp3" if it isn't already in that format.

/-/-/ Video Menu - This will take you to the video menu, which gives you more options to download videos.

/-/-/ Audio menu - This will take you to the audio menu, which gives you more options to download audio.

/-/-/ Settings - This will take you to the settings menu, which gives you the chance to change some settings in kDownloader.

/-/-/ Update Checker - This will manually check for updates to "youtube-dl.exe".

/-/-/ Exit - This will close kDownloader.

/-/-/ Experimental Menu - This will take you to the experimental menu in kDownlader, which gives you the chance to play around with any experimental download options currently in kDownloader.

/-/ Video Menu

/-/-/ Single Video (mkv) - will download a single video and convert it to ".mkv" format, if not already in that format.

/-/-/ Single Video (w/subs) (mkv) - will download a video with all of its subtitle files! Will also convert video to ".mkv", if not already in that format.

/-/-/ Single Video (mp4) - will download a single video and convert it to ".mp4" format, if not already in that format.

/-/-/ Youtube Playlist (mkv) - will download an entire youtube playlist, and convert every video to ".mkv" format, if not already in that format.

/-/-/ Main Menu - Takes you back to the main menu.

/-/-/ Exit - Closes kDownloader.

/-/ Audio Menu

/-/-/ Audio (mp3) - Downloads the audio from a video and saves it as ".mp3" format, if not already in that format.

/-/-/ Auido (aac) - Downloads the audio from a video and saves it as ".aac" format, if not already in that format.

/-/-/ Audio (wav) - Downloads the audio from a video and saves it as ".wav" format, if not already in that format.

/-/-/ Audio (flac) - Downloads the aduio from a video and saves it as ".flac" format, if not already in that format.

/-/-/ Main Menu - Takes you back to the main menu.

/-/-/ Exit - Closes kDownloader.

/-/ Settings Menu

/-/-/ Re-add Directories - Let's you change the directories used with kDownloader, in case you messed up, or just want to use new ones.

/-/-/ Archive On/Off - Lets you change whether you have "archive" turned on or off, in case you get tired of dealing with the archive not letting you re-download videos!

/-/-/ Main Menu - Takes you back to the main menu.

/-/-/ Exit - Closes kDownloader.

/-/ Experimental Menu

/-/-/ Archive-able Playlists - This was the initial test code for the "archive" feature. No longer relevant and will be removed in a future update.

/-/-/ Read links from a ".txt" file - What this does is that it reads all the links that you've saved to the specific ".txt" file, and then proceeds to download them in ".mkv" format. In order for the links to be read properly, each link needs to be on its own line.

/-/-/-/ This is the new upcoming feature that will be made to work in conjunction with "archive"!

/-/-/ Main Menu - Takes you back to the main menu.

/-/-/ Exit - Closes kDownloader.

## Changelog

/---------------------------------

v1.36.1 - 9.17.2019

/-/ Updated titles for some options, adding what file format they will download in.

/-/ Changed the "changelog.txt" file to "readme.txt" file, and update the file by adding instructions, as well as a description of what each feature and menu item does!

/---------------------------------

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

::=============================</CHANGELOG>=============================::

## Credits

This project did not create/write the fundamental code that makes this all work. This project ONLY added a GUI to it. All credit for the actual function goes to their respective owners/creators. Mad props to them, these tools are incredibly useful!

[Youtube-DL](https://github.com/ytdl-org/youtube-dl)

[Ffmpeg](https://ffmpeg.org/)
