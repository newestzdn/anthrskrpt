#!bin/bash

for file in crDroidAndroid-14.0-*.zip;
do curl -s -T "$file" https://pixeldrain.com/api/file/; done >> anu1.txt

function push() {
LINKROM=$(echo *.txt)
        curl -s -F document=@$LINKROM "https://api.telegram.org/bot$TOKEN_BOT_TELE/sendDocument" \
        -F chat_id="$ID_CHAT" \
        -F "disable_web_page_preview=true" \
        -F "parse_mode=html" \
        -F caption="Build Done!." 
}

push

