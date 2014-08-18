#!/bin/sh
# I think xpg_echo is ON by default, but just in case...
shopt -s xpg_echo
(echo "\xFF\xFE\c" & iconv -f UTF-8 -t UTF-16LE ./Stock/AutoreservTXT.xls) > ./Stock/AutoreservTXTUTF-16.xls

/opt/local/bin/mutt -a ./Stock/AutoreservTXTUTF-16.xls -s "Removal reserve TXT" -- lada@wd-trading.com kudina@wd-trading.com jul@texterra.com.ua ira@texterra.com.ua alla@texterra.com.ua anya@texterra.com.ua olya@texterra.com.ua case@texterra.com.ua nastya@texterra.com.ua yana@texterra.com.ua< ./Stock/StockBody.txt
