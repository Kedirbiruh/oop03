class Triangle {
  final double widthInMm;
  final double heightInMm;
  final MeasurementSystem measurementSystem;



double unitToMmFactor(MeasurementSystem system) {
  switch (system) {
    case MeasurementSystem.mm:
      return 1.0;
    case MeasurementSystem.cm:
      return 10.0;
    case MeasurementSystem.dm:
      return 100.0;
    case MeasurementSystem.m:
      return 1000.0;
    case MeasurementSystem.inch:
      return 25.4;
    case MeasurementSystem.feet:
      return 304.8;
  }
}

  
  Triangle(this.widthInMm, this.heightInMm)
    : measurementSystem = MeasurementSystem.mm;

  Triangle.cm(double width, double height)
    : widthInMm = width * 10,
      heightInMm = height * 10,
      measurementSystem = MeasurementSystem.cm;

  Triangle.dm(double width, double height)
    : widthInMm = width * 100,
      heightInMm = height * 100,
      measurementSystem = MeasurementSystem.dm;

  Triangle.m(double width, double height)
    : widthInMm = width * 1000,
      heightInMm = height * 1000,
      measurementSystem = MeasurementSystem.m;

  Triangle.inch(double width, double height)
    : widthInMm = width * 25.4,
      heightInMm = height * 25.4,
      measurementSystem = MeasurementSystem.inch;

  Triangle.feet(double width, double height)
    : widthInMm = width * 304.8,
      heightInMm = height * 304.8,
      measurementSystem = MeasurementSystem.feet;

  // area in mm2
  double get areaInMm2 => 0.5 * widthInMm * heightInMm;

  @override
  String toString() {
    return 'Triangle(width: $widthInMm mm, height: $heightInMm mm, system: $measurementSystem, area: ${areaInMm2.toString} mm²)';
  }

}



