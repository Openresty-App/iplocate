# iplocate 

IP定位查询

一. 说明
-----------
查询IP地理位置和网络位置。依赖纯真数据库。

*运行环境：* openresty


二. 使用
-----------

```json

curl http://127.0.0.1:80/query?ip=8.8.8.8

{
    "status": 0,
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

1. 纯真库的数据文件需要使用绝对路径, 需要改为相对路径
2. 数据文件缓存到内存


四. Depend
-----------

```
sudo yum install yum-utils
sudo yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
sudo yum install openresty
sudo yum install openresty-opm
sudo opm install xiaooloong/lua-resty-iconv
```

五. Performance
-----------

```
Running 10s test @ http://172.16.213.183:80/query?ip=8.8.8.8
  10 threads and 1000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   123.04ms   87.80ms 564.50ms   71.38%
    Req/Sec   786.95    126.04     2.18k    81.52%
  Latency Distribution
     50%  104.11ms
     75%  167.63ms
     90%  245.91ms
     99%  383.84ms
  78418 requests in 10.10s, 22.14MB read
Requests/sec:   7765.10
Transfer/sec:      2.19MB
```
