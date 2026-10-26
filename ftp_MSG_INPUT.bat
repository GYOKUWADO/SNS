set /p MSG="eoで配信するMSGを入力してください:"
set /p AI_BREAK_CODE="ブレイクAIコードを入力してください(認証コード):"
set /p hashtag="ぎょく～ろを追加しますか？:(y/n)"
IF %hashtag%==y GOTO :A
IF %hashtag%==n GOTO :D
GOTO :EOF

:A
(echo ^<div style^=^"width^: 700px^;margin^: 20px^;margin-left^: auto^;margin-right^: auto^;border^: 2px solid ^#333^;border-radius^: 15px^;padding^: 20px^;font-size^:50px^;^"^>^<span^>%DATE% %TIME%^<^/span^>^<br^> ^<span^> %MSG% ^<span^>code=%AI_BREAK_CODE%^<^/span^> ^<a href^=^"https://1drv.ms/f/c/f4ed3c9ea560f541/IgCFmxZzeI2wQpvNPJONmXUyAWpUkNURLywcJGaZvQMRR4o^?e^=hNDcQt^" target^=^"^_blank^"^>^#ぎょく～ろ^<^/a^>^<^/span^>^<br^>^<^/div^> & type %USERPROFILE%\OneDrive\MSG.html) > temp.txt
GOTO :C

:B
(echo ^<div style^=^"width^: 700px^;margin^: 20px^;margin-left^: auto^;margin-right^: auto^;border^: 2px solid ^#333^;border-radius^: 15px^;padding^: 20px^;font-size^:50px^;^"^>^<span^>%DATE% %TIME%^<^/span^>^<br^> ^<span^> %MSG%^<^/span^>^<br^> ^<span^>code=%AI_BREAK_CODE%^<^/span^>^<br^> ^<^/div^> & type %USERPROFILE%\OneDrive\MSG.html) > temp.txt
GOTO :C

:D
set /p hashtag="水墨画を追加しますか？:(y/n)"
IF %hashtag%==y GOTO :E
IF %hashtag%==n GOTO :B
GOTO :EOF

:E
(echo ^<div style^=^"width^: 700px^;margin^: 20px^;margin-left^: auto^;margin-right^: auto^;border^: 2px solid ^#333^;border-radius^: 15px^;padding^: 20px^;font-size^:50px^;^"^>^<span^>%DATE% %TIME%^<^/span^>^<br^> ^<span^> %MSG% ^<span^>code=%AI_BREAK_CODE%^<^/span^> ^<a href^=^"https://1drv.ms/f/c/f4ed3c9ea560f541/IgCMT1vz1i0nRqg7rZhRuTemAf6J447eBWOxVFS4VPa03kM^?e^=CyPqtD^" target^=^"^_blank^"^>^#水墨画^<^/a^>^<^/span^>^<br^>^<^/div^> & type %USERPROFILE%\OneDrive\MSG.html) > temp.txt
GOTO :C

:C
move /y temp.txt %USERPROFILE%\OneDrive\MSG.html
