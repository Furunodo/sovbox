#!/bin/bash
# @todo check if this can become part of brew?

# @todo VERSION should be derived from `curl https://downlad.electrum.org/` 
VERSION=3.3.8

mkdir -p /tmp/electrum
cd /tmp/electrum

wget https://download.electrum.org/$VERSION/electrum-$VERSION.dmg
wget https://download.electrum.org/$VERSION/electrum-$VERSION.dmg.asc


# See http://docs.electrum.org/en/latest/gpg-check.html?highlight=gpg
#
# Obtain public GPG key for ThomasV
gpg --keyserver keys.gnupg.net --recv-keys 6694D8DE7BE8EE5631BED9502BD5824B7F9470E6

gpg --verify electrum-$VERSION.dmg.asc electrum-$VERSION.dmg
RESULT=$?

if [ $RESULT -eq 0 ]; then
    echo "All seems good"
    echo "Note that the 'not certified with a trusted signature' error can be resolved by joining GPG signing parties."
    open electrum-$VERSION.dmg
else
    echo "WARNING, electrum-$VERSION.dmg doesn't match the author's signatore"
fi

# @todo
#  - help with setting up tor on osx?  brew install tor && brew services start tor
#  - help configure electrum to use tor and the user's sovbox?
