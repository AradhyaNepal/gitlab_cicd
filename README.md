## IF you wanna setup on your own laptop from this repo
- Download Gitlab Runner. And rename the exe as gitlab-runner.exe
- Setup the your gitlab CICD from Select the project > Setting > CICD > Runners > Expand > New Project Runner > Select: Windows > Add tags: flutter > 
- On the folder you have downloaded the gitlab-runner, register and run as per the instruction. Set instance https://gitlab.com/ when asked while registering
- It is recommended to run on linux/git bash than cmd
- All the compiling of the apk will happen here on your local computer. i.e your computer is now a server so do not close the run
- Make sure you have setup fastlane. Fastlane --version must show version

## ELSE 
- If I am online, ask me to run the server on my computer's cmd. Then my computer will act as server(Runner) to run the task.

## To Trigger
- Push any changes to the beta-test branch to trigger

## To Verify
- Go to Gitlab commit you pushed on beta-test branch to see if its success
- If on gitlab it shows success, go to https://drive.google.com/drive/folders/1Znd2NttLhNfVeKTw04vQp4D-f_SUEIeZ?usp=sharing drive to see whether new apk is uploaded


## Reference
- https://medium.com/@roger.tan/setup-a-flutter-ci-cd-with-gitlab-ci-part-1-8d40b7a3b3dc (All of his post on the CICD series)
- https://github.com/subash9860/fastlane-tutorial/branches
- https://medium.com/@didahdx/automating-android-app-deployment-to-google-drive-with-fastlane-2eefa87a6184