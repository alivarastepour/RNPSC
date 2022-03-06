#!/bin/sh
if [ "$1" = "react" ]; then
    npx create-react-app $2
elif [ "$1" = "next" ]; then
    npx create-next-app $2
fi
cd $2
echo "checking for custom dependencies.."
v1=0
v2=1
for var in $@
do
    if [ $v1 -le $v2 ]; then
        v1=$((v1+1))
        continue
    else     
        if [ "$var" = "t" ]; then
            echo "installing TypeScript..."
            npm install typescript @types/node @types/react
        elif [ "$var" = "m" ]; then
            echo "installing Material UI..."
            npm install  @mui/material @mui/icons-material @emotion/react @emotion/styled
        elif [ "$var" = "r" ]; then
            echo "installing React-Redux, Redux toolkit and Redux Saga..."
            npm install  react-redux @types/react-redux redux-saga @reduxjs/toolkit  
        elif [ "$var" = "sc" ]; then
            echo "installing styled-components..."
            npm install styled-components@latest  
        elif [ "$var" = "sa" ]; then
            echo "installing SASS..."
            npm install sass
        elif [ "$var" = "a" ]; then
            echo "installing axios..."
            npm install axios@latest
        fi    
    fi    
done    
if [ "$1" = "react" ]; then
    npm start
elif [ "$1" = "next" ]; then
    npm run dev
fi    