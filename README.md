# docker-nginx-for-proxy

1. 로컬 hosts 에 다음 라인 추가
127.0.0.1 {STG 아모레몰 주소}

2-1. 도커허브 이용시
```
docker pull vhcns5/nginx-proxy-majac:latest
```
```
docker run -p 80:80 --name majac-nginx-proxy -t vhcns5/nginx-proxy-majac:latest
```

2-2. 클론받고 실행시
```
docker build -t nginx-proxy-majac:latest .
```
```
// 이미 컨테이너가 존재할 경우 삭제 필요
docker stop majac-nginx-proxy && docker rm majac-nginx-proxy
```
```
docker run -p 80:80 --name majac-nginx-proxy -t nginx-proxy-majac:latest
```

3. 이후 error 로그 tail
```
docker logs -f majac-nginx-proxy
```