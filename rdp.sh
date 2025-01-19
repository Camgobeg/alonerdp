sudo apt update
sudo apt install -y novnc websockify xfce4 xfce4-goodies xvfb x11vnc
Xvfb :99 -screen 0 1280x800x24 &
DISPLAY=:99 startxfce4 &
x11vnc -display :99 -rfbport 5901 -forever -nopw &
websockify --web=/usr/share/novnc 6080 localhost:5901
