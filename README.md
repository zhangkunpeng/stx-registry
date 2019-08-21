# starlingx_images_update

## 说明
该项目是为了更新StarlingX的docker images, 解决国内无法访问gcr.io k8s.gcr.io镜像仓库的问题，可以每天运行一次，以保证本地仓库中StarlingX项目镜像最新。
## 使用方法
- 修改 hosts 配置文件
- 执行更新命令
'''
ansible-playbook update.yml
'''

