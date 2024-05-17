branch=https://raw.githubusercontent.com/sanyadevoops/archconfig/main
sed -i 's\#NTP=\NTP=0.ru.pool.ntp.org 1.ru.pool.ntp.org 2.ru.pool.ntp.org 3.ru.pool.ntp.org\g' /etc/systemd/timesyncd.conf
systemctl restart systemd-timesyncd.service
pacman-key --init
pacman-key --populate archlinux
archinstall --config $branch/sysconfig.yml --cred $branch/userconfig --silent
