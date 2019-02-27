#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
LCYAN='\033[1;36m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting Style Formatting Configuration... ${NC}"

echo -e "1/5 ${LCYAN}Local ESLint & Prettier & Standard Installation... ${NC}"
npm install -D eslint prettier standard

echo -e "2/5 ${YELLOW}Standard Configuration Installation... ${NC}"
npm install -D eslint-config-standard eslint-plugin-jsx-a11y eslint-plugin-react babel-eslint

echo -e "3/5 ${LCYAN}Disabling ESLint Formatting... ${NC}"
npm install -D eslint-config-prettier eslint-plugin-prettier eslint-plugin-flowtype eslint-config-react-app eslint-plugin-html

echo -e "4/5 ${YELLOW}Creating ESLint JSON... ${NC}"
touch .eslintrc.json

echo '{
  "extends": ["standard", "prettier", "plugin:jsx-a11y/recommended", "plugin:react/recommended"],
  "plugins": ["prettier", "standard", "jsx-a11y", "react", "flowtype", "html"],
  "rules": {
    "jsx-a11y/rule-name": 2
  }
}' >> .eslintrc.json

echo -e "5/5 ${YELLOW}Creating Custom Prettier Config... ${NC}"
touch .prettierrc

echo '{
  "printWidth": 100,
  "singleQuote": true
}' >> .prettierrc

echo -e "${GREEN}Done! ${NC}"
echo -e "Make sure to install the StandardJS & Prettier-Standard Extensions in VS Code. Also append to package.json \"standard\": { \"parser\": \"babel-eslint\" }"
echo -e "See readme on Github for more details: https://github.com/MarcelBlockchain/eslint-prettier-standard-react"
