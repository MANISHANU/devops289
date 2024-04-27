DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=30


while IFS= read -r line 
do 
USAGE=$(echo $line | awk -F " " '{print $6F}' |cut -d "%" -f1 )
DIRECTOTY=$(echo $line |  awk -F " " '{print $NF}' )
if [ $USAGE -ge $DISK_THRESHOLD ]
then 
 echo " Disk usge is more than threshold for $DIRECTORY : CURRENT USAGE IS: $USAGE "
fi
done <<< DISK_USAGE