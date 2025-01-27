class QuizzQuestions {
  QuizzQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledList() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
