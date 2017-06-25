# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
		Version control is a software that helps us to keep track of all of our changes or our team's changes to a file/project that we work on. It also helps us to avoid simultaneous or redundant work on the same feature in a project. 



* What is a branch and why would you use one?
		A branch holds the literal meaning in git as well, it creates a separate work-flow, in which we can edit the required or assigned feature without affecting the original document which stays in the master. We can understand the branch concept using a tree analogy, as soon as the folder is converted into a git repository (which is like once the tree is born *its an analogy don't mind the flaws* the main stem becomes the master branch), we can create multiple branches with relevant name to it, and working/editing the files,(This is like focusing on a branch from the stem which has all the features and contents of the stem but still is a separate structure). Once we are done working on the branch we can integrate it to the master branch by stagging and committing it.

		This makes sure that the document remains clear of ambiguity 



* What is a commit? What makes a good commit message?
		A commit is a save-point in the git, like that of a checkpoint in a game. Often committing the files to the git helps us to keep our files safe in case of some mishap. A good commit message is something that gives us a clear meaning as to what/which file is the commit being done for and what changes has been done to the file/folder.


* What is a merge conflict?
		Merge conflicts arise when we try to merge a branch into our current branch but they both have different commits, meaning, let us assume we are trying to merge a feature branch into our master branch, it might show us a merge conflicts if there is a commit in the master branch that is to be done or if there is a commit in the feature branch that is to be done. This is stated as "the branches have diverged..." in common terminology. A merge conflict might also arise if there are changes in the same lines of code between the feature branch and the master branch. 
