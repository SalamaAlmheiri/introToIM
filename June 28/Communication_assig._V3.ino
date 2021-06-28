/*
  Salama Almheiri
  Production Assignment 9
  June 28 2021
  Version 3
*/

int leftBtn = A3;  //Green button
int rightBtn = A2;  //Yellow button
int knob = A0;
int potY = 0;
int btnX = 0;

void setup() {
  Serial.begin(9600);
  Serial.println("0,0");
  pinMode(leftBtn, INPUT);
  pinMode(rightBtn, INPUT);
  pinMode(knob, INPUT);

}

void loop() {
  while (Serial.available()) {
    potY = analogRead(knob); // Get the potentiometer value
    potY = Serial.parseInt();
    btnX = Serial.parseInt();

    if (digitalRead(rightBtn) == LOW) {
      btnX -= 2;
    } else if (digitalRead(leftBtn) == LOW) {
      btnX += 2;
    }

  }
}
