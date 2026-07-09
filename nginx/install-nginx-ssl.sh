#!/usr/bin/env bash
set -euo pipefail

apt-get update
apt-get install -y nginx certbot python3-certbot-nginx
mkdir -p /etc/nginx/conf.d
cp /workspaces/kefu/kefu/nginx/default.conf /etc/nginx/conf.d/default.conf
nginx -t
systemctl restart nginx || service nginx restart

if [ -f /etc/nginx/conf.d/default.conf ]; then
  echo "Nginx 配置已安装。"
  echo "请执行："
  echo "certbot --nginx -d hxzc33.cc.cd -d api.hxzc33.cc.cd"
fi
