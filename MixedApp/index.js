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
