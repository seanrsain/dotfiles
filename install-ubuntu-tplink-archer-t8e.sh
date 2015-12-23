# From the answer by chili555 on http://askubuntu.com/questions/689057/is-it-possible-to-use-a-tp-link-archer-t8e-wireless-card-on-ubuntu-14-04

cd /media/chris/Ubuntu\ 15.10\ amd64/pool/main/d/dkms/
sudo dpkg -i dkms*.deb
cd /media/chris/Ubuntu\ 15.10\ amd64/pool/restricted/b/bcmwl/
sudo dpkg -i bcmwl*.deb
sudo modprobe wl
