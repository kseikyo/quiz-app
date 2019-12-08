enum Type {
  multiple,
  boolean
}

enum Difficulty {
  easy,
  medium,
  hard
}

class Question {
  final Type type;
  final String id;
  final String question;
  final String correctAnswer;
  final List<dynamic> incorrectAnswers;

  Question({this.type, this.id, this.question, this.correctAnswer, this.incorrectAnswers});

  factory Question.fromJson(Map<String, dynamic> parsedJson) {

    return Question(
      type: Type.multiple,
      id: parsedJson['id'],
      question: parsedJson['pergunta'],
      correctAnswer: parsedJson['correta'],
      incorrectAnswers: parsedJson['errada']
    );
  }

  Question.fromMap(Map<String, dynamic> data):
    type = Type.multiple,
    id = data['id'],
    question = data["pergunta"],
    correctAnswer = data["correta"],
    incorrectAnswers = data["errada"];

  static List<Question> fromData(List<Map<String,dynamic>> data){
    return data.map((question) => Question.fromJson(question)).toList();
  }

}