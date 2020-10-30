echo "making directories: "
mkdir ~/.local/bin
mkdir ~/.config/.i3 ~/.config/rofi
mkdir -p ~/.local/share/file-manager/actions

echo "etc: "
cp -ai etc/. ~/

echo "bin: "
cp -ri bin ~/.local/bin

echo "i3: "
cp -ri i3 ~/.config/

echo "rofi"
cp -ri rofi ~/.config/

echo "file-manager custom actions: "
cp -ri actions ~/.local/share/file-manager/
