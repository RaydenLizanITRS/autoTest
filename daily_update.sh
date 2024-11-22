#!/bin/bash


# Variables
BRANCH="main"                    
COMMIT_MESSAGE=$(date "+%Y-%m-%d %H:%M:%S")   



# Switch to the branch
git checkout "$BRANCH"
git fetch origin "$BRANCH"


#Commit and push if there are any changes
if [[ -n $(git status --porcelain) ]]; then
	git add .
	git commit -m "$COMMIT_MESSAGE"
	git push origin "$BRANCH"
	echo "Changes committed and pushed successfully to the $BRANCH branch."
else
	echo "No changes to commit, skipping push."
fi



