nothing=$(git status | grep "nothing to commit")
if [ -z $nothing ]
then
 git add .
 _time=$(date +%Y%m%d)
 git commit -m "Auto-commit $_time"
 echo "Auto commit the files at $_time."
else
 echo "nothing to commit."
fi