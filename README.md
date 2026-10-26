# SNS
AIに対抗するSNSのプログラムです。

ftp_MSG.batの

set FTP_HOST=
set FTP_USER=
set FTP_PASS=

を各自設定してください。

ftp_MSG_AUTO.batを実行してください。
"ブレイクAIコードを入力してください(認証コード):"と表示されますので数字四桁を入力。
caotcha_safe_AI.pyで"認証コードを入力してください:"と表示されますので数字四文字を入力してください。
基本的にはこの二つは同じ数字四文字が好ましいでしょう。人の目で確認できますのでAIに対して対抗できます。一台のAIには時間がかかるはずです。

あとは、SNSのメッセージ、MSG.htmlがFTPサイトにアップロードされます。

time.gifはSNSの配信の時間です。

caotcha_safe_AI.pyはAIには認識できないとされるコードを%USERPROFILE%\OneDrive\out.pngに出力しますので
