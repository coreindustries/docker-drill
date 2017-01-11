#!/bin/bash

: ${DRILL_HOME:=/opt/drill/apache-drill-1.9.0}


cd /opt/drill/apache-drill-1.9.0;
bin/sqlline -u jdbc:drill:zk=local
