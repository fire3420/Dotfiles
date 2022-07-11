## My personal dotfiles

For docker:
```bash
docker run -it -v /volume2/John2/nvim_docker/:/shared --name tst1 ubuntu:18.04 bash

# or use saved image
docker run -it -v /volume2/John2/nvim_docker/:/shared --name tst1 jy/ubuntu:vim bash
```

Ubuntu:
```bash
apt-get -y upgrade && apt-get -y update && apt install -y sudo
apt-get install -y curl
adduser john
usermod -aG sudo john
su john
```

sh -c "$(curl -fsSL https://raw.githubusercontent.com/fire3420/Dotfiles/nvim/newsetup.sh)"
