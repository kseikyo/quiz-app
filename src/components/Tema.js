import React, { Component } from 'react'
import { Text, View, Image, StyleSheet } from 'react-native'

export default class Tema extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text>{this.props.title}</Text>
                <Image
                    source={this.props.imageUri}
                    style={styles.image}
                />
            </View>
        )
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: "center"
    },
    image: {
        width: 100,
        height: 100,
        borderRadius: 100
    }
});