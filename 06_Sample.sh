#!/bin/bash

START_TIME=$(date +%s)

sleep 2

END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME - START_TIME))

# Convert seconds to hours, minutes, seconds
HOURS=$((TOTAL_TIME / 3600))
MINUTES=$(((TOTAL_TIME % 3600) / 60))
SECONDS=$((TOTAL_TIME % 60))

echo "Script executed in: $TOTAL_TIME Seconds"
echo "Time taken: $HOURS Hour(s), $MINUTES Minute(s), $SECONDS Second(s)"
