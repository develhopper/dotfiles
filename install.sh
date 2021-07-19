echo "making directories: "
mkdir -p ~/.local/share/file-manager/

echo "etc: "
cp -ai etc/. ~/

echo "bin: "
cp -ri bin ~/.local/

echo "~/.config: "
cp -ri config/* ~/.config/

echo "file-manager custom actions: "
cp -ri actions ~/.local/share/file-manager/

ln -sf ~/.config/i3 ~/.i3
