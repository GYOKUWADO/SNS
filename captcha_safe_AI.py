from captcha.audio import AudioCaptcha
from captcha.image import ImageCaptcha
import os

text = input("認証コードを入力してください: ")

audio = AudioCaptcha()
image = ImageCaptcha()

# OneDriveフォルダ
onedrive = os.path.expandvars(r"%USERPROFILE%\OneDrive")

audio_path = os.path.join(onedrive, "out.wav")
image_path = os.path.join(onedrive, "out.png")

audio.write(text, audio_path)
image.write(text, image_path)

print(f"音声CAPTCHA: {audio_path}")
print(f"画像CAPTCHA: {image_path}")