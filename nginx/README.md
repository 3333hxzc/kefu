# 容器内 Nginx 反向代理与 SSL 配置

## 1. 作用
- 将访问 hxzc33.cc.cd 转发到本机 8080
- 将访问 api.hxzc33.cc.cd 转发到本机 8081
- 让浏览器无需手动输入端口号

## 2. 一键安装
```bash
chmod +x /workspaces/kefu/kefu/nginx/install-nginx-ssl.sh
/workspaces/kefu/kefu/nginx/install-nginx-ssl.sh
```

## 3. 申请 SSL
```bash
certbot --nginx -d hxzc33.cc.cd -d api.hxzc33.cc.cd
```

## 4. DNSHE 平台 CNAME 解析
- 在 DNSHE 控制台新增两条 CNAME 记录：
  - hxzc33.cc.cd -> 你的临时外网二级域名
  - api.hxzc33.cc.cd -> 你的临时外网二级域名

## 5. 说明
- 如果你当前只有临时外网二级域名，建议把主域名指向该临时地址，然后由容器内 Nginx 代理转发。
- 这方案适合免费容器、无固定公网 IP 的场景。
