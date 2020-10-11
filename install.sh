echo "etc: "
cp -ai etc/. ~/

echo "i3: "

mkdir ~/.config/.i3 ~/.config/rofi

cp -ri i3 ~/.config/
cp -ri rofi ~/.config/
