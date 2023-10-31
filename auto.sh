nothing=$(git status | grep "nothing to commit")
if [[ -z $nothing ]]
then
 git add .
 _time=$(date +%Y%m%d_%H%M%S)
 git commit -m "Auto-commit $_time"
 echo "Auto commit the files at $_time."
 git pull
 git push
else
 echo "nothing to commit."
fi