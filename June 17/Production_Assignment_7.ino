/*
 Salama Almheiri
 Production Assignment 7
 June 17 2021
*/

const int greenLED = 11;
const int yellowLED = 10;
const int pushButton = A3; //blue switch

void setup() {
  Serial.begin(9600);
  pinMode(A2, INPUT);
  pinMode(pushButton, INPUT);
  pinMode(greenLED, OUTPUT);
  pinMode(yellowLED, OUTPUT);
}

void loop() {
  int sensorValue = analogRead(A2);
  Serial.println(sensorValue);
  sensorValue = constrain (sensorValue, 400, 900);
  int brightness = map (sensorValue, 400, 900, 3, 180);

  // sensor turns off the green led
  if (brightness > 150) digitalWrite (greenLED, HIGH);
  else digitalWrite (greenLED, LOW);
  
  // switch turns on the yellow led only when pressed
  int buttonState = digitalRead(pushButton);
  if (buttonState == HIGH){
  digitalWrite (yellowLED, HIGH);
  }
    else 
  digitalWrite (yellowLED, LOW);
  delay(1);
}
