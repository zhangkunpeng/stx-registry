# starlingx_images_update

## 说明
该项目是为了更新StarlingX的docker images, 解决国内无法访问gcr.io k8s.gcr.io镜像仓库的问题，可以每天运行一次，以保证本地仓库中StarlingX项目镜像最新。
## 使用方法
1. 安装ansible, git
2. git clone https://github.com/zhangkunpeng/starlingx_images_update.git
3. ansible-playbook starlingx_images_update/src/update.yml
