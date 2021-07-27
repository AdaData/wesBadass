read -e -p "Hi Wes! What folder has the images you'd like to open? " dir
cd "$dir"
for filename in ./*; do
	if [[ $filename =~ id([0-9]+)\..* ]]; then
		open -a firefox -g "https://www.istockphoto.com/search/2/image?phrase=${BASH_REMATCH[1]}"
	fi 
done

read -n 1 -p "Hope that worked! Press any key to close this."