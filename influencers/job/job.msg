<DCS_VERSION>	2.4
<SELF_PATH>	/data/rank/tools/dcs/dcs.php
<SELF_MD5>	9cb9aeb6432a73345e95d1c5c437543c
<REMOTE_MD5>	9cb9aeb6432a73345e95d1c5c437543c

<VARS-CHECK>
<DONE>

<JOB-CHECK>
<JOB> in_out               [EXEC]   cat                                      sh -x work/incomm_stat.sh               
<JOB> sort_sum             [EXEC]   sh -x work/sort_map.sh                   sh -x work/sort_reduce.sh               
<JOB> cover_calc           [IGNORE] sh -x work/cover_map.sh                  sh -x work/cover_reduce.sh              
<JOB> propagation_calc     [IGNORE] sh -x work/propagation_map.sh            sh -x work/propagation_reduce.sh        
<JOB> behave_stat          [IGNORE] sh -x work/behave_map.sh                 sh -x work/behave_reduce.sh             
<JOB> order_stat           [IGNORE] sh -x work/order_map.sh                  sh -x work/order_reduce.sh              
<JOB> order                [IGNORE] sh -x work/order.sh                      cat                                     
<JOB> stat                 [IGNORE] sh -x work/stat.sh                       sh -x work/stat_reduce.sh               
<JOB> feature_calc         [IGNORE] sh -x work/feature.sh                    sh -x work/feature_reduce.sh            
<JOB> feature_comm         [IGNORE] sh -x work/comm_feature.sh               sh -x work/comm_feature_reduce.sh       
<JOB> in_comm              [IGNORE] sh -x work/incomm_map.sh                 sh -x work/incomm_reduce.sh             
<JOB> in_comm_stat         [IGNORE] cat                                      sh -x work/incomm.sh                    
<DONE>

<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/cover_map.sh	sh -x work/cover_map.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/cover_reduce.sh	sh -x work/cover_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/propagation_map.sh	sh -x work/propagation_map.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/propagation_reduce.sh	sh -x work/propagation_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/behave_map.sh	sh -x work/behave_map.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/behave_reduce.sh	sh -x work/behave_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/order_map.sh	sh -x work/order_map.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/order_reduce.sh	sh -x work/order_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/order.sh	sh -x work/order.sh
<INFO>	<EXEC_FILE>		cat
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/stat.sh	sh -x work/stat.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/stat_reduce.sh	sh -x work/stat_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/feature.sh	sh -x work/feature.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/feature_reduce.sh	sh -x work/feature_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/comm_feature.sh	sh -x work/comm_feature.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/comm_feature_reduce.sh	sh -x work/comm_feature_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/sort_map.sh	sh -x work/sort_map.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/sort_reduce.sh	sh -x work/sort_reduce.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/incomm_map.sh	sh -x work/incomm_map.sh
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/incomm_reduce.sh	sh -x work/incomm_reduce.sh
<INFO>	<EXEC_FILE>		cat
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/incomm.sh	sh -x work/incomm.sh
<INFO>	<EXEC_FILE>		cat
<INFO>	<EXEC_FILE>	/home/rank/wangdanying/influencers/work/incomm_stat.sh	sh -x work/incomm_stat.sh
mkdir -p /home/rank/wangdanying/influencers/log;
mkdir -p /home/rank/wangdanying/influencers/data;
cd /home/rank/wangdanying/influencers/work;
rm -rf influence_calc.zip;
zip -r influence_calc.zip *;
cd -;
<INFO>	<EXEC>	in_out	hadoop
<INFO>	<INPUT>	scheme	hdfs
<INFO>	<INPUT>	type	dir
<INFO>	<INPUT>	data_src	/user/rank/wangdanying/influencers/in_comm_stat
<INFO>	<INPUT>	dir_target	/user/rank/wangdanying/influencers
<INFO>	<INPUT>	del	/user/rank/wangdanying/influencers/in_comm_stat
<INFO>	<INPUT>	input	/user/rank/wangdanying/influencers/in_comm_stat/*
<INFO>	<OUTPUT>	scheme	local
<INFO>	<OUTPUT>	type	dir
<INFO>	<OUTPUT>	data_aim	/home/rank/wangdanying/influencers/data/in_out
<INFO>	<OUTPUT>	dir_target	/home/rank/wangdanying/influencers/data
<INFO>	<OUTPUT>	del	/home/rank/wangdanying/influencers/data/in_out
<INFO>	<OUTPUT>	output	/user/rank/wangdanying/influencers/in_out

<INFO>	in_out	<SRC>	hdfs:/user/rank/wangdanying/influencers/in_comm_stat
<INFO>	in_out	<INPUT>	/user/rank/wangdanying/influencers/in_comm_stat/*
<INFO>	in_out	<OUTPUT>	/user/rank/wangdanying/influencers/in_out
<INFO>	in_out	<AIM>	local:/home/rank/wangdanying/influencers/data/in_out
mkdir -p /home/rank/wangdanying/influencers/data/dcs.trash;
/usr/local/webserver/hadoop/bin/hadoop fs -rm -r -f /user/rank/wangdanying/influencers/in_out-tmp;
/usr/local/webserver/hadoop/bin/hadoop jar /usr/local/webserver/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
 -archives /home/rank/wangdanying/influencers/work/influence_calc.zip'#work' \
 -mapper "cat" \
 -reducer "sh -x work/incomm_stat.sh" \
 -input "/user/rank/wangdanying/influencers/in_comm_stat/*" \
 -output "/user/rank/wangdanying/influencers/in_out-tmp" \
 -partitioner "org.apache.hadoop.mapred.lib.KeyFieldBasedPartitioner" \
 -jobconf stream.map.output.field.separator="	" \
 -jobconf stream.num.map.output.key.fields="3" \
 -jobconf map.output.key.field.separator="	" \
 -jobconf num.key.fields.for.partition="2" \
 -jobconf mapred.reduce.tasks="997" \
 -jobconf mapred.job.map.capacity="32" \
 -jobconf mapred.job.reduce.capacity="32" \
 -jobconf mapred.compress.map.output="false" \
 -jobconf mapred.output.compress="false" \
 -jobconf mapred.job.priority="NORMAL" \
 -jobconf mapred.job.queue.name="offline" \
 -jobconf stream.memory.limit="1024" \
 -jobconf mapred.map.capacity.per.tasktracker="7" \
 -jobconf mapred.reduce.capacity.per.tasktracker="7" \
 -jobconf mapred.job.name="influence_calc.in_out" \
 1>/home/rank/wangdanying/influencers/log/influence_calc.in_out.msg 2>/home/rank/wangdanying/influencers/log/influence_calc.in_out.err;
/usr/local/webserver/hadoop/bin/hadoop fs -rm -r -f /user/rank/wangdanying/influencers/in_out;
/usr/local/webserver/hadoop/bin/hadoop fs -mv /user/rank/wangdanying/influencers/in_out-tmp /user/rank/wangdanying/influencers/in_out;
mv /home/rank/wangdanying/influencers/data/in_out /home/rank/wangdanying/influencers/data/dcs.trash/in_out.1474270929;
mkdir -p /home/rank/wangdanying/influencers/data;
/usr/local/webserver/hadoop/bin/hadoop fs -get /user/rank/wangdanying/influencers/in_out /home/rank/wangdanying/influencers/data/in_out;
<INFO>	<EXEC>	sort_sum	hadoop
<INFO>	<INPUT>	scheme	hdfs
<INFO>	<INPUT>	type	dir
<INFO>	<INPUT>	data_src	/user/rank/wangdanying/influencers/in_out
<INFO>	<INPUT>	dir_target	/user/rank/wangdanying/influencers
<INFO>	<INPUT>	del	/user/rank/wangdanying/influencers/in_out
<INFO>	<INPUT>	input	/user/rank/wangdanying/influencers/in_out/*
<INFO>	<OUTPUT>	scheme	local
<INFO>	<OUTPUT>	type	dir
<INFO>	<OUTPUT>	data_aim	/home/rank/wangdanying/influencers/data/comm_inf
<INFO>	<OUTPUT>	dir_target	/home/rank/wangdanying/influencers/data
<INFO>	<OUTPUT>	del	/home/rank/wangdanying/influencers/data/comm_inf
<INFO>	<OUTPUT>	output	/user/rank/wangdanying/influencers/comm_inf

<INFO>	sort_sum	<SRC>	hdfs:/user/rank/wangdanying/influencers/in_out
<INFO>	sort_sum	<INPUT>	/user/rank/wangdanying/influencers/in_out/*
<INFO>	sort_sum	<OUTPUT>	/user/rank/wangdanying/influencers/comm_inf
<INFO>	sort_sum	<AIM>	local:/home/rank/wangdanying/influencers/data/comm_inf
mkdir -p /home/rank/wangdanying/influencers/data/dcs.trash;
/usr/local/webserver/hadoop/bin/hadoop fs -rm -r -f /user/rank/wangdanying/influencers/comm_inf-tmp;
/usr/local/webserver/hadoop/bin/hadoop jar /usr/local/webserver/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
 -archives /home/rank/wangdanying/influencers/work/influence_calc.zip'#work' \
 -mapper "sh -x work/sort_map.sh" \
 -reducer "sh -x work/sort_reduce.sh" \
 -input "/user/rank/wangdanying/influencers/in_out/*" \
 -output "/user/rank/wangdanying/influencers/comm_inf-tmp" \
 -partitioner "org.apache.hadoop.mapred.lib.KeyFieldBasedPartitioner" \
 -jobconf stream.map.output.field.separator="	" \
 -jobconf stream.num.map.output.key.fields="1" \
 -jobconf map.output.key.field.separator="	" \
 -jobconf num.key.fields.for.partition="1" \
 -jobconf mapred.reduce.tasks="997" \
 -jobconf mapred.job.map.capacity="32" \
 -jobconf mapred.job.reduce.capacity="32" \
 -jobconf mapred.compress.map.output="false" \
 -jobconf mapred.output.compress="false" \
 -jobconf mapred.job.priority="NORMAL" \
 -jobconf mapred.job.queue.name="offline" \
 -jobconf stream.memory.limit="1024" \
 -jobconf mapred.map.capacity.per.tasktracker="7" \
 -jobconf mapred.reduce.capacity.per.tasktracker="7" \
 -jobconf mapred.job.name="influence_calc.sort_sum" \
 1>/home/rank/wangdanying/influencers/log/influence_calc.sort_sum.msg 2>/home/rank/wangdanying/influencers/log/influence_calc.sort_sum.err;
/usr/local/webserver/hadoop/bin/hadoop fs -rm -r -f /user/rank/wangdanying/influencers/comm_inf;
/usr/local/webserver/hadoop/bin/hadoop fs -mv /user/rank/wangdanying/influencers/comm_inf-tmp /user/rank/wangdanying/influencers/comm_inf;
mv /home/rank/wangdanying/influencers/data/comm_inf /home/rank/wangdanying/influencers/data/dcs.trash/comm_inf.1474271047;
mkdir -p /home/rank/wangdanying/influencers/data;
/usr/local/webserver/hadoop/bin/hadoop fs -get /user/rank/wangdanying/influencers/comm_inf /home/rank/wangdanying/influencers/data/comm_inf;
