#!/bin/sh

export INFLUX_HOME=$HOME/influx_home/
export PATH=$PATH:$INFLUX_HOME/usr/bin

influx -database 'telegraf' << EOF
DROP MEASUREMENT goldilocks_session_stat;
DROP MEASUREMENT goldilocks_instance_stat;
DROP MEASUREMENT goldilocks_sql_stat;
DROP MEASUREMENT goldilocks_cluster_dispatcher_stat;
DROP MEASUREMENT goldilocks_tablespace_stat;
DROP MEASUREMENT goldilocks_ager_stat;
DROP MEASUREMENT goldilocks_session_detail;
DROP MEASUREMENT goldilocks_statement_detail;
DROP MEASUREMENT goldilocks_transaction_detail;
DROP MEASUREMENT goldilocks_ssa_stat;
DROP MEASUREMENT goldilocks_shard_table_distibution;
DROP MEASUREMENT goldilocks_shard_index_distibution;
DROP MEASUREMENT goldilocks_tech_shard;
EOF

