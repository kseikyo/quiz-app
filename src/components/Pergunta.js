import React, { Component } from 'react'
import { Text, View, StyleSheet, SectionList, TouchableOpacity } from 'react-native'

export default class Pergunta extends Component {
    render() {
        return (
            <View style={styles.container}>
                <View style={perguntaContainer}>
                    {this.props.questao}
                </View>
                <SectionList
                    sections={this.props.respostas}
                    keyExtractor={(item, index) => index}
                    renderItem={this.renderResposta}    
                />
            </View>
        )
    }

    renderResposta = ({ resposta }) => (
        <View style={styles.respostaContainer}>
            <TouchableOpacity
                style={{}}
                onPress={this.props.checkAnswer}
                >
                <Text>
                    {resposta}
                </Text>
            </TouchableOpacity>
        </View>
    )
}


const styles = StyleSheet.create({
    perguntaContainer: {
        flex: 1,
        backgroundColor: '#f3f3f3',
        borderRadius: 5
    },
    respostaContainer: {
        flex: 1,
        backgroundColor: '#131313',
        textAlign: "center",
    },
    container: {
        flex: 1,
        justifyContent: "center",
    }
})