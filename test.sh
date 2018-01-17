#!/bin/bash

 netstat -plan | grep :22 | awk '{print $4}' | cut -d ':' -f1  | sort | uniq -c


