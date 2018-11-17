CIRCLE_SHA1=$1
GIT_COMMIT_DESC=$(git log -1 --pretty=%B $CIRCLE_SHA1)
echo "=========GIT commit message========="
echo $GIT_COMMIT_DESC
echo "===================================="
curl \
-F "status=2" \
-F "notify=2" \
-F "strategy=add" \
-F "notes=$GIT_COMMIT_DESC" \
-F "notes_type=0" \
-F "ipa=@platforms/android/app/build/outputs/apk/debug/app-debug.apk" \
-H "X-HockeyAppToken: a37851f9edf7bd831a754cb5dec5a062e7bb6cc9" \
https://rink.hockeyapp.net/api/2/apps/1b5edbbfbdb94a3a8eba43ef6a5f8f09/app_versions/upload