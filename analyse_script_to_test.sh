#!/bin/sh

echo "Running flutter analyze..."
analysis_output=$(flutter analyze)
total_lines=$(echo "$analysis_output" | wc -l)
# Two extra not our concern lines are printed on flutter analyze
total_warning=$(($total_lines - 2))

echo "Total Warnings: $total_warning"


if [ "$total_warning" -gt 10 ]; then
    echo "More than 10 issues found. Terminating the workflow"
    exit 1
fi
