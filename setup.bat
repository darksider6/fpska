rem AviSynth
%~dp0distr\AviSynth_260.exe /S
copy %~dp0distr\avisynth.dll c:\Windows\SysWOW64
copy %~dp0distr\avisynth.dll c:\Windows\System32

rem FFMS2
%~dp0distr\curl.exe -L https://github.com/FFMS/ffms2/releases/download/2.22/ffms2-2.22-msvc.7z --output %~dp0\FFMS2\ffms2-2.22-msvc.7z
%~dp0distr\7za.exe x %~dp0\FFMS2\ffms2-2.22-msvc.7z -o%~dp0\FFMS2
copy %~dp0\FFMS2\ffms2-2.22-msvc\x64\*.* %~dp0\FFMS2
copy %~dp0\FFMS2\ffms2-2.22-msvc\*.avsi %~dp0\FFMS2
del %~dp0\FFMS2\ffms2-2.22-msvc.7z
rmdir /S/Q %~dp0\FFMS2\ffms2-2.22-msvc

rem Mencoder
%~dp0distr\curl.exe https://kent.dl.sourceforge.net/project/mplayerwin/MPlayer-MEncoder/r38119/mplayer-svn-38119.7z --output %~dp0\mencoder\mplayer-svn-38119.7z
%~dp0distr\7za.exe x %~dp0\mencoder\mplayer-svn-38119.7z -o%~dp0\mencoder
copy %~dp0\mencoder\mplayer-svn-38119\*.exe %~dp0\mencoder
copy %~dp0\mencoder\mplayer-svn-38119\*.dll %~dp0\mencoder
del %~dp0\mencoder\mplayer-svn-38119.7z
rmdir /S/Q %~dp0\mencoder\mplayer-svn-38119

rem FFmpeg
%~dp0distr\curl.exe https://ffmpeg.zeranoe.com/builds/win32/static/ffmpeg-latest-win32-static.zip --output %~dp0\ffmpeg\ffmpeg-latest-win32-static.zip
%~dp0distr\7za.exe x %~dp0\ffmpeg\ffmpeg-latest-win32-static.zip -o%~dp0\ffmpeg
copy %~dp0\ffmpeg\ffmpeg-latest-win32-static\bin\*.exe %~dp0ffmpeg
del %~dp0ffmpeg\ffmpeg-latest-win32-static.zip
rmdir /S/Q %~dp0ffmpeg\ffmpeg-latest-win32-static


rem SVPflow
%~dp0distr\curl.exe http://www.svp-team.com/files/gpl/svpflow-4.2.0.142.zip --output %~dp0\svpflow\svpflow-4.2.0.142.zip
%~dp0distr\7za.exe x %~dp0\svpflow\svpflow-4.2.0.142.zip -o%~dp0\svpflow
copy %~dp0svpflow\svpflow-4.2.0.142\lib-windows\avisynth\x32\*.dll %~dp0svpflow
del %~dp0svpflow\svpflow-4.2.0.142.zip
rmdir /S/Q %~dp0svpflow\svpflow-4.2.0.142

PAUSE
