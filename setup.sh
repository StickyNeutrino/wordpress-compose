apt update
apt install -y docker-compose pwgen

docker volume create db_data
docker volume create wordpress_data

mkdir secrets
mkdir ftp
mkdir -p ./certbot/www ./certbot/conf

useradd wordpress
export VOLUME_USER=$(id wordpress -u)

pwgen -1 > secrets/root
pwgen -1 > secrets/user
pwgen -1 > secrets/password
pwgen -1 > secrets/name

#get real cert
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d testing.love2lingo.com

