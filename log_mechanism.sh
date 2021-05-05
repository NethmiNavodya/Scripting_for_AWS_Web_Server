#!bin/bash

echo "Log info: Logging the Apache server processes"
sh -x try1.sh >> log_activities
sh -x try.sh >> log_activities

echo "Log info: Collecting log activies and running scripts"
sh -x custom.sh >> log_activities
sh -x run_custom.sh >> log_activities
sh -x logs.sh >> log_activities

echo "Log info: Uploading files to GitHub and running scripts"
sh -x script_5 >> log_activities
sh -x script1.sh >> log_activities







