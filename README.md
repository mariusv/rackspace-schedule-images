##THIS IS NOT A TOOL PROVIDED/MAINTAINED OR SUPPORTED BY Rackspace##




================================
Schedule NextGen images
================================

- Homepage:  https://github.com/mariusv/rackspace-schedule-images
- Credits:   Copyright 2012 Marius Voila <marius.voila@gmail.com>
- Licence:   MIT

Description
=================

This bash script was designed to automate and simplify the remote backup
process of schedule images on Rackspace Cloud Files .  After your script is configured, you can
easily schedule(by using cron) an image backup for NextGen servers on Rackspace Cloud.





REQUIREMENT
===========
- Bash >= 3.0
- python nova-client
- crontab
- postfix (to send emails)


USAGE:
======

Install git and postfix:
-----------------------

Debian/Ubuntu:

apt-get install git postfix -y

RedHat/Centos/Fedora:

yum -y install git postfix

Install python nova-agent following the instructions from here: http://www.rackspace.com/knowledge_center/article/installing-python-novaclient-on-linux-and-mac-os

Copy the script and the config file under /root/

git clone https://github.com/mariusv/rackspace-schedule-images.git

chmod +x schedule.sh (to make it executable)

Edit nova file and add your credentials where:
----------------------------------------------

- OS_USERNAME= is your username(the user you use to login on your cloud account)
- OS_PASSWORD= is your API Key and you can find it in your Rackspace Cloud account.
- HOSTNAME= is the server you will take an image of
- DELETE= you have to choose between 'yes' or 'no' where 'yes' means you want to delete images older then 5 days and 'no' means you want to keep the older images
- TO_ADDRESS= will be the email address where you want to get notifications regarding the image process

Schedule images:
----------------

vim /etc/crontab

add: * * * * *(where * means h/m/d/M) /root/schedule.sh &

Ex:

0 0 * * *   root sh /root/schedule.sh (in this example the script will run every night at 00:00)

save and you are good to go! :-)

LICENSE:
========
Unless otherwise noted, all files are released under the [MIT license](http://en.wikipedia.org/wiki/MIT_License),
exceptions contain licensing information in them.

`MIT`: 

Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  

##If you have a feature request just send me an email##

  
