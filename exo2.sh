#!/bin/bash

CRON_ENTRY="*/5 * * * * /bin/bash /path/to/your/script.sh /root/folder/\$(date +\%Y-\%m-\%d)"

(crontab -l; echo "$CRON_ENTRY" ) | crontab -
