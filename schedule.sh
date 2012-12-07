#!/bin/bash
if [[ -f '/root/.nova' ]]; then
source '/root/.nova'
else
echo "Impossible to run this script because I can't find the config file!"
fi
HOSTNAME='the_server_you_want_to_take_image_of'
TODAY=$(date +"%M_%H_%d_%m_%Y")
FIVE_DAYS_AGO=$(date --date='5 days ago' +"%M_%H_%d_%m_%Y")
nova image-create $HOSTNAME $HOSTNAME-$TODAY
sleep 2h
echo "nova image-list | grep $HOSTNAME-$TODAY | grep SAVING"
if [[ -f 'nova image-list | grep $HOSTNAME-$TODAY | grep SAVING' ]]; then
echo ${BODYERR}| mail -s ${SUBJECT} ${TO_ADDRESS}

else

echo ${BODY}| mail -s ${SUBJECT} ${TO_ADDRESS}

fi

nova image-delete $HOSTNAME-$FIVE_DAYS_AGO
