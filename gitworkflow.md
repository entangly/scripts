## To make a new branch

   // Check that master is updated 
   git pull origin master
   // Create branch
   git checkout -b new_branch origin/master
 
## Rebase from updated master branch

   // Check that master is fully updated
   // Switch to feature branch
   git rebase origin/master
  
  
## To push a re-based branch

   git push origin feature -f 
 
## To try out a pull request locally

   git fetch origin pull/<number>/head:pr-<number>

## To delete a branch

   git branch -d <branch_name>
   // -D will confirm if there's problems
   
   
## If you forgot to make a new branch and committed to master...

   git branch newbranch
   git reset --hard HEAD~3 # Go back 3 commits. You *will* lose uncommitted work.*1
   git checkout newbranch
   
   

