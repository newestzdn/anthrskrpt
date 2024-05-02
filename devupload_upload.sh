#!bin/bash
wget https://devuploads.com/upload.sh

for file in *.zip;
do bash upload.sh -f "$file" -k "$DEVUPLOAD_TOKEN" >> anu1.txt

function push() {
LINKROM=$(echo *.txt)
        curl -s -F document=@$LINKROM "https://api.telegram.org/bot$TOKEN_BOT_TELE/sendDocument" \
        -F chat_id="$ID_CHAT" \
        -F "disable_web_page_preview=true" \
        -F "parse_mode=html" \
        -F caption="Build Done!." 
}

push 
