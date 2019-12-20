## Let's deploy servers by themselves :）
``post-receive`` is a shell script for deploying server automatic by git hooks(post-receive)


## project_auto_deploy
``web-deploy.sh`` 该脚本使用的前提是前端代码本地打包dist, 后使用``ssh hostname@ip './web-deploy.sh' ``调用