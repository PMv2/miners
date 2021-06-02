#!/bin/bash

cp xmr.conf.tpl xmr.conf

sed -i.bak 's/{protocol}/'"$PROTOCOL"'/g' xmr.conf
sed -i.bak 's/{poolhostname}/'"$POOLHOSTNAME"'/g' xmr.conf
sed -i.bak 's/{port}/'"$PORT"'/g' xmr.conf
sed -i.bak 's/{wallet}/'"$WALLET"'/g' xmr.conf
sed -i.bak 's/{password}/'"$PASSWORD"'/g' xmr.conf
sed -i.bak 's/{threads}/'"$THREADS"'/g' xmr.conf
sed -i.bak 's/{rawintensity}/'"$RAWINTENSITY"'/g' xmr.conf
sed -i.bak 's/{worksize}/'"$WORKSIZE"'/g' xmr.conf

./miner xmr.conf
