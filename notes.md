## Install chrome

```sh
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

## Japanese Input Method

https://gihyo.jp/admin/serial/01/ubuntu-recipe/0689

# Remove discover update notifications?

```
sudo rm /etc/xdg/autostart/org.kde.discover.notifier.desktop
```

# Numpy for gcloud

```
(gcloud info --format="value(basic.python_location)") -m pip install numpy
```

# DBeaver

```
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver-ce_latest_amd64.deb
```

# dotfiles

- run symlink script in config repo

add `source ~/.bashrc_shared` to .bashrc

# vim as default editor

```
sudo update-alternatives --config editor
```

# sudo no password

```
sudo visudo
tobias ALL=(ALL) NOPASSWD: ALL
```

# on Ubuntu 20.04

https://askubuntu.com/questions/1077439/ubuntu-18-04-is-there-a-way-to-disable-the-alt%c2%bdthe-button-right-above-tab-s/1077459#1077459

```
sa install gnome-tweaks
```

make right alt choose third level: https://askubuntu.com/questions/1104092/my-right-alt-key-is-not-working

# fast apt mirrors

```
sudo sed -i -e 's/http:\/\/jp.archive/mirror:\/\/mirrors/' -e 's/\/ubuntu\//\/mirrors.txt/' /etc/apt/sources.list
```

## Git config

```sh
git config --global user.email tobias.fausten@gmail.com
git config --global user.name "Tobias Fausten"
git config --global core.editor vim
```

## Turn off wifi power managements

https://unix.stackexchange.com/a/315400
