nginx-config-tester
===================

A docker repo for checking nginx.conf syntax quickly

## Usage

```console
$ git clone https://github.com/b4b4r07/nginx-config-tester
$ cd nginx-config-tester
$ ./run.sh /path/to/your_nginx.conf
Checking nginx.conf.j2 syntax...

2017/11/17 10:37:29 [emerg] 1#1: "upstream" directive is not allowed here in /etc/nginx/nginx.conf:10
nginx: [emerg] "upstream" directive is not allowed here in /etc/nginx/nginx.conf:10
nginx: configuration file /etc/nginx/nginx.conf test failed
```

## License

MIT

## Author

b4b4r07