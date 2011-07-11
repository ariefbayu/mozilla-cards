#!/bin/bash
#
# Usage:
# ./scripts/build-environment
#
# If successfully build, you can activate your environment
# by typing
# ~$ source env/bin/activate
#
# Install script will you system packages. You need python-rsvg installed
# system wide, to convert SVGs to PDFs.
#
# pip and virtualenv are required

PACKAGES="django django_extensions south"

for pkg in $PACKAGES;
do
    pip -E env install -s $pkg;
done