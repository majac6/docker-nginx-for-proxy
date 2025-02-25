FROM nginx:alpine

# 커스텀 Nginx 설정 파일을 컨테이너 내 적절한 위치로 복사
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
