
int timer=0;
void setup() {
  Serial.begin(9600);
  pinMode(9,OUTPUT);
}

void loop() {
  //digitalWrite(9,true);
  if (timer < 2000){
    digitalWrite(9,false);
    Serial.println(analogRead(A0));
  }
  else if (timer > 2000 && timer < 3000 ){
    digitalWrite(9,true);
  }
  else if(timer > 3000 && timer < 10000){
    digitalWrite(9,false);
  }
  else if(timer > 10000 && timer < 12000){
    digitalWrite(9,true);
  }
   else if(timer > 12000 && timer < 19000){
    digitalWrite(9,false);
  }
   else if(timer > 19000 && timer < 21000){
    digitalWrite(9,true);
  }else if (timer > 21000 && timer < 29000 ){
    digitalWrite(9,false);
  }else if (timer > 29000 && timer < 33000 ){
    digitalWrite(9,true);
  }else if (timer > 33000 && timer < 41000 ){
    digitalWrite(9,false);
  }else if (timer > 41000 && timer < 46000 ){
    digitalWrite(9,true);
  }else if (timer > 46000 && timer < 54000 ){
    digitalWrite(9,false);
  }else if (timer > 54000 && timer < 64000 ){
    digitalWrite(9,true);
  }
  else {
    digitalWrite(9,false);
  }
  Serial.println(analogRead(A0));
  delay(100);
  timer = timer + 100;
  
  
}
