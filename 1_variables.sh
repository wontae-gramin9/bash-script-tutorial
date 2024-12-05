#!/bin/bash

# NOT GOOD
# cp /my/location/from /my/location/to

# BETTER
# MY_LOCATION_FROM=/my/location/from
# MY_LOCATION_TO=/my/location/to

# cp $MY_LOCATION_FROM $MY_LOCATION_TO
# cp "$MY_LOCATION_FROM/here" $MY_LOCATION_TO/there

FIRST_NAME=Wontae
LAST_NAME=Choi

echo Hello $FIRST_NAME $LAST_NAME