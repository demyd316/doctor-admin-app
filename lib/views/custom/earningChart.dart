import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

FlutterSlider EarningChart(context, double value){
  return FlutterSlider(
    handlerWidth: 0,
    handler: FlutterSliderHandler(
      disabled: false,
      opacity: 0.0,
    ),
    values: [value],
    max: 150,
    min: 0,
    rtl: true,
    axis: Axis.vertical,
    tooltip: FlutterSliderTooltip(
      disabled: true,
    ),
    trackBar: FlutterSliderTrackBar(
      activeTrackBar: BoxDecoration(
        color: Color(0xff01e9cf)
      ),
      inactiveTrackBar: BoxDecoration(
        color: Color(0xff4375ba)
      )
    ),
  );
}