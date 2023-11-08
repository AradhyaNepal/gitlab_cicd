#!/bin/sh

echo "Running flutter analyze..."
flutter analyze >temp.txt
total_warnings=$(grep -c 'warning:' temp.txt)
echo "Total Warnings: $total_warnings"
rm temp.txt
if [ "$total_warnings" -gt 10 ]; then
  echo "More than 10 issues found. Terminating the workflow"
  exit 1
fi

exit 0
