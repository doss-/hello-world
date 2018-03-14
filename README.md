# hello-world
--------
TODO: add some nice tool to git difftool
TODO: add short git aliases for 
	+git status -s
	+git diff<tool> --staged
	-git log <with some formatted output>
	+git checkout -- <file> - to revert edited
	+git reset HEAD <file>  - to revert staged
-------




i've inserted this line just to create another commit before pull request it to master

lets get started

time to use git again, but first need to refresh sweet memories about it. alas human memory is a bitch, like gravity.

----
editing file locally, without checking it out(git add / stage term)
NOTE: git also has checkout, which is actually not a revert in p4, it is more like p4 sync. own changes are kept if not specified otherwise


this change is done without Internet connection. 

another change of the file

so if change a file, then add it onto stage, then edit again - only first changes will be applied, another modification will be visible for git but not staged for commit

---
i need double new line to make a 1 new line on git hub web interface, i hate it.
editing it to see how git commit' status display will show it

---

this is some random change. i hope it wontn conflict with Testing branch, for now i dont want those conflicts to be aronund. yet.

---

so you telling me that staging already stores the file into repo, so repo is in .git dir, so this should change its size after i'll add some files onto stage? it could, but not necessarily would

okay it works! before stage
size of .git folder is 648
after stage
size of .git folder is 664
