# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                       7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * *  command_to_execute


# Recursively delete `.DS_Store` files
#alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"


###### Sample crontab ######
# rm .DS_Store every 30th min of everyday
*/30 * * * * find . -type f -name '*.DS_Store' -ls -delete; echo "cleaning job executed @" $(date) #>> ~/Downloads/jobs.log

# upgrade brew cask at 8 on Sunday and Thursday
0 20 * * 0,4 brew upgrade; echo brew upgraded '@ $(date)' >> ~/Downloads/brew-upgrade.log

# empty the temp folder every day of the week at 8:00AM
0 8 * * * rm -rf /tmp/*
