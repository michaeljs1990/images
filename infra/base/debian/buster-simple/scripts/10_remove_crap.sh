#! /bin/bash --posix

set -x

apt-get --purge -y remove \
	nano tasksel wamerican whiptail
apt-get -y autoremove

rm -fr /etc/cron.daily/{apt,aptitude,cracklib-runtime,dpkg,mlocate,passwd,popularity-contest}

rm -fr /etc/cron.weekly/{apt-xapian-index}

rm -fr /etc/update-motd.d
