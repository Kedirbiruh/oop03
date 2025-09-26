enum MeasurementSystem {
  mm(1.0),
  cm(10.0),
  dm(100.0),
  m(1000.0),
  inch(25.4),
  feet(304.8);

  final double mmPerUnit;
  const MeasurementSystem(this.mmPerUnit);

  double toMm(double value) => value * mmPerUnit;
  double fromMm(double mm) => mm / mmPerUnit;
}

class Triangle {
  double _widthInMm;
  double _heightInMm;
  final MeasurementSystem createdWith;

  Triangle._internal(this._widthInMm, this._heightInMm, this.createdWith);

  factory Triangle.mm(double width, double height) => Triangle._internal(
    MeasurementSystem.mm.toMm(width),
    MeasurementSystem.mm.toMm(height),
    MeasurementSystem.mm,
  );

  factory Triangle.cm(double width, double height) => Triangle._internal(
    MeasurementSystem.cm.toMm(width),
    MeasurementSystem.cm.toMm(height),
    MeasurementSystem.cm,
  );

  factory Triangle.dm(double width, double height) => Triangle._internal(
    MeasurementSystem.dm.toMm(width),
    MeasurementSystem.dm.toMm(height),
    MeasurementSystem.dm,
  );

  factory Triangle.m(double width, double height) => Triangle._internal(
    MeasurementSystem.m.toMm(width),
    MeasurementSystem.m.toMm(height),
    MeasurementSystem.m,
  );

  factory Triangle.inch(double width, double height) => Triangle._internal(
    MeasurementSystem.inch.toMm(width),
    MeasurementSystem.inch.toMm(height),
    MeasurementSystem.inch,
  );

  factory Triangle.feet(double width, double height) => Triangle._internal(
    MeasurementSystem.feet.toMm(width),
    MeasurementSystem.feet.toMm(height),
    MeasurementSystem.feet,
  );

  factory Triangle.from(
    double width,
    double height,
    MeasurementSystem system,
  ) => Triangle._internal(system.toMm(width), system.toMm(height), system);

  // area in mm2
  double get areaInMm2 => 0.5 * _widthInMm * _heightInMm;

  double areaIn(MeasurementSystem system) =>
      areaInMm2 / (system.mmPerUnit * system.mmPerUnit);

  // ---- Getter und Setter für Breite -----

  double get widthInMm => _widthInMm;
  set widthInMm(double mm) => _widthInMm = _validate(mm);

  double get widthInCm => MeasurementSystem.cm.fromMm(_widthInMm);
  set widthInCm(double v) =>
      _widthInMm = MeasurementSystem.cm.toMm(_validate(v));

  double get widthIndm => MeasurementSystem.dm.fromMm(_widthInMm);
  set widthIndm(double v) =>
      _widthInMm = MeasurementSystem.dm.toMm(_validate(v));

  double get widthInm => MeasurementSystem.m.fromMm(_widthInMm);
  set widthInm(double v) => _widthInMm = MeasurementSystem.m.toMm(_validate(v));

  double get widthInch => MeasurementSystem.inch.fromMm(_widthInMm);
  set widthInch(double v) =>
      _widthInMm = MeasurementSystem.inch.toMm(_validate(v));
  double get widthfeet => MeasurementSystem.feet.fromMm(_widthInMm);
  set widthfeet(double v) =>
      _widthInMm = MeasurementSystem.feet.toMm(_validate(v));

  // ---- Getter und Setter für Höhe

  double get heightInMm => _heightInMm;
  set heightInMm(double mm) => _heightInMm = _validate(mm)

    double get heightCm => MeasurementSystem.cm.fromMm(_heightInMm);
  set heightInCm(double v) =>
      _heightInMm = MeasurementSystem.cm.toMm(_validate(v));

  double get heightIndm => MeasurementSystem.dm.fromMm(_heightInMm);
  set heightIndm(double v) =>
      _heightInMm = MeasurementSystem.dm.toMm(_validate(v));

  double get heightInm => MeasurementSystem.m.fromMm(_heightInMm);
  set heightInm(double v) => 
      _heightInMm = MeasurementSystem.m.toMm(_validate(v));

  double get heightInch => MeasurementSystem.inch.fromMm(_heightInMm);
  set heightInch(double v) =>
      _heightInMm = MeasurementSystem.inch.toMm(_validate(v));
      
      double get heightfeet => MeasurementSystem.feet.fromMm(_heightInMm);
  set heightfeet(double v) =>
      _heightInMm = MeasurementSystem.feet.toMm(_validate(v));




  @override
  String toString() {
    return 'Triangle(width: ${_widthInMm.toStringAsFixed(2)} mm, height: ${_heightInMm.toStringAsFixed(2)} mm,'
        'createdWith: $createdWith, area: ${areaInMm2.toStringAsFixed(2)} mm²';
  }
}
