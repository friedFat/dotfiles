#! /bin/bash


read -p "Commit message:" commitMessage


for innerRepo in dwm dmenu st; do
	cd $innerRepo
	rename .git git .git && echo "$innerRepo/.git -> $innerRepo/git"
	cd ..
done

git add . && git commit -m commitMessage && git push -u origin main && echo Pushed commit with message: "$commitMessage"

for innerRepo in dwm dmenu st; do
	cd $innerRepo
	rename git .git git && echo "$innerRepo/git -> $innerRepo/.git"
	cd ..
done
