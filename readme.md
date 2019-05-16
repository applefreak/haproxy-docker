# `haproxy-docker`

Quick Docker container with HAProxy to test API & services for your app

## Build

```bash
$ docker build -t my-haproxy .
```

## Run

```bash
$ docker run -d --name my-running-haproxy -p 20680:20680 -p 9000:9000 my-haproxy
```

Add more `-p` as you go...

## `hatop`

```bash
$ docker exec -it <CONATINER_ID> bash
# hatop -s /var/run/haproxy.stat
```

## License

[MIT](https://poyu.mit-license.org)
