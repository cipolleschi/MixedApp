# MixedApp

This Repository contains a step-by-step guide on how to integrate React Native into an iOS application.

The repository starts with a simple app, with two tabs:
* The home tab is a native view where the team is going to work using native technologies
* The settings tab will be a React Native view.

Every commit represents a step toward integrating the React Native into the app.

You can checkout every commit to see if the current state of the project.

## [Initial Commit](https://github.com/cipolleschi/MixedApp/commit/c1f322cb7c124cb732d99cca1985278f1c951efc)

This commit is the initial state. We have the iOS app in the MixedApp folder and currently both tabs are native views.

The goal is to replace the Settings view with a React Native view.

## [Add the ios folder](https://github.com/cipolleschi/MixedApp/commit/2ad3edecd9931b107c5c4532c1193c4d8ad56ca9)

First step to integrate React Native is to move your ios project into a dedicated ios folder.

1. create a new `ios` folder
2. move the `MixedApp` folder inside the `ios` folder

## [Create the package.json and install js dependencies](https://github.com/cipolleschi/MixedApp/commit/q1ea52bc12728ed5a27fc90a915d1e3fba6520815)

We now need to add the React and React Native dependencies to our project.

1. Create a `package.json` file inside the `MixedApp` folder. It must be a sibling of the previous ios folder

2. Paste the following content inside the `package.json`
```json
{
  "name": "MixedApp",
  "version": "0.0.1",
  "private": true,
  "scripts": {
    "start": "yarn react-native start"
  }
}
```

3. Navigate to the `MixedApp` folder and run the following command:
```sh
yarn add react-native@latest
```

4. One of the warning line would be something like:
```sh
warning " > react-native@0.75.3" has unmet peer dependency "react@^18.2.0".
```
so make sure to run also
```sh
yarn add react@^18.2.0
```
5. Add a `.gitignore` file to ignore the `node_modules` folder

## [Create the index.js file]()

The `index.js` file is the entry point for the JS module we want to load in our app.
At the same level of the `package.json`

1. Create and `index.js` file
2. Add the following content to the `index.js` file
```js
import React from 'react';
import {AppRegistry, StyleSheet, Text, View} from 'react-native';

const Settings = ({data}) => {
  return (
    <View style={styles.container}>
      <Text>Settings</Text>
      <Text>{data}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#EEEEEE',
  },
});

// Module name
AppRegistry.registerComponent('Settings', () => Settings);
```
