// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsModelAdapter extends TypeAdapter<SettingsModel> {
  @override
  final int typeId = 0;

  @override
  SettingsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SettingsModel()
      ..defaultLanguageDirection =
          fields[0] == null ? 'uaPl' : fields[0] as String?
      ..askLanguageDirection = fields[1] == null ? true : fields[1] as bool?
      ..useSentenceInExercises = fields[2] == null ? true : fields[2] as bool?
      ..exerciseFlashcardDefaultUse =
          fields[3] == null ? true : fields[3] as bool?
      ..exerciseScratchCardsDefaultUse =
          fields[4] == null ? true : fields[4] as bool?
      ..exerciseMultipleChoiceDefaultUse =
          fields[5] == null ? true : fields[5] as bool?
      ..exerciseMatchMakerDefaultUse =
          fields[6] == null ? true : fields[6] as bool?
      ..exerciseAlphabetSoupDefaultUse =
          fields[7] == null ? true : fields[7] as bool?
      ..exerciseWritingDefaultUse =
          fields[8] == null ? true : fields[8] as bool?
      ..exerciseListenTypeDefaultUse =
          fields[9] == null ? true : fields[9] as bool?;
  }

  @override
  void write(BinaryWriter writer, SettingsModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.defaultLanguageDirection)
      ..writeByte(1)
      ..write(obj.askLanguageDirection)
      ..writeByte(2)
      ..write(obj.useSentenceInExercises)
      ..writeByte(3)
      ..write(obj.exerciseFlashcardDefaultUse)
      ..writeByte(4)
      ..write(obj.exerciseScratchCardsDefaultUse)
      ..writeByte(5)
      ..write(obj.exerciseMultipleChoiceDefaultUse)
      ..writeByte(6)
      ..write(obj.exerciseMatchMakerDefaultUse)
      ..writeByte(7)
      ..write(obj.exerciseAlphabetSoupDefaultUse)
      ..writeByte(8)
      ..write(obj.exerciseWritingDefaultUse)
      ..writeByte(9)
      ..write(obj.exerciseListenTypeDefaultUse);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
