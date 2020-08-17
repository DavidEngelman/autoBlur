wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1NvxKyLvsh-I6JQSewipR04VdrSMS0RaG' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1NvxKyLvsh-I6JQSewipR04VdrSMS0RaG" -O head.zip && rm -rf /tmp/cookies.txt
unzip head.zip
mv head darknet/build/darknet/x64/data
