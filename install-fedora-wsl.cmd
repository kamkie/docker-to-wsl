cd fedora

docker build -t fedora-wsl .
docker run --name fedora-wsl fedora-wsl
docker export --output="fedora-wsl.tar" fedora-wsl

wsl --import fedora-wsl d:\fedora-wsl fedora-wsl.tar
