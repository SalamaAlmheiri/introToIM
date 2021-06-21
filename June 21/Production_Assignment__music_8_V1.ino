/*
  Salama Almheiri
  Production Assignment 8
  June 21 2021
  Version 1
*/

#include "pitches.h"

// notes in the melody:
int melody[] = {
  NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  4, 4, 8, 4, 8, 8, 8, 4
};

const int speakerPin = 8; //piazo speaker
const int pushButton = A3; //blue switch
const int sensor = A2; //sensor

void setup() {
  Serial.begin(9600);
  pinMode(sensor, INPUT);
  pinMode(pushButton, INPUT);
}

void loop() {
  //if button is pressed, the sensor/speaker will be on
  int buttonState = digitalRead(pushButton);
  if (buttonState == HIGH){

  int sensorValue = analogRead(A2);
  Serial.println(sensorValue);
  sensorValue = constrain (sensorValue, 400, 900);
  int brightness = map (sensorValue, 400, 900, 3, 180);  

  if (brightness > 150) { //Why is this not working
  
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 8; thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurations[thisNote];
    tone(speakerPin, melody[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8); //no need
  }
  }
  }
}
