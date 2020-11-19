class SerialValueReader {
 public:
  SerialValueReader(int count) : size(count), values(new int[count]) {}
  int size;
  int* values;

  int get(int index) {
      if (0 <= index && index < size) {
          return values[index];
      } else {
          Serial.println("Error: SerialValueReader.get index out of bounds");
          return -1;
      }
  }

  // receive serial data from Processing
  void getSerialData() {
    if (Serial.available()) {
      char c = Serial.read();
      // switch - case checks the value of the variable in the switch function
      // in this case, the char c, then runs one of the cases that fit the value
      // of the variable for more information, visit the reference page:
      // https://www.arduino.cc/en/Reference/SwitchCase
      switch (c) {
        // if the char c from Processing is a number between 0 and 9
        case '0' ... '9':
          // save the value of char c to nextValue but simultaneously rearrange
          // the existing values saved in nextValue for the digits received
          // through char c to remain coherent if this does not make sense and
          // would like to know more, send an email to me!
          nextValue = nextValue * 10 + c - '0';
          break;
        // if the char c from Processing is a comma indicating that the
        // following values of char c is for the next element in the values
        // array
        case ',':
          values[valueIndex] = nextValue;
          valueIndex++;
          if (valueIndex >= size) {
            Serial.println("Error: SerialValueReader received too many values");
            valueIndex -= 1;
          }
          nextValue = 0;
          break;
        // if the char c from Processing is character '\n' or 'n' which signals
        // that it is the end of data
        case 'n':
        case '\n':
          // Save the nextValue. This will be the last element in the values
          // array.
          values[valueIndex] = nextValue;
          // Reset nextValue and valueIndex values, to clear out the values
          // array for the next round of readings from Processing
          valueIndex = 0;
          nextValue = 0;
          break;
        // If the char c from Processing is character 'e' it is signalling for
        // the Arduino to send Processing the elements saved in the values array
        // this case is triggered and processed by the echoSerialData function
        // in the Processing sketch
        case 'e':  // to echo
          for (int i = 0; i < size; i++) {
            if (i > 0) {
              Serial.print(',');
            }
            Serial.print(values[i]);
          }
          Serial.println();
          break;
      }
    }
  }

 private:
  int valueIndex = 0;
  int nextValue = 0;
};
