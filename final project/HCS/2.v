module HealthcareSystemPhase1(
 pressureData,
 bloodPH,
 bloodType,
 fdSensorValue,
 fdFactoryValue,
 factotyBaseTemp,
 factotyTempCoef,
 tempSensorValue
 presureAbnormality,
 bloodAbnormality,
 fallDetected,
 temperatureAbnormality);
input [5:0] pressureData;
input [3:0] bloodPH;
input [2:0] bloodType;
input [7:0] fdSensorValue;
input [7:0] fdFactoryValue;
input [7:0] bloodSensor;
input [4:0] factotyBaseTemp;
input [3:0] factotyTempCoef;
input [3:0] tempSensorValue;
output presureAbnormality;
output bloodAbnormality;
output [3:0] glycemicIndex;
output temperatureAbnormality;
 // write your code here, please.
endmodule
