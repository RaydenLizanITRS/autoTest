#!/bin/bash


# Variables
BRANCH="main"                    
COMMIT_MESSAGE=$(date "+%Y-%m-%d %H:%M:%S")   



# Switch to the specified branch
git checkout "$BRANCH"
git fetch origin "$BRANCH"

git add .

echo "Here we go"

if [[ -n $(git status --porcelain) ]]; then
	git commit -m "$COMMIT_MESSAGE"
	echo "Just committed"
	git push origin "$BRANCH"
else
	echo "No changes to commit, skipping push."
	end
fi


echo "Changes committed and pushed successfully to the $BRANCH branch."


