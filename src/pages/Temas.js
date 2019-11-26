import React, { Component } from 'react'
import Tema from '../components/Tema';
import { View } from 'react-native';
export default class Temas extends Component {
    render() {
        return (
            <View style={{
                flex: 1, alignItems: "flex-start", justifyContent: "space-between", marginVertical: 100,
                marginHorizontal: 50
                }}>
                <Tema title="Matemática" imageUri={require('../../assets/icon.png')} />
            </View>
        )
    }
}
