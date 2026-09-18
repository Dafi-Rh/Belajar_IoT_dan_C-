#include <Arduino.h>

const int RELAY1 = D1;
const int RELAY2 = D2;
const int RELAY3 = D5; // Diganti dari D3 ke D5 demi keamanan booting
const int RELAY4 = D6; // Diganti dari D4 ke D6

#define RELAY_ON  LOW
#define RELAY_OFF HIGH

void setup() {
  Serial.begin(115200);

  pinMode(RELAY1, OUTPUT);
  pinMode(RELAY2, OUTPUT);
  pinMode(RELAY3, OUTPUT);
  pinMode(RELAY4, OUTPUT);

  digitalWrite(RELAY1, RELAY_OFF);
  digitalWrite(RELAY2, RELAY_OFF);
  digitalWrite(RELAY3, RELAY_OFF);
  digitalWrite(RELAY4, RELAY_OFF);

  Serial.println("--- Pengujian 4 Relay Sweep Dimulai ---");
}

void loop() {
  int relays[] = {RELAY1, RELAY2, RELAY3, RELAY4};

  for (int i = 0; i < 4; i++) {
    Serial.print("Menyalakan Relay ");
    Serial.println(i + 1);

    digitalWrite(relays[i], RELAY_ON);
    delay(1000);
    digitalWrite(relays[i], RELAY_OFF);
  }

  delay(1000);
}