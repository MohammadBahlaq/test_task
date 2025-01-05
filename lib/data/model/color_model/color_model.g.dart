// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ColorModelAdapter extends TypeAdapter<ColorModel> {
  @override
  final int typeId = 0;

  @override
  ColorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ColorModel(
      alpha: fields[0] as int,
      red: fields[1] as int,
      green: fields[2] as int,
      blue: fields[3] as int,
      isFavorite: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ColorModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.alpha)
      ..writeByte(1)
      ..write(obj.red)
      ..writeByte(2)
      ..write(obj.green)
      ..writeByte(3)
      ..write(obj.blue)
      ..writeByte(4)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
