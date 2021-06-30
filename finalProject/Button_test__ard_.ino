/*
  Salama Almheiri
  Forest Maze Game
  June 30 2021
  Version 1 Button Test
*/
int upBtn = A4;  //blue button
int downBtn = A3;  //green button
int leftBtn = A2;  //yellow button
int rightBtn = A1;  //red button


int valueU;
int valueD;
int valueL;
int valueR;

void setup() {
  Serial.begin(9600);
  pinMode(upBtn, INPUT);
  pinMode(downBtn, INPUT);
  pinMode(leftBtn, INPUT);
  pinMode(rightBtn, INPUT);
}

void loop() {
  valueU = digitalRead(upBtn);
  valueD = digitalRead(downBtn);
  valueL = digitalRead(leftBtn);
  valueR = digitalRead(rightBtn);

  delay(100);
  Serial.print(valueU);
  Serial.print(',');
  Serial.print(valueD);
  Serial.print(',');
  Serial.print(valueL);
  Serial.print(',');
  Serial.println(valueR);
}
