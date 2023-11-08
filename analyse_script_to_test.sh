#!/bin/sh

echo "Running flutter analyze..."
flutter analyze > temp.txt
total_lint=$(grep -c 'error - \|warning - \|hint - \|info - ' temp.txt)
rm temp.txt
echo "Total Lint: $total_lint"



if [ "$total_lint" -gt 10 ]; then
  echo "More than 10 lint issues found. Terminating the workflow"
  exit 1
fi

exit 0