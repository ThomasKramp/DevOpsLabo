cd /var/jenkins_home/workspace/PongChamp/
echo "In the right directory"

find * | grep \.py | grep -v pycache \
	| xargs -t -I % sh -c "{ echo '\n'%; \
    sed -i 's/^/\t/' %; \
    sed -i '1s/^/try: \n/' %; \
    echo \"\nexcept Exception as e: \n\tprint('Error: \"{}\"'.format(e))\" >> %; }" \
/

find * | grep \.py | grep -v pycache | xargs -t -I % sh -c "{ echo '\n'%; python3 %; }"
