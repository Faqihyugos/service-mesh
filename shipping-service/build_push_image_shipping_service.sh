# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image shipping-service, dan memiliki tag latest.
docker build -t shipping-service:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format github packages.
docker tag shipping-service:latest ghcr.io/faqihyugos/shipping-service:latest

# Login ke Docker Hub/ github packages
echo $PASSWORD_PACKAGES | docker login ghcr.io --username Faqihyugos --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/faqihyugos/shipping-service:latest