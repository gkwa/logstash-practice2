Practice configuring logstash with different inputs coming from nxlog.

Setup:
```
wget -nc https://download.elastic.co/logstash/logstash/logstash-1.5.4.zip
7z x -y -ologstash logstash-1.5.4.zip
cd logstash
git init
git remote add origin git@github.com:taylormonacelli/logstash-practice2
git fetch -p
git checkout -t origin/master
```

Test:
```
make
```
