# 域名替换与绑定配置说明

## 1. 已完成的域名替换
- 新主域名：hxzc33.cc.cd
- 前端入口页已切换为新域名资源地址
- 代理服务已配置为使用新公共域名转发
- 后端配置已添加公共访问地址参数

## 2. 关键修改文件
- [kefu/index.html](kefu/index.html)
- [kefu/proxy_server.py](kefu/proxy_server.py)
- [kefu/sw.js](kefu/sw.js)
- [kefu/extracted/BOOT-INF/classes/application.properties](kefu/extracted/BOOT-INF/classes/application.properties)

## 3. DNS 解析填写教程
- 记录类型：A
- 主机记录：填写 @ 或者留空（表示根域名）
- 记录值：填写服务器公网 IP
- TTL：建议 600（10 分钟）

示例：
- 域名：hxzc33.cc.cd
- 解析：A @ 你的服务器公网IP 600

## 4. 部署平台绑定域名步骤
1. 在服务器或部署平台中添加站点/应用
2. 绑定域名：hxzc33.cc.cd
3. 将前端服务端口映射到 80/443
4. 配置反向代理到本地 8080（前端）和 8081（后端）
5. 启用 HTTPS

## 5. 免费 SSL 证书开启教程
### 宝塔面板
1. 打开站点 -> SSL
2. 选择 Let's Encrypt
3. 输入域名 hxzc33.cc.cd
4. 点击申请
5. 申请成功后自动启用 HTTPS

### Nginx + Certbot
```bash
sudo apt update
sudo apt install -y certbot python3-certbot-nginx
sudo certbot --nginx -d hxzc33.cc.cd
```

## 6. 运行建议
- 前端服务：监听 8080
- 后端服务：监听 8081
- 访问地址：https://hxzc33.cc.cd/
- 接口地址：https://hxzc33.cc.cd/api/...
- 登录账号：hxzc33
- 登录密码：123456
