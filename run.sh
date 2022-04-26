export VOLUME_USER=$(id wordpress -u)
docker-compose up -d

sleep 1
cat ./wireguard_config/peer1/peer1.conf 
