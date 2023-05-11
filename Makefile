readme: 
	go run readme.go 
git: 
	make readme
	git add -A
	git commit -m "added latest changes"
	git push