import React, { useEffect, useState } from 'react';
import { View, Text, StyleSheet, StatusBar } from 'react-native';
import * as Animatable from 'react-native-animatable';

const OwnersProjectView = ({ navigation }) => {
  useEffect(() => {
    const timer = setTimeout(() => {
      navigation.navigate('WelcomeView');
    }, 6000);

    return () => clearTimeout(timer);
  }, []);

  return (
    <Animatable.View style={[styles.container, { backgroundColor: 'black' }]} animation="fadeInDown" duration={1500}>
      <Text style={styles.text}>ZOO</Text>
      <View style={styles.footer}>
        <Text style={[styles.footerText, styles.italic]}>Powered by</Text>
        <Text style={[styles.footerText, styles.biyul, styles.italic]}>XAYIL</Text>
      </View>
      <StatusBar style="auto" />
    </Animatable.View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingTop: 300,
  },
  text: {
    fontSize: 48,
    color: 'white',
  },
  footer: {
    alignItems: 'center',
    marginBottom: 20,
  },
  footerText: {
    color: 'white',
  },
  biyul: {
    fontSize: 30,
    fontWeight: 'bold',
  },
  italic: {
    fontStyle: 'italic',
  },
});

export default OwnersProjectView;
