# docker-nginx-for-proxy

로컬 hosts 에 다음 라인 추가
127.0.0.1 local2.amoremall.com

도커허브 이용시

이후 도커 풀 받고 실행
docker pull vhcns5/nginx-proxy-majac:latest
docker run -p 80:80 --name majac-nginx-proxy -t vhcns5/nginx-proxy-majac:latest

클론받고 실행시

docker build -t nginx-proxy-majac:latest .
docker run -p 80:80 --name majac-nginx-proxy -t nginx-proxy-majac:latest

이후 error 로그 tail
docker logs -f majac-nginx-proxy