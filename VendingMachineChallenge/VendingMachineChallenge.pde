class vendingMachine {
  int candy;
  int chips;
  float price;
  float moneyMade;
  
  vendingMachine() {
    moneyMade = 0;
    candy = 6;
    chips = 10;
    price = 1.25;
  }
  
  void stockStatus() {
    println("There is " + candy + " candies left and " + chips + " chips left.");
  }
  
  void revenueStatus() {
    println("$" + moneyMade + " has been made from the machine.");
  }
  
  void buyCandy() {
    if (candy == 0) {
      println("There are no candies left! Please wait for a restock.");
    }
    else if (candy >= 1) {
      candy--;
      moneyMade += price;
      println("Someone bought some candy! There is now " + candy + " candies left.");
    }
  }
  
  void buyChips() {
    if (chips == 0) {
      println("There are no chips left! Please wait for a restock.");
    }
    else if (chips >= 1) {
      chips--;
      moneyMade += price;
      println("Someone bought some chips! There is now " + chips + " chips left.");
    }
  }

}

void setup () {
  vendingMachine machine1 = new vendingMachine();
  
  machine1.stockStatus();
  machine1.buyCandy();
  machine1.buyChips();
  machine1.buyChips();
  machine1.buyChips();
  machine1.buyChips();
  machine1.buyChips();
  machine1.buyCandy();
  machine1.buyCandy();
  
  machine1.stockStatus();
  machine1.revenueStatus();

}

void draw () {

}
