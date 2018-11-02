# postgis-client

## shp2pgsql

```bash
$ shp2pgsql -W cp932 -D -I -s 4612 target.shp temp > output.sql
```

```bash
$ docker run -it --rm -v `pwd`:/data shp2pgsql -W cp932 -D -I -s 4612 target.shp temp > output.sql
```

- -W [cp932, SJIS, UTF8, ...]

ソースの文字コードの指定

- -D

ダンプ形式、指定なしだとinsert statement

- -I

空間インデックスの作成

- -s [4612, 4326, 3857]

空間参照系 4612(JGD2000地理座標系)など
4612:4326なども利用可能

## refer from

[https://gist.github.com/ponkore/4024601](https://gist.github.com/ponkore/4024601)
