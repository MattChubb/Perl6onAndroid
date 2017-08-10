# Using GNURoot Wheezy

apt-get update
apt-get upgrade

## crude but fast way, installs perl6 2014.07 and perl5.20 at time of writing
apt-get install rakudo
apt-get install perl


## Proper way

## rakudostar instructions
apt-get install build-essential git libssl-dev
git clone https://github.com/tadzik/rakudobrew ~/.rakudobrew 
echo 'export PATH=~/.rakudobrew/bin:$PATH' >> ~/.bashrc 
source ~/.bashrc

# Unable to get this to work from GNURoot Debian, as it doesn't properly implelement permission changes
# Need external root tool that can mount file system as rw
# I used TotalCommander, Couldn't get terminal emulator to do it but I'm sure there's a way
# Unnecessary on GNURoot Wheezy.
# chmod 777 /data/media/0/GNURoot/home/.rakudobrew/bin/rakudobrew


# The following will take ages, start it running and go make a few cups of coffee, maybe go to a Perl talk or two...
# Currently failing due to out of memory error (137 and occasionally 512)
# rakudobrew build moar
# rakudobrew build zef


# Hacking around the compile errors
cd ~/.rakudobrew/moar-nom/
Configure.pl --gen-moar
# make
# the above gets a 137 out of memory error, so try:
# make -j 1
# this still gets a 137 error. I got nothing here.
make -j 1 -i -k
make install


## Version checks
perl --version
perl6 --version

perl6 -e "print \"Hello, world\!\n\";

