const int inputPin1  = 10;    // Pin 15 of L293D IC
const int inputPin2  = 11;    // Pin 10 of L293D IC
//MOTOR B
const int inputPin3  = 9;   // Pin  7 of L293D IC
const int inputPin4  = 8;   // Pin  2 of L293D IC
//for Ultrasonic Sensor
#define trigPin  12
#define echoPin  13
long duration;
int distance;
void setup() 
{
    pinMode(inputPin1, OUTPUT);
    pinMode(inputPin2, OUTPUT);
    pinMode(inputPin3, OUTPUT);
    pinMode(inputPin4, OUTPUT); 
    // For Ultrasonic Sensor
    pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
    pinMode(echoPin, INPUT); // Sets the echoPin as an Input
    Serial.begin(9600);
}

void loop() 
{
  // Clears the trigPin
    digitalWrite(trigPin, LOW);
    delayMicroseconds(2);
// Sets the trigPin on HIGH state for 10 micro seconds
    digitalWrite(trigPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin, LOW);
// Reads the echoPin, returns the sound wave travel time in microseconds
    duration = pulseIn(echoPin, HIGH);
// Calculating the distance
    distance= duration*0.034/2;
  if(distance<=7)
  {
    digitalWrite(inputPin1, HIGH);
    digitalWrite(inputPin2, LOW);
    digitalWrite(inputPin3, HIGH);
    digitalWrite(inputPin4, LOW);
  }
  else
  {
    digitalWrite(inputPin1, HIGH);
    digitalWrite(inputPin2, LOW);
    digitalWrite(inputPin3, LOW);
    digitalWrite(inputPin4, LOW); 
  } 
}
