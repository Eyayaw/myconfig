# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                       7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * *  command_to_execute



###### Sample crontab ######

# upgrade brew cask every Monday at 7pm
45 19/20 * * 1,3,6 brew upgrade >> brew-upgrade.log

# empty the temp folder every day of the week at 8:00AM
0 8 * * * rm -rf /tmp/*
