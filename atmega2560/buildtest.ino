const char ADDR [] = { 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52 };

// for i in range(0, int((52-22)/2) + 1 ):
// 	print(22 + 2*i, end=", ")

//#define CLOCK 2

void onClock() {
}

void setup() {
	for (int i = 0; i < 16; i +=1) {
		pinMode(ADDR[i], INPUT);
	}
	//pinMode(CLOCK, INPUT);
	
	//attachInterrupt(digitalPinToInterrupt(CLOCK), onClock, RISING);

	// THIS NEEDS TO BE AT END OF SETUP
	Serial.begin(57600);
}

void loop() {
	for (int i = 0; i < 16; i +=1) {
		int bit = digitalRead(ADDR[i]) ? 1 : 0;
		Serial.print(bit);
	}
	Serial.println();
}
