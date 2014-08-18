#!/bin/sh
# I think xpg_echo is ON by default, but just in case...
shopt -s xpg_echo
(echo "\xFF\xFE\c" & iconv -f UTF-8 -t UTF-16LE ./Reports/5/TXTReserves.xls) > ./Reports/5/TXTReservesUTF-16.xls

/opt/local/bin/mutt -a ./Reports/5/TXTReservesUTF-16.xls -s "TXT Customers' reserves" -- kudina@wd-trading.com jul@texterra.com.ua alla@texterra.com.ua anya@texterra.com.ua case@texterra.com.ua ira@texterra.com.ua olya@texterra.com.ua anokhin@agfa.com.ua nastya@texterra.com.ua < ./Stock/StockBody.txt
