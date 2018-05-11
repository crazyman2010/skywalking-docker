在ubunt16.04中测试通过


启动方法：
修改start.sh里面SKYWALKING_HOST=主机IP
执行start.sh
20秒后服务会启动（因为skywalking需要等es起来后才能启动，否则会启动失败，延时在skywalking-startup.sh中修改）
WEB端口被修改为9920，所以启动后查看界面的地址是： http://localhost:9920

说明：
配置中端口有修改，目前web在9920， skywalking在9921, 9922, 9923
如果修改端口，需要修改config/application.yml, skywalking-webappService.sh, start.sh
