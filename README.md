# iplocate 

IP定位查询

一. 说明
-----------
查询IP地理位置和网络位置。依赖纯真数据库。

*运行环境：* openresty


二. 使用
-----------

```json

curl http://127.0.0.1:10582/query?ip=8.8.8.8

{
"status": 200,
"message": "ok",
"data": [
{
"ip": "8.8.8.8",
"geo": "美国",
"location": "加利福尼亚州圣克拉拉县山景市谷歌公司DNS服务器"
}
]
}
```

纯真数据库主页：http://www.cz88.net
需要在Windows安装后取出qqwry.dat


三. Todo
-----------

1. 纯真库默认编码是GB2312，需要改为UTF-8
2. 纯真库的数据文件需要使用绝对路径, 需要改为相对路径

