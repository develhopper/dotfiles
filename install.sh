echo "making directories: "
mkdir -p ~/.local/bin
mkdir -p ~/.config/.i3 ~/.config/rofi
mkdir -p ~/.local/share/file-manager/actions
mkdir -p ~/.config/termite
mkdir -p ~/

echo "etc: "
cp -ai etc/. ~/

echo "bin: "
cp -ri bin ~/.local/

echo "i3: "
cp -ri i3 ~/.config/

echo "rofi"
cp -ri rofi ~/.config/

echo "file-manager custom actions: "
cp -ri actions ~/.local/share/file-manager/

echo "termite config: "
cp -ri termite ~/.config
