import 'dart:io';

enum Suit {
  heart('︎♥'),
  diamond('♦'),
  club('♣'),
  spade('♠');

  final String symbol;
  const Suit(this.symbol);
}

enum CardValue {
  ace('A'),
  king('K'),
  queen('Q'),
  jack('J'),
  ten('10'),
  nine('9'),
  eight('8'),
  seven('7'),
  six('6'),
  five('5'),
  four('4'),
  three('3'),
  two('2');

  final String symbol;
  const CardValue(this.symbol);
}

class Card {
  CardValue name;
  Suit suit;

  Card({required this.name, required this.suit});
  @override
  String toString() => "Name: $name, Suit: $suit \n";
}

List globalCards = [];

class Deck {
  var used = [];
  var unused = [];

  void create() {
    Suit.values.forEach((suit) {
      CardValue.values.forEach((value) {
        globalCards.add(Card(name: value, suit: suit));
      });
    });
    //print(globalCards);
    unused = globalCards;
    print("Колода карт создана!");
  }

  void shuffle() {}
  void next() {}
}

class Hand {
  List<Card> mySet = [];
  void show() {}
  void add() {}
}

class Person with Hand {
  String name;
  List<Card> hand = [];
  void add() {
    this.hand.add(globalCards[globalCards.length - 1]);
    globalCards.removeLast();
  }

  void decide() {}

  Person({required this.name});
}

class Room {
  late Person dealer;
  late Person player;

  void create() {
    dealer = new Person(name: 'Dealer');
    player = new Person(name: 'Player');
    Deck newDeck = new Deck();
    newDeck.create();
  }

  void deck() {}
  void add() {}
  void reset() {}
  void check() {}
}

var letters = [
  "A",
  "K",
  "Q",
  "J",
  "10",
  "9",
  "8",
  "7",
  "6",
  "5",
  "4",
  "3",
  "2"
];
var weight = [11, 10, 10, 10, 10, 9, 8, 7, 6, 5, 4, 3, 2];

var CardWeight = Map<String, int>.fromIterables(letters, weight);

void main() {
  Room newRoom = new Room();
  newRoom.create();

  print(globalCards);

  print(newRoom.dealer.name + " - выдача карты");
  newRoom.dealer.add();
  print(newRoom.dealer.hand);

  print("---------------------------");

  print(newRoom.player.name + " - выдача карты");
  newRoom.player.add();
  print(newRoom.player.hand);

  print(globalCards);

  // Asking for favourite number
  //print("Enter your favourite number:");

  //int? n = int.parse(stdin.readLineSync()!);
  // Here ? and ! are for null safety

  // Printing that number
  //print("Your favourite number is $n");
  // print(globalCards[15].name.symbol);
  // print(CardWeight[globalCards[15].name.symbol]);
}
