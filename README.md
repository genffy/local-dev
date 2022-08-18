|-- docker-compose
    |-- docker-compose.yml # 编写 docker-compose 编排逻辑的
    |-- mongo
    |--  -- mongo-volume   # 用来挂载 mongodb 容器中的数据库数据
    |   `-- init-mongo.js  # 用来创建 mongodb 初始账户的
    |-- nginx # nginx 的配置

进入当前文件夹下执行：docker-compose up -d --build