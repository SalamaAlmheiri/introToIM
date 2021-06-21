/*
  Salama Almheiri
  Production Assignment 8
  June 21 2021
  Version 2
*/

const int speakerPin = 8; //piazo speaker
const int pushButton = A3; //blue switch
const int sensor = A2; //sensor
int frequency = 100;

void setup() {
  Serial.begin(9600);
  pinMode(sensor, INPUT);
  pinMode(pushButton, INPUT);

}

void loop() {
  //if blue switch is pressed, the sensor/speaker will be on
  int buttonState = digitalRead(pushButton);
  if (buttonState == HIGH) {

    int sensorValue = analogRead(sensor);
    Serial.println(sensorValue);
    sensorValue = constrain (sensorValue, 400, 900);
    int brightness = map (sensorValue, 400, 900, 3, 180);

    frequency = map(500, 500, 700, 40, 800);
    frequency = constrain(frequency, 40, 800);
    tone(speakerPin, frequency);

  } else {
    noTone(speakerPin);
  }
  delay(500);

}
