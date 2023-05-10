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

// enum CardValue {
//     "A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"
// }

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
    Suit.values.forEach((suit){
        globalCards.add(Card(name: "A", weight: 11, suit: suit));
        globalCards.add(Card(name: "K", weight: 10, suit: suit));
        globalCards.add(Card(name: "Q", weight: 10, suit: suit));
        globalCards.add(Card(name: "J", weight: 10, suit: suit));
        globalCards.add(Card(name: "10", weight: 10, suit: suit));
        globalCards.add(Card(name: "9", weight: 9, suit: suit));
        globalCards.add(Card(name: "8", weight: 8, suit: suit));
        globalCards.add(Card(name: "7", weight: 7, suit: suit));
        globalCards.add(Card(name: "6", weight: 6, suit: suit));
        globalCards.add(Card(name: "5", weight: 5, suit: suit));
        globalCards.add(Card(name: "4", weight: 4, suit: suit));
        globalCards.add(Card(name: "3", weight: 3, suit: suit));
        globalCards.add(Card(name: "2", weight: 2, suit: suit));
    });
    print(globalCards);
    print("Колода карт создана!");
  }
  void shufflingDeck(){}
  void takeCardFromTheDeck(){}
}

List globalCard = [];

// class globalCards {
//     void shufflingDeck(){}
//     void add(name){}
// }

void main() {
    print(" ---= Beginning of The Game! =--- ");
    Deck newDeck = new Deck();
    newDeck.createDeck();
}