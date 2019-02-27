#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
LCYAN='\033[1;36m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting Style Formatting Configuration... ${NC}"

echo -e "1/5 ${LCYAN}Local ESLint & Prettier Installation... ${NC}"
npm install -D eslint prettier standard

echo -e "2/5 ${YELLOW}Standard Configuration Installation... ${NC}"
npm install -D eslint-config-standard eslint-plugin-jsx-a11y eslint-plugin-import eslint-plugin-react babel-eslint

echo -e "3/5 ${LCYAN}Disabling ESLint Formatting... ${NC}"
npm install -D eslint-config-prettier eslint-plugin-prettier eslint-plugin-flowtype@2.50.3 eslint-config-react-app eslint-config-standard

echo -e "4/5 ${YELLOW}Creating ESLint JSON... ${NC}"
touch .eslintrc.json

echo '{
  "extends": ["standard", "prettier", "react-app", "plugin:prettier/recommended"],
  "plugins": ["prettier", "standard"],
  "rules": {
    "prettier/prettier": ["error"],
    "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }],
    "jsx-a11y/href-no-hash": [0]
  }
}' >> .eslintrc.json

echo -e "5/5 ${YELLOW}Creating Custom Prettier Config... ${NC}"
touch .prettierrc

echo '{
  "printWidth": 100,
  "singleQuote": true
}' >> .prettierrc

echo -e "${GREEN}Done! ${NC}"

