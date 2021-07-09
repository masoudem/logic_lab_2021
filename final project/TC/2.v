module temperatureAnalyzer(
 temperature,
 temperatureAbnormality);
input [7:0] temperature;
output temperatureAbnormality;
 assign temperatureAbnormality = (temperature > 39) || (temperature < 35);
endmodule
