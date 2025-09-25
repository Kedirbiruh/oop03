enum MeasurementSystem {
  mm(1.0),
  cm(10.0),
  dm(100.0),
  m(1000.0),
  inch(25.4),
  feet(304.8);

  final double factorToMm; 
  const MeasurementSystem(this.factorToMm);}


class Triangle {
  double _widthInMm;
  double _heightInMm;
  final MeasurementSystem measurementSystem;



  Triangle._internal(this._widthInMm, this._heightInMm, this.measurementSystem);

  factory Triangle.mm(double width, double height) =>
    Triangle._internal(width, height, MeasurementSystem.mm);

  factory Triangle.cm(double width, double height) =>
    Triangle._internal(width, height, MeasurementSystem.cm);

  factory Triangle.dm(double width, double height) =>
    Triangle._internal(width, height, MeasurementSystem.dm);

  factory Triangle.m(double width, double height) =>
    Triangle._internal(width, height, MeasurementSystem.m);

  factory Triangle.inch(double width, double height) =>
    Triangle._internal(width, height, MeasurementSystem.inch);

  factory Triangle.feet(double width, double height) =>
    Triangle._internal(width, height, MeasurementSystem.feet);



  // area in mm2
  double get areaInMm2 => 0.5 * _widthInMm * _heightInMm;

  @override
  String toString() {
    return 'Triangle(width: $_widthInMm mm, height: $_heightInMm mm, system: $measurementSystem, area: ${areaInMm2.toString} mm²)';
  }

  // Getter für die Breite in cm
  double get widthInCm {
    return _widthInMm / 10;
  }

  //Setter für Breite in cm

  set widthInCm(double width) {
    if (width > 0) {
      _widthInMm = width * 10;
    }
  }

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
}

