apt update
apt install -y docker-compose pwgen

docker volume create db_data
docker volume create wordpress_data

mkdir secrets
mkdir ftp

pwgen -1 > secrets/root
pwgen -1 > secrets/user
pwgen -1 > secrets/password
pwgen -1 > secrets/name
