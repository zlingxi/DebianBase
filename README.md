# lingxi_DebianBash
#每次安装完Debian系统后，我们总是要修改一些配置，才能满足一些对应的需求，小的修改显得非常的麻烦，耗时耗力，聆曦就自己写了一个小脚本(简单自用)，去简单的修改新安装的Debian系统的基础修改，包括：

1. .profile文件的修改，修改.profile文件主要是给没有添加环境变量的镜像去添加bin和sbin的执行变量；
2. .bashrc文件的修改，修改.bashrc文件主要是给默认没有开启快捷命令行以及ls -l列出文件夹没有颜色标注信息；
3. 将/etc/apt/sources.list备份到当前目录，加.bak后缀，修改镜像源为国内阿里云源，并且更新系统组件；
4. 添加第三方ssh root账户登录权限；
5. 安装远程目录smb挂载所使用的pakage sshfs与cifs-utils

# 使用方法：
1. 安装好Debian系统后，使用root账户登录；
2. 执行 git clone https://github.com/zlingxi/DebianBase.git
3. 执行 sh /root/DebianBase/lingxi_DebianBase.v1.01.sh 等待安装完成；
4. 如果部分没起作用。请执行init 6 或者 reboot 重启系统即可；

## 注意：
使用root账户执行本脚本；
其他的内容会在不忙的时候更新脚本，包括判定/home下是否存在其他用户目录以及修改对应配置文件等；
由于目前没有写判定，如果安装的Debian拥有除root的其他账户，请修改脚本以下内容，替换为自己的用户名即可；
1. 第26行 /home/lingxi/.profile /home/xxx/.profile --- xxx代表自己的用户名；
2. 第46行 /home/lingxi/.bashrc /home/xxx/.bashrc --- xxx代表自己的用户名；
3. 第55行 修改lingxi为自己的用户名；


2022.09.28@lingxi更新









