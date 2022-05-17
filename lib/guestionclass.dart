class GuestionClass {
  String GuestionText;
  final bool GuestionAnswer;
  GuestionClass(
      {this.GuestionText, this.GuestionAnswer, String guestionAnswer});
}

class GuestionBank {
  List<GuestionClass> guestionBrain = [
    GuestionClass(
      GuestionText: 'Кыргызстан Кытай менен чектешеби?',
      guestionAnswer: 'туура',
      GuestionAnswer: true,
    ),
    GuestionClass(
      GuestionText: 'Флаттер праграммалоо тилиби?',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: false,
    ),
    GuestionClass(
      GuestionText: ' Ош Кыргызстандын борборубу?',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: false,
    ),
    GuestionClass(
      GuestionText: 'Токмок Нарындабы?',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: false,
    ),
    GuestionClass(
      GuestionText: 'Балык кургакта жашай алабы??',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: false,
    ),
    GuestionClass(
      GuestionText: 'Ай жердин спутнигиби?',
      guestionAnswer: 'туура',
      GuestionAnswer: true,
    ),
    GuestionClass(
      GuestionText: 'Дарт программалоо тилиби?',
      guestionAnswer: 'туура',
      GuestionAnswer: true,
    ),
    GuestionClass(
      GuestionText: 'Мышык уй жаныбарбы?',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: false,
    ),
    GuestionClass(
      GuestionText: 'Уй отура алат?',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: false,
    ),
    GuestionClass(
      GuestionText: 'Москва Кыргызстандын борборубу?',
      guestionAnswer: 'туура эмес',
      GuestionAnswer: true,
    ),
  ];
}
