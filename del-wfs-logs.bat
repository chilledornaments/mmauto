rem run from WFS Apache dir for easiest use. Or rewrite the `/p "\directory\location\"`
forfiles /p "%cd%\logs" /m *.* /D -7 /c "cmd /c del @file"
