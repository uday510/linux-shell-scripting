#!/bin/bash


# Display the UID and username of the user executing this script.

echo "Your UID is ${UID}."


# Display if the UID does NOT match 1000

UID_TO_TEST_FOR='1000'


if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
fi

# Display the Username.
USER_NAME=$(id -un)


# Test if the command succeded.
if [[ "${?}" -ne 0 ]]
then 
	echo 'The is command did not execute successfully.'
	exit 1

fi

echo "Your username is ${USER_NAME}"

# You can use a string test conditional.
USER_NAME_TO_TEST_FOR='teja.bandi'

if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username matches ${USER_NAME_TO_TEST_FOR}."
fi

# Test for != (not equal) for the string.

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username does not match ${USER_NAME_TO_TEST_FOR}"
	exit 1

fi


