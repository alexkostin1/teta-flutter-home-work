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

enum Suit {
  heart('︎♥'),
  diamond('♦'),
  club('♣'),
  spade('♠');

  final String symbol;
  const Suit(this.symbol);
}

class Card {
    String name;
    int weight;
    Suit suit;

    Card({ required this.name, required this.weight, required this.suit });
    @override
    String toString() => "Name: $name, Weight: $weight, Suit: $suit \n";
}

// Класс Deck - описывает колоду карт. Содержит методы "создание колоды", "перетасовка колоды", "взять карту из колоды".
class Deck {
  void createDeck() {
    print("Колода карт создана!");
    Suit.values.forEach((suit){
        globalCards.add(Card(name: "Ace", weight: 11, suit: suit));
        globalCards.add(Card(name: "King", weight: 10, suit: suit));
        globalCards.add(Card(name: "Queen", weight: 10, suit: suit));
        globalCards.add(Card(name: "Jack", weight: 10, suit: suit));
        globalCards.add(Card(name: "Ten", weight: 10, suit: suit));
        globalCards.add(Card(name: "Nine", weight: 9, suit: suit));
        globalCards.add(Card(name: "Eight", weight: 8, suit: suit));
        globalCards.add(Card(name: "Seven", weight: 7, suit: suit));
        globalCards.add(Card(name: "Six", weight: 6, suit: suit));
        globalCards.add(Card(name: "Five", weight: 5, suit: suit));
        globalCards.add(Card(name: "Four", weight: 4, suit: suit));
        globalCards.add(Card(name: "Three", weight: 3, suit: suit));
        globalCards.add(Card(name: "Two", weight: 2, suit: suit));
    });
    print(globalCards);
  }
  void shufflingDeck(){}
  void takeCardFromTheDeck(){}
}

List globalCards = [];

void main() {
    print(" ---= Beginning of The Game! =--- ");
    Deck newDeck = new Deck();
    newDeck.createDeck();
}