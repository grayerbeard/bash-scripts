#!/bin/bash

# Daily schedule printer! v0.5
# gareth@halfacree.co.uk / https://freelance.halfacree.co.uk
# Depends: Various defaults plus task, figlet, fortune, cowsay,
# gcalcli with oauth configured, and a 'net connection.

# This version expects a custom TaskWarrior report type: "dymo"
# If you don't have one:
# Config Variable         Value
# report.dymo.columns     id,project,description.count
# report.dymo.description List of due tasks formatted for the Dymo
# report.dymo.filter      due.after:yesterday and due.before:tomorrow and status:pending
# report.dymo.labels      ID,Project,Description
# report.dymo.sort        project+/,entry+

# Current formatting optimised for a Dymo 450 using S0929100 name cards.
# Set CUPS to 40cpi/18lpi and a page size of 4.6x7.1cm.

# Tasty variables
LOCATION="bradford"							# Insert your location here
CALENDARS="--calendar=Home --calendar=Work --calendar=Deadlines"	# Calendars to be used by GCalCLI
SCHEDULEFILE="/tmp/dailyschedule.txt"					# Temporary file for the output
WEATHERFILE="/tmp/weather.txt"						# Temporary file for the weather
COWFILE="/tmp/cowfile.txt"						# Temporary file for the cowsay output
PRINTERNAME="LabelWriter-450"						# Name of lp-compatible printer

# The header
date +"%a %F" | figlet -f small.flf > "$SCHEDULEFILE"

# Let's start with the weather and cow...
curl -s wttr.in/$LOCATION?0QT > "$WEATHERFILE"
fortune -a -s | cowsay -W 30 > "$COWFILE"
paste "$COWFILE" "$WEATHERFILE" | column -s $'\t' -t >> "$SCHEDULEFILE"
printf "\n" >> "$SCHEDULEFILE"

# Now tasks...
echo -n "TASKS DUE TODAY" >> "$SCHEDULEFILE"
task dymo >> "$SCHEDULEFILE" || printf "\nNo tasks due!\n" >> "$SCHEDULEFILE"
printf "\n" >> "$SCHEDULEFILE"

# Calendar...
echo -n "THIS WEEK'S SCHEDULE" >> "$SCHEDULEFILE"
gcalcli calw 1 --calendar="Holidays in United Kingdom" $CALENDARS --nocolor --nolineart -w 9 >> "$SCHEDULEFILE"

# Now wrap and print...
if [ "$1" == "--print" ]; then
    fold -w 72 -s "$SCHEDULEFILE" | lp -d $PRINTERNAME
else
    fold -w 72 -s "$SCHEDULEFILE" | cat "$SCHEDULEFILE"
fi

# Housekeeping
rm "$SCHEDULEFILE" "$WEATHERFILE" "$COWFILE"
exit 0