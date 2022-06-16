import 'dart:convert';
//import 'package:equatable/equatable.dart';
import 'package:tafqit/src/model/unit_code.dart';

class TafqitUnit {
  final TafqitUnitCode unitCode;
  final String comprehensiveUnit;
  final String unit;
  final String unitPlural;
  final TafqitUnitGender unitGender;
  final int unitMaxValue;
  final TafqitUnitCode partialUnitCode;
  TafqitUnit(
      {this.unitCode = TafqitUnitCode.undefined,
      this.comprehensiveUnit = '',
      required this.unit,
      required this.unitPlural,
      required this.unitGender,
      this.unitMaxValue = 0,
      this.partialUnitCode = TafqitUnitCode.undefinedPart});

  /*String get unitMultiple {
    return unit.substring(unit.length - 1) == 'ة'
        ? '${unit.substring(0, unit.length - 1)}تان'
        : '$unitان';
  }*/
  //set setUnitMultiple(unitMultiple unitMultiple) => this.unitMultiple = unitMultiple;='';

  TafqitUnit copyWith({
    TafqitUnitCode? unitCode,
    String? comprehensiveUnit,
    String? unit,
    String? unitPlural,
    TafqitUnitGender? unitGender,
    int? unitMaxValue,
    TafqitUnitCode? partialUnitCode,
  }) {
    return TafqitUnit(
      unitCode: unitCode ?? this.unitCode,
      comprehensiveUnit: comprehensiveUnit ?? this.comprehensiveUnit,
      unit: unit ?? this.unit,
      unitPlural: unitPlural ?? this.unitPlural,
      unitGender: unitGender ?? this.unitGender,
      unitMaxValue: unitMaxValue ?? this.unitMaxValue,
      partialUnitCode: partialUnitCode ?? this.partialUnitCode,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'unitCode': unitCode.toMap()});
    result.addAll({'comprehensiveUnit': comprehensiveUnit});
    result.addAll({'unit': unit});
    result.addAll({'unitPlural': unitPlural});
    result.addAll({'unitGender': unitGender.toMap()});
    result.addAll({'unitMaxValue': unitMaxValue});
    result.addAll({'partialUnitCode': partialUnitCode.toMap()});

    return result;
  }

  factory TafqitUnit.fromMap(Map<String, dynamic> map) {
    // print(map);
    return TafqitUnit(
      unitCode: TafqitUnitCode.fromMap(map['unitCode'] ?? TafqitUnitCode.none),
      comprehensiveUnit:
          ((map['comprehensiveUnit'] ?? '').replaceAll(' ', '')).isEmpty
              ? ''
              : map['comprehensiveUnit'] ?? '',
      unit: map['unit'] ?? '',
      unitPlural: map['unitPlural'] ?? '',
      unitGender: TafqitUnitGender.fromMap(map['unitGender']),
      unitMaxValue: map['unitMaxValue']?.toInt() ?? 0,
      partialUnitCode:
          TafqitUnitCode.fromMap(map['partialUnitCode'] ?? TafqitUnitCode.none),
    );
  }

  String toJson() => json.encode(toMap());

  factory TafqitUnit.fromJson(String source) =>
      TafqitUnit.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TafqitUnit(unitCode: $unitCode, comprehensiveUnit: $comprehensiveUnit, unit: $unit, unitPlural: $unitPlural, unitGender: $unitGender, unitMaxValue: $unitMaxValue, partialUnitCode: $partialUnitCode)';
  }

  List<Object> get props {
    return [
      unitCode,
      comprehensiveUnit,
      unit,
      unitPlural,
      unitGender,
      unitMaxValue,
      partialUnitCode,
    ];
  }
}
