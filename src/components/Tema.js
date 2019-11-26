import React, { Component } from 'react'
import { Text, View, Image, StyleSheet } from 'react-native'

export default class Tema extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text>{this.props.title}</Text>
                <Image
                    source={require(this.props.imageUri)}
                    style={styles.image}
                />
            </View>
        )
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1
    },
    image: {
        borderRadius: 10
    }
});