abstract class Person {
  var hand = [];
  void decide() => {};
}

// var Cards = [ // Набор карт
//     { name: "Ace", weight: 11 },
//     { name: "King", weight: 10 },
//     { name: "Queen", weight: 10 },
//     { name: "Jack", weight: 10 },
//     { name: "Ten", weight: 10 },
//     { name: "Nine", weight: 9 },
//     { name: "Eight", weight: 8 },
//     { name: "Seven", weight: 7 },
//     { name: "Six", weight: 6 },
//     { name: "Five", weight: 5 },
//     { name: "Four", weight: 4 },
//     { name: "Three", weight: 3 },
//     { name: "Two", weight: 2 },
// ] 


// Класс Deck - описывает колоду карт. Содержит методы "создание колоды", "перетасовка колоды", "взять карту из колоды".

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

class Deck {
  void createDeck() {
    print("Колода карт создана!");
    Suit.values.forEach((suit){
        globalCards.add(Card(name: "Ace", weight: 11, suit: suit));
        globalCards.add(Card(name: "King", weight: 10, suit: suit));
        globalCards.add(Card(name: "Queen", weight: 10, suit: suit));
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