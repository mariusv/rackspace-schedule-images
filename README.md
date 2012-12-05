ABOUT THIS SCRIPT
=================

This bash script was designed to automate and simplify the remote backup
process of schedule images on Rackspace Cloud Files .  After your script is configured, you can
easily schedule(by using cron) an image backup for NextGen servers on Rackspace Cloud.


BEFORE YOU START
================



USAGE
=====

Install git
------------

Debian/Ubuntu:

apt-get install git -y

RedHat/Centos/Fedora:

yum -y install git

Install python nova-agent following the instructions from here: http://www.rackspace.com/knowledge_center/article/installing-python-novaclient-on-linux-and-mac-os

Copy the script and the config file under /root

git clone https://github.com/mariusv/rackspace-schedule-images.git

chmod +x schedule.sh (to make it executable)

Edit nova file and add your credentials where:
OS_USERNAME is your username(the user you use to login on your cloud account)
OS_PASSWORD is your API Key and you can find it in your Rackspace Cloud account.

Schedule images:
----------------

vim /etc/crontab

add: * * * * *(where * means h/m/d/M) /root/schedule.sh &

save and you are good to go! :-)
