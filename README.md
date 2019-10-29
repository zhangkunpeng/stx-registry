# stx-registry

## 说明
该项目是为了StarlingX安装部署创建本地registry, 解决国内无法访问gcr.io k8s.gcr.io镜像仓库的问题。
## 使用方法
1. 安装git,pip
2. git clone https://github.com/zhangkunpeng/stx-registry.git
3. cd stx-registry && pip install -r requirements.txt && ansible-galaxy install geerlingguy.docker
4. ansible-playbook main.yml --limit localhost
