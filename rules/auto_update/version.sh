CURR_PATH="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"
RULE_PATH=${CURR_PATH%\/*}
RULE_FILE=${RULE_PATH}/rules.json.js


for filename in `ls $RULE_PATH`
# for filename in "chnroute2"
do
#		echo $RULE_PATH/$filename
		line4=${filename%.*}
#		echo line4：$line4

		line3_jq_md5="."$line4".md5"
		line3=`cat $RULE_FILE | jq -r "$line3_jq_md5"`
#		echo $line3"---------------------"
		
		if [ $line3 = "null" ]; then
			line3=`echo $RULE_PATH/$filename | md5sum | awk -F" " {'print $1'}`
		fi 
#		echo $line3========================

		line1_jq_date="."$line4".date"
		line1_time=`cat $RULE_FILE | jq -r "$line1_jq_date"`
	
		if [ "$line1_time" = "null" ]; then
			line1_timestamp=`stat -c %Y $RULE_PATH/$filename`
			line1=`date +%F -d @$line1_timestamp`	
		else			
			line1=`date +%F -d "$line1_time"`
		fi
#		echo $filename
		echo $line1" # "$line3" "$line4
done