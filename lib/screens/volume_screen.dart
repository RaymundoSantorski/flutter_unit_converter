import 'package:flutter_unit_converter/models/convertion_screen.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';
import 'package:flutter_unit_converter/models/volume/volume_model.dart';

class VolumeScreen extends ConvertionScreen<Volume> {
  const VolumeScreen({super.key});

  @override
  List<Volume> get units => volumeUnits;

  @override
  Volume from(Type fromType, double value) => Volume.from(fromType, value);

  @override
  Volume initialValue() => const Milliliter(0);
}
