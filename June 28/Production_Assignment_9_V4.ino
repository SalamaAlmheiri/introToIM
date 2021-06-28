/*
  Salama Almheiri
  Production Assignment 9
  June 28 2021
  Version 3
*/

int leftBtn = A3;  //Green button
int rightBtn = A2;  //Yellow button
int knob = A0;

int valueL;
int valueR;
int valueKnob;

void setup() {
  Serial.begin(9600);
  pinMode(leftBtn, INPUT);
  pinMode(rightBtn, INPUT);
  pinMode(knob, INPUT);

}

void loop() {
  //while (Serial.available()) {
    valueKnob = analogRead(knob); // Get the potentiometer value
    valueL= digitalRead(leftBtn);
    valueR= digitalRead(rightBtn);
delay(100);
    Serial.print(valueL);
    Serial.print(',');
    Serial.print(valueR);
    Serial.print(',');
    Serial.println(valueKnob);
  //}
}
