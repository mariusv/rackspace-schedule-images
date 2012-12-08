#!/bin/bash
if [[ -f '/root/nova' ]]; then
source '/root/nova'
else
echo "Impossible to run this script because I can't find the config file!"
fi
#nova image-create $HOSTNAME $HOSTNAME-$TODAY
#sleep 2h
#echo "nova image-list | grep $HOSTNAME-$TODAY | grep SAVING"
#if [[ -f 'nova image-list | grep $HOSTNAME-$TODAY | grep SAVING' ]]; then
#echo ${BODYERR}| mail -s ${SUBJECT} ${TO_ADDRESS}

#else

#echo ${BODY}| mail -s ${SUBJECT} ${TO_ADDRESS}

#fi

if [[ "$DELETE" = 'yes' ]]; then
   echo "nova image-delete $HOSTNAME-$FIVE_DAYS_AGO"
else
exit 1
fi
