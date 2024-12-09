#!/bin/bash

# This script generates a list of random passwords


# A random number as a passowrd 

PASSWORD="${RANDOM}"

echo "${PASSWORD}"

# Three random numbers together

PASSWORD="${RANDOM}${RANDOM}${RANDOM}"


echo "${PASSWORD}"


# Use the current date/time as the basis for the password.

PASSWORD="$(date +%s)"

PASSWORD=$(date +s%N)
echo "${PASSWORD}"



# A better password.
PASSWORD=$(date +%s%N | sha256sum | head -c32)

echo "${PASSWORD}"


# An even better password

SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-+=' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
