readme: 
	go run readme.go 
git: 
	make readme
	cd .. && make clean_code
	git add -A
	git commit -m "added latest changes"
	git push