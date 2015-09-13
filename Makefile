sample=access_log_Jul95
sample_zip=NASA_$(sample).gz

test: $(sample)
	-taskkill /F /IM java.exe 2>/dev/null
	cygstart 'bin/logstash.bat' agent -f test.conf
	sleep 10 #allow logstash to start up
	head -1 $(apache_sameple) | nc -v -w 1 127.0.0.1 514

$(sample):
	wget -nc ftp://ita.ee.lbl.gov/traces/$(sample_zip)
	7za x $(sample_zip)

clean:
	rm -rf data/
