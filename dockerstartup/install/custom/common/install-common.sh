#!/usr/bin/env bash
set -ex

add-apt-repository universe -y
apt-get update
apt-get install -y sudo apt-utils libfuse2t64 dbus-user-session uidmap coreutils e2fsprogs cryptsetup kpartx nmap socat dialog
apt-get install -y git htop mc thunar-archive-plugin iputils-ping postgresql-client openssl

echo 'kasm-user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/user
echo -n 'kasm-user:password' | chpasswd
passwd -d kasm-user

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo 'kernel.unprivileged_userns_clone=1' >> /etc/sysctl.d/userns.conf
echo 'net.ipv4.ip_unprivileged_port_start=0' >> /etc/sysctl.d/userns.conf
echo 'fs.inotify.max_user_watches=524288' >> /etc/sysctl.d/userns.conf
