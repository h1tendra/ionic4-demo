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
-H "X-HockeyAppToken: 437c73a2815c4729b38ca152c5a76736" \
https://rink.hockeyapp.net/api/2/apps/0448f673abc04be1bcfe391162c6a362/app_versions/upload