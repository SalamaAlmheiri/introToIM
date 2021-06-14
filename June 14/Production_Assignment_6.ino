/*
 Salama Almheiri
 Production Assignment 6
 June 14 2021
*/

const int pushButton = A2; //yellow switch
const int pushButton2 = A3; //green switch
const int pushButton3 = A4; //blue switch
const int blueLED = 11;
const int redLED = 8;
const int greenLED = 7;

void setup() {
  Serial.begin(9600);
  pinMode(pushButton, INPUT);
  pinMode(pushButton2, INPUT);
  pinMode(pushButton3, INPUT);
  pinMode(blueLED, OUTPUT);
  pinMode(redLED, OUTPUT);
  pinMode(greenLED, OUTPUT);
}

void loop() {
  int buttonState = digitalRead(pushButton);
  int buttonState2 = digitalRead(pushButton2);
  int buttonState3 = digitalRead(pushButton3);

  //Turns red on
{ if (buttonState == HIGH) { //yellow switch
      digitalWrite(redLED, HIGH);
      digitalWrite(blueLED, LOW);
      digitalWrite(greenLED, LOW);
    }
    else {
      digitalWrite(redLED, LOW);
      digitalWrite(blueLED, HIGH);
      digitalWrite(greenLED, HIGH);
    }
  }

  //Turns red off
{ if (buttonState2 == HIGH) { //green switch
      digitalWrite(redLED, LOW);
      digitalWrite(blueLED, HIGH);
      digitalWrite(greenLED, HIGH);
    }
    else {
      digitalWrite(redLED, HIGH);
      digitalWrite(blueLED, LOW);
      digitalWrite(greenLED, LOW);
    }
  }

  //Turns on red led, turns off blue, green
{ if (buttonState3 == HIGH) { //blue switch
      digitalWrite(redLED, HIGH);
      digitalWrite(blueLED, LOW);
      digitalWrite(greenLED, LOW);
    }
    else {
      digitalWrite(redLED, LOW);
      digitalWrite(blueLED, HIGH);
      digitalWrite(greenLED, HIGH);
    }
  }
  delay(1);
}
