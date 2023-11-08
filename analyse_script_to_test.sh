#!/bin/sh

echo "Running flutter analyze..."
flutter analyze > temp.txt
total_lint=$(grep -c 'error - \|warning - \|hint - \|info - ' temp.txt)
rm temp.txt
echo "Total Dart Analysis Issues: $total_lint"



if [ "$total_lint" -gt 10 ]; then
  echo "More Than 10 Dart Analysis Issues Found. Terminating the workflow"
  exit 1
fi

exit 0