cd centos

docker build -t centos-wsl .
docker run --name centos-wsl centos-wsl
docker export --output="centos-wsl.tar" centos-wsl

wsl --import centos-wsl d:\centos-wsl centos-wsl.tar
