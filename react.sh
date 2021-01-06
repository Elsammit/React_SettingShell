#!/bin/sh

create-react-app $1

rm $1/src/App.js
cp App.js ./$1/src/

base=$((6+$#))
for x in "$@"
do
    if [ $x = $1 ]; then
        echo "same var"
    else
        cp page1.js ./$1/src/$x.js
        touch ./$1/src/$x.css

        sed -i -e "2d" ./$1/src/$x.js
        sed -i -e "1a import './"$x".css'" ./$1/src/$x.js
        sed -i -e "4d" ./$1/src/$x.js
        sed -i -e "3a export default class "$x" extends Component  {" ./$1/src/$x.js

        sed -i -e "1a import "$x" from './"$x"'" ./$1/src/App.js
    fi
done

for x in "$@"
do
    if [ $x = $1 ]; then
        echo "same var"
    else
        sed -i -e $base"a           <Route path='/"$x"' component={"$x"}/>" ./$1/src/App.js
    fi
done

yarn add install react-router-dom

cd $1
yarn start