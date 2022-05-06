#get cert
docker run -it --rm --name certbot \
            -v "$(pwd)/certbot:/etc/letsencrypt" \
            -p 80:80 \
            certbot/certbot certonly