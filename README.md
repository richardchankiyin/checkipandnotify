Check IP and Notify
====================
This repo aims to provide source code to check ip regularly and notify (via slack webhook) if there is an ip change

Steps
-----
1. clone the repository to a particular folder location, e.g. /opt/checkip
2. cd to that directory
3. run ./gencheckandnotifycommand.sh [slack wh url]
4. examine the following files: _checkandnotify.sh and _checkandnotify.sh.cron are found
5. from _checkandnotify.sh.cron please extract the content and put it under crontab
6. deployment done

Explanation
-----------
1. _contentfile will be generated to show you once a new ip is being detected
2. _oip.log will be generated to keep the original ip for comparison in every call
3. _run_log_YYYYMMDD.out will be generated as log file for the run throughout that date

