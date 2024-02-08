const int digitalPins[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}; // Digital input pins
const int analog0 = A0;
const int analog1 = A1;
void setup() {
  Serial.begin(1000000);
  // Set all digital pins as inputs
  for (int l = 0; l < 12; l++) {
    pinMode(digitalPins[l], INPUT);
  }
  Serial.println();
}

int bin=1;
int x=0;
int bin_count1[50]={0};
int total_count[50]={0};

void loop() {
    // Read digital values from all 6 pins
  int digitalValues[14];
  int bin_count = 0;
  int  bin_no = 0;
  int bitWeight = 1;
  for (int i = 0; i < 12; i++) {
    digitalValues[i] = digitalRead(digitalPins[i]);
  }
  if (analogRead(analog0) > 300)
  {
    digitalValues[12] = 1;
  }
  else
  {
    digitalValues[12] = 0;
  }
  if (analogRead(analog1) > 300)
  {
    digitalValues[13] = 1;
  }
  else
  {
    digitalValues[13] = 0;
  }
  if (bin == 50)
  {
    x=1;
    bin=1;
    for (int n = 0; n < 50; n++)
    {
        Serial.print(n+1);
        Serial.print(" , ");
        Serial.print(total_count[n]);
        Serial.println();
    }
  }
  // Loop through the binary string from right to left
  for (int k = 0; k < 8; k++) {
    if (digitalValues[k] == 1) {
      bin_count += bitWeight;
    }
    bitWeight *= 2;
  }
  bitWeight = 1;
  for (int j = 8; j < 14; j++) {
    if (digitalValues[j] == 1) {
       bin_no += bitWeight;
    }
    bitWeight *= 2;
  }

  // Print the decimal value
  if ( bin_no == bin)
  {
    Serial.print(bin_no);
    Serial.print(" -> ");
    Serial.print(bin_count);
    Serial.println();
    if (x == 1)
    {
      if (bin_count1[bin-1] < bin_count)
      {
          total_count[bin-1] += (bin_count - bin_count1[bin-1]);
      }
      else if (bin_count1[bin-1] > bin_count)
      {
          total_count[bin-1] += (bin_count + 255 - bin_count1[bin-1]);
      }
      bin_count1[bin-1] = bin_count;
    }
    bin+=1;  
  }
}
