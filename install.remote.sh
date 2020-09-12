##!/bin/bash

# sudo apt-get install aptitude -y
sudo aptitude update

# https://www.hiroom2.com/2018/05/07/ubuntu-1804-xrdp-xfce-en/

# 2 Install XRDP

sudo aptitude install -y xrdp
sudo sed -e 's/^new_cursors=true/new_cursors=false/g' -i /etc/xrdp/xrdp.ini
sudo systemctl enable xrdp
sudo systemctl restart xrdp

# 3 Create ~/.xsession and ~/.xsessionrc

# Create .xsession and .xsessionrc in home directory of user to be connected.

echo "xfce4-session" > ~/.xsession
D=/usr/share/xfce4:/usr/share/xubuntu:/usr/local/share
D=${D}:/usr/share:/var/lib/snapd/desktop:/usr/share
cat <<EOF > ~/.xsessionrc
export XDG_SESSION_DESKTOP=xubuntu
export XDG_DATA_DIRS=${D}
export XDG_CONFIG_DIRS=/etc/xdg/xdg-xubuntu:/etc/xdg:/etc/xdg
EOF

# 4 Disable light-locker via XRDP

# The light-locker causes error when lightdm does not executed. This is because light-locker uses XDG_SESSION_PATH which is set by lightdm. XDG_SESSION_PATH is a dynamic value and cannot be set static.

# ** (light-locker:2769): ERROR **: 08:09:59.625: Environment variable
# XDG_SESSION_PATH not set. Is LightDM running?

# This article create a wrapper script which checks if XDG_SESSION_PATH is set or not.

sudo cp /usr/bin/light-locker /usr/bin/light-locker.orig
cat <<EOF | sudo tee /usr/bin/light-locker
#!/bin/sh

# The light-locker uses XDG_SESSION_PATH provided by lightdm.
if [ ! -z "\${XDG_SESSION_PATH}" ]; then
  /usr/bin/light-locker.orig
else
  # Disable light-locker in XRDP.
  true
fi
EOF

sudo chmod a+x /usr/bin/light-locker

# 5 Connect to Xfce desktop environment via XRDP

# Use Xorg as a session type. Windows Remote Desktop Connection is as the following.

