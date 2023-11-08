#!/bin/sh

echo "Running flutter analyze..."
echo "Running flutter analyze..."
analysis_output=$(flutter analyze)
echo "$analysis_output" > temp.txt
total_warnings=$(grep -c '(error:|warning:|hint:|info:) (.*)' temp.txt)
echo "Total Warnings: $total_warnings"
rm temp.txt
if [ "$total_warnings" -gt 10 ]; then
  echo "More than 10 issues found. Terminating the workflow"
  exit 1
fi

exit 0
