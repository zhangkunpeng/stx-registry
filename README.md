# stx-registry

## 说明
该项目是为了StarlingX安装部署创建本地registry, 解决国内无法访问gcr.io k8s.gcr.io镜像仓库的问题。
## 使用方法
1. 安装git,pip
2. git clone https://github.com/zhangkunpeng/stx-registry.git
3. cd stx-registry && pip install -r requirements.txt && ansible-galaxy install geerlingguy.docker
4. (在本机创建镜像仓库) ansible-playbook main.yml --limit localhost  
5. (在远端创建镜像仓库) 修改hosts文件，配置远端主机的地址和用户密码，执行 ansible-playbook main.yml --limit remote
6. (扩展）更新StarlingX的主分支镜像，ansible-playbook main.yml --limit localhost -e "clean_image_cache=True"

## 优化改进，请与我联系，谢谢