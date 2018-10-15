which nginx || {
    apt-get update
    apt-get install -y nginx
}

sudo systemctl enable nginx
sudo systemctl restart nginx
