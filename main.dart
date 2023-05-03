abstract class Person {
  var hand = [];
  void decide() => {};
}

class Player extends Person {
  @override
  void decide() {
    // TODO: implement decide
  }
}

class Diler extends Person {
  @override
  void decide() {
    // TODO: implement decide
  }
}

// Класс Deck - описывает колоду карт. Содержит методы "создание колоды", "перетасовка колоды", "взять карту из колоды".

class Deck {
  void createDeck() => {};
  void shufflingDeck() => {};
  void takeCardFromTheDeck() => {};
}

void main() {
  print("Beginning of The Game!");
  Deck newDeck = new Deck();
  newDeck.createDeck();
}