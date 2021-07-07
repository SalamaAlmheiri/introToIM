/*
  Salama Almheiri
  Forest Maze Game
  July 8 2021
  Version 5
*/

#include <LiquidCrystal.h>
LiquidCrystal lcd(13, 12, 11, 10, 9, 8);

int upBtn = A4;  //blue button
int downBtn = A3;  //green button
int leftBtn = A2;  //yellow button
int rightBtn = A1;  //red button

// values that will be send to processing
int valueU;
int valueD;
int valueL;
int valueR;

const int ledPin =  7; //green LED
int ledState = LOW;
unsigned long previousMillis = 0;
const long interval = 1000;

void setup() {
  Serial.begin(9600);
  pinMode(upBtn, INPUT);
  pinMode(downBtn, INPUT);
  pinMode(leftBtn, INPUT);
  pinMode(rightBtn, INPUT);

  pinMode(ledPin, OUTPUT);

  lcd.begin(16, 2);
  lcd.clear();
}

void loop() {
  // reads and prints the value of the buttons, 1=pressed, 0=not pressed
  valueU = digitalRead(upBtn);
  valueD = digitalRead(downBtn);
  valueL = digitalRead(leftBtn);
  valueR = digitalRead(rightBtn);
  Serial.print(valueU);
  Serial.print(',');
  Serial.print(valueD);
  Serial.print(',');
  Serial.print(valueL);
  Serial.print(',');
  Serial.println(valueR);

  //LCD screen to display the title of the game at the start
  char state = Serial.read ( );
  if (state == '0') {
    lcd.setCursor(0, 0);
    lcd.print("Totoro's Forest");
    lcd.setCursor(3, 1);
    lcd.print("Maze Game!");
  }
  // green LED to light up when game is won
  if (state == '1') {
    unsigned long currentMillis = millis();
    if (currentMillis - previousMillis >= interval) {
      previousMillis = currentMillis;
      if (ledState == LOW) {
        ledState = HIGH;
      } else {
        ledState = LOW;
      }
      digitalWrite(ledPin, ledState);
    }
  }
  // also LCD screen to display "Success!" when the game is 'won'
  if (state == '2') {
    lcd.setCursor(0, 0);
    lcd.print("Success! You've");
    lcd.setCursor(1, 1);
    lcd.print("Reached Totoro!");
  }
}
