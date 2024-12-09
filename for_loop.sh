#!/bin/bash

# This script generates a random password for each user specified on the command line.

# Display what the user typed on the command line.

echo "You executed this commnad: ${0}"


# Display the path and filename of the script.
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script."


# Tell them how many arguments they passed in.
# (Inside the script they are parameter, outside they are argument.)
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} arguments(s) on the command line."

# Make sue they at least supply one argument

if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
        echo "Usage: ${0} USER_NAME [USER_NAME]..."
        exit 1
fi


# Generate and display a password for each paramater.

for USER_NAME in "${@}"
do
        PASSWORD=$(date +%s%N | sha256sum | head -c48)
        echo "${USER_NAME}: ${PASSWORD}"
done