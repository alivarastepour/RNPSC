# RNPSC
shell script for creating new react/next app with node package executor(npx) and node package manager(npm)

## supported dependencies
Typescript, Material UI, Redux, styled components, axios and SASS packages are currently supported.

## run
in order to run the script on your device simply do the following commands:

`
chmod u+x RNPSC.sh
`

`
./RNPSC.sh [project type] [project name] [custom flags]
`

## project type

npx create-next-app : next

npx create-react-app : react

## flags

| Technology | flag |
|----------- | ---- |
| TypeScript | t |
| Material UI | m |
| Redux | r |
| styled-components | sc |
| axios | a |
| SASS | sa |

## example

`
./RNPSC.sh next helloworld t m a 
`

is equal to:

`
npx create-next-app helloworld
`

`
npm install typescript @types/node @types/react @mui/material @mui/icons-material @emotion/react @emotion/styled axios@latest
`
