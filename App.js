import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import OwnersProjectView from './OwnersProjectView';
import WelcomeView from './WelcomeView';

const Stack = createStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="OwnersProjectView" screenOptions={{ headerShown: false }}>
        <Stack.Screen name="OwnersProjectView" component={OwnersProjectView} />
        <Stack.Screen name="WelcomeView" component={WelcomeView} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
