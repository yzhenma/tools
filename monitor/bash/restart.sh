while true; do
        work_num=`ps -ef | grep ad_ser | grep -v grep |awk '{print $2}' | xargs pwdx | grep "_test" | wc -l`
  if [[ $work_num -eq 0 ]]; then
    echo "no"
    cd /export/qatest/querydiff/adserver-trunk-git-1043_test; ./ad_server_360buy
  else
    echo "yes"
  fi
  sleep 5
done

