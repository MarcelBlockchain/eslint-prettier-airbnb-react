# ESLint/Prettier & Standards's Style Guide for React Apps

This script follows this [tutorial](https://blog.echobind.com/integrating-prettier-eslint-airbnb-style-guide-in-vscode-47f07b5d7d6a) by Jeffrey Zhen, with some modifications.
I'm open for pull requests, since this config works for me, but maybe not for all setups.

**Make sure you `npm init`, or at least have a _package.json_ file before proceeding!**

## Installation
##### You will need _npm/npx_ installed. It will work on Windows, but just needs to be run in a bash shell, like VS Code's integrated terminal. 

1. Clone this repo somewhere on your machine, preferably in your home directory (~/), and _NOT_ in your app's directory.

```
cd
git clone https://github.com/MarcelBlockchain/eslint-prettier-standard-react style-config
```

2. Navigate to your app directory where you want to include this style configuration.

```
cd myApp
```

3. Run the shell script inside your app's root directory. (_The example below assumes you cloned this repo inside your home directory_)

```
~/style-config/eslint-prettier-config.sh
```

4. The shell script added two config files

- .eslintrc.json
- .prettierrc

5. append the following to your package.json

```
  "standard": {
    "parser": "babel-eslint",
    "plugins": [
      "html"
    ]
  }
```
  and delete:
```
  "eslintConfig": {
    "extends": "react-app"
  },
 ```

6. Install [StandardJS](https://marketplace.visualstudio.com/items?itemName=chenxsan.vscode-standardjs) (from Sam Chen) & [Prettier-Standard](https://marketplace.visualstudio.com/items?itemName=numso.prettier-standard-vscode) (from numso) extensions in VS Code. There are alternatives for other IDE's

7. Append the following to your settings.json in VS Code --> CMD + ,  (then click on the {}, for code view )
```
  // prettify code:
  "files.autoSave": "off",
  "editor.formatOnSave": false, // normally 'beautifier' formatter from VS
  "javascript.validate.enable": false,
  "standard.enable": true,
  "standard.run": "onType",
  "standard.autoFixOnSave": true,
  "standard.usePackageJson": true,
  // "standard.options": { "parser": "babel-eslint" }, // if standard does not work, uncomment this line
  "editor.autoIndent": false,
  "standard.validate": [
    "javascript",
    "javascriptreact"
  ],
```
