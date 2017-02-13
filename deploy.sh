# !/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# publicフォルダの ., .., .git, .gitignore 以外を消去
cd public
ls -la | grep -v -E '\.$|\.git' | xargs rm -rf
cd ..

# Build the project.
hugo

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# deploy
cd public
git add .
git commit -m "COMMENT: ($COMMENT)" -m "HASH: ($COMMIT_HASH)"
git push origin gh-pages
