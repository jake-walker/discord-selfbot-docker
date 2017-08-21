#!/bin/bash

echo " ___  _                   _   ___      _  __ _         _   "
echo "|   \(_)___ __ ___ _ _ __| | / __| ___| |/ _| |__  ___| |_ "
echo "| |) | (_-</ _/ _ \ '_/ _\` | \__ \/ -_) |  _| '_ \/ _ \  _|"
echo "|___/|_/__/\__\___/_| \__,_| |___/\___|_|_| |_.__/\___/\__|"
echo ""
echo "by appu1232"
echo "Dockerized by Jake Walker"
echo ""

echo "===> STEP 1/2 - Generate ./settings/config.json"
echo '{
  "token": "$TOKEN",
  "cmd_prefix": ">",
  "customcmd_prefix": ".",
  "bot_identifier": ":robot:"
}' > /opt/Discord-Selfbot/settings/config.json
echo ""

echo "===> STEP 2/2 - Execute Bot Script"
exec "/opt/Discord-Selfbot/run_linuxmac.sh" "$@"
