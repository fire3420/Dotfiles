apt-get -y upgrade && apt-get -y update
apt-get install -y wget git zip python3-pip
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt -y update
apt -y --fix-broken install
