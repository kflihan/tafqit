import 'unit_code.dart';

const List<Map<String, dynamic>> tafqitPredefinedUnits = [
  {
    'unitCode': TafqitUnitCode.once,
    'comprehensiveUnit': '',
    'unit': 'مرّة',
    'unitPlural': 'مرّات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none,
  },
  {
    'unitCode': TafqitUnitCode.none,
    'comprehensiveUnit': '',
    'unit': '',
    'unitPlural': '',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.neutral,
    'partialUnitCode': TafqitUnitCode.none,
  },
  {
    'unitCode': TafqitUnitCode.undefined,
    'comprehensiveUnit': '',
    'unit': 'قلم',
    'unitPlural': 'أٌقلام',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.undefinedPart,
  },
  {
    'unitCode': TafqitUnitCode.undefinedPart,
    'comprehensiveUnit': '',
    'unit': 'جزء',
    'unitPlural': 'أجزاء',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  // ========  weight Units
  {
    'unitCode': TafqitUnitCode.metricTon,
    'comprehensiveUnit': '',
    'unit': 'طن',
    'unitPlural': 'أطنان',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.kiloGram,
  },
  {
    'unitCode': TafqitUnitCode.kiloGram,
    'comprehensiveUnit': '',
    'unit': 'كيلو غرام',
    'unitPlural': 'كيلو غرامات',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.gram,
  },
  {
    'unitCode': TafqitUnitCode.gram,
    'comprehensiveUnit': '',
    'unit': 'غرام',
    'unitPlural': 'غرامات',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.ounce,
    'comprehensiveUnit': '',
    'unit': 'أونصة',
    'unitPlural': 'أونصات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  },

  //====== Units of times
  {
    'unitCode': TafqitUnitCode.hour,
    'comprehensiveUnit': '',
    'unit': 'ساعة',
    'unitPlural': 'ساعات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.minute
  },
  {
    'comprehensiveUnit': '',
    'unit': 'دقيقة',
    'unitPlural': 'دقائق',
    'unitMaxValue': 60,
    'unitGender': TafqitUnitGender.feminine,
    'unitCode': TafqitUnitCode.minute,
    'partialUnitCode': TafqitUnitCode.second
  },
  {
    'unitCode': TafqitUnitCode.second,
    'comprehensiveUnit': '',
    'unit': 'ثانية',
    'unitPlural': 'ثواني',
    'unitMaxValue': 60,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.millisecond,
  },
  {
    'unitCode': TafqitUnitCode.millisecond,
    'comprehensiveUnit': '',
    'unit': 'ميلي ثانية',
    'unitPlural': 'ميلي ثواني',
    'unitMaxValue': 60,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none,
  },
  //=============== Units of  distances and lengths
  {
    'unitCode': TafqitUnitCode.kiloMetre,
    'comprehensiveUnit': '',
    'unit': 'كيلو متر',
    'unitPlural': 'كيلو مترات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.metre,
  },

  {
    'unitCode': TafqitUnitCode.kiloMetre2,
    'comprehensiveUnit': 'مربع',
    'unit': 'كيلو متر',
    'unitPlural': 'كيلو مترات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.metre2,
  },
  {
    'unitCode': TafqitUnitCode.metre,
    'comprehensiveUnit': '',
    'unit': 'متر',
    'unitPlural': 'امتار',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.centimeter
  },
  {
    'unitCode': TafqitUnitCode.metre2,
    'comprehensiveUnit': 'مربع',
    'unit': 'متر',
    'unitPlural': 'امتار',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.centimeter2
  },

  {
    'unitCode': TafqitUnitCode.centimeter2,
    'comprehensiveUnit': 'مربع',
    'unit': 'سنتميتر',
    'unitPlural': 'سنتيمترات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.milliMeter2
  },

  {
    'unitCode': TafqitUnitCode.milliMeter2,
    'comprehensiveUnit': 'مربع',
    'unit': 'ميلي',
    'unitPlural': 'ميليات',
    'unitMaxValue': 10,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.yard,
    'comprehensiveUnit': '',
    'unit': 'ياردة',
    'unitPlural': 'ياردات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.mile,
    'comprehensiveUnit': '',
    'unit': 'ميل',
    'unitPlural': 'أميال',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.feet,
    'comprehensiveUnit': '',
    'unit': 'قدم',
    'unitPlural': 'أقدام',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.inch,
    'comprehensiveUnit': '',
    'unit': 'إنش',
    'unitPlural': 'إنشات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.degree,
    'comprehensiveUnit': '',
    'unit': 'درجة',
    'unitPlural': 'درجات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.fahrenheit,
    'comprehensiveUnit': '',
    'unit': 'درجة فهرنهايت',
    'unitPlural': 'درجات فهرنهايت',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.centimeter,
    'comprehensiveUnit': '',
    'unit': 'سنتميتر',
    'unitPlural': 'سنتيمترات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.milliMeter
  },
  {
    'unitCode': TafqitUnitCode.milliMeter,
    'comprehensiveUnit': '',
    'unit': 'ميلي',
    'unitPlural': 'ميليات',
    'unitMaxValue': 10,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  // ===== Units of currencies
  {
    'unitCode': TafqitUnitCode.unitedStatesDollar,
    'comprehensiveUnit': 'أميريكي',
    'unit': 'دولار',
    'unitPlural': 'دولارات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.unitedStatesDollarPenny,
  },
  {
    'unitCode': TafqitUnitCode.unitedStatesDollarPenny,
    'comprehensiveUnit': 'أميريكي',
    'unit': 'سنت',
    'unitPlural': 'سنتات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.russianRuble,
    'comprehensiveUnit': 'روسي',
    'unit': 'روبل',
    'unitPlural': 'روبلات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.russianRubleCopeck
  },

  {
    'unitCode': TafqitUnitCode.russianRubleCopeck,
    'comprehensiveUnit': 'روسي',
    'unit': 'كوبيك',
    'unitPlural': 'كوييكات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none,
  },

  {
    'unitCode': TafqitUnitCode.canadianDollar,
    'comprehensiveUnit': 'كندي',
    'unit': 'دولار',
    'unitPlural': 'دولارات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.canadianDollarCent,
  },
  {
    'unitCode': TafqitUnitCode.canadianDollarCent,
    'comprehensiveUnit': 'كندي',
    'unit': 'سنت',
    'unitPlural': 'سنتات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.euro,
    'comprehensiveUnit': 'أوربي',
    'unit': 'يورو',
    'unitPlural': 'يوروهات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.euroCent,
  },
  {
    'unitCode': TafqitUnitCode.euroCent,
    'comprehensiveUnit': 'أوربي',
    'unit': 'سنت',
    'unitPlural': 'سنتات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.australianDollar,
    'comprehensiveUnit': 'أسترالي',
    'unit': 'جنيه',
    'unitPlural': 'جنيهات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.australianDollarCent,
  },
  {
    'unitCode': TafqitUnitCode.australianDollarCent,
    'comprehensiveUnit': 'أسترالي',
    'unit': 'سنت',
    'unitPlural': 'سنتات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.bitcoin,
    'comprehensiveUnit': '',
    'unit': 'بيتكوين',
    'unitPlural': 'بيتكوينات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.bitcoinSatoshi,
  },
  {
    'unitCode': TafqitUnitCode.bitcoinSatoshi,
    'comprehensiveUnit': '',
    'unit': 'سيتوشي',
    'unitPlural': 'سيتوشيات',
    'unitMaxValue': 100000000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.poundSterling,
    'comprehensiveUnit': 'أسترليني',
    'unit': 'جنيه',
    'unitPlural': 'جنيهات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.poundSterlingPence,
  },
  {
    'unitCode': TafqitUnitCode.poundSterlingPence,
    'comprehensiveUnit': 'أسترليني',
    'unit': 'بنس',
    'unitPlural': 'بنسات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.kuwaitiDinar,
    'comprehensiveUnit': 'كويتي',
    'unit': 'دينار',
    'unitPlural': 'دنانير',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.kuwaitiDinarFulus
  },
  {
    'unitCode': TafqitUnitCode.kuwaitiDinarFulus,
    'comprehensiveUnit': 'كويتي',
    'unit': 'فلس',
    'unitPlural': 'فلوس',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.saudiRiyal,
    'comprehensiveUnit': 'سعودي',
    'unit': 'ريال',
    'unitPlural': 'ريالات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.saudiRiyalHalala
  },
  {
    'unitCode': TafqitUnitCode.saudiRiyalHalala,
    'comprehensiveUnit': 'سعودي',
    'unit': 'هللة',
    'unitPlural': 'هللات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.syrianPound,
    'comprehensiveUnit': 'سورية',
    'unit': 'ليرة',
    'unitPlural': 'ليرات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.syrianPoundqirsh
  },
  {
    'unitCode': TafqitUnitCode.syrianPoundqirsh,
    'comprehensiveUnit': 'سورية',
    'unit': 'قرش',
    'unitPlural': 'قروش',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.mauritanianOuguiya,
    'comprehensiveUnit': 'موريتانية',
    'unit': 'أوقية',
    'unitPlural': 'أوقيات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.mauritanianOuguiyaKhoums
  },
  {
    'unitCode': TafqitUnitCode.syrianPoundqirsh,
    'comprehensiveUnit': 'موريتانية',
    'unit': 'خمس',
    'unitPlural': 'أخماس',
    'unitMaxValue': 5,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.turkishLira,
    'comprehensiveUnit': 'تركية',
    'unit': 'ليرة',
    'unitPlural': 'ليرات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.turkishLiraQirsh
  },
  {
    'unitCode': TafqitUnitCode.turkishLiraQirsh,
    'comprehensiveUnit': 'تركية',
    'unit': 'قرش',
    'unitPlural': 'قروش',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.lebanonPound,
    'comprehensiveUnit': 'لبنانية',
    'unit': 'ليرة',
    'unitPlural': 'ليرات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.lebanonPoundPenny
  },
  {
    'unitCode': TafqitUnitCode.lebanonPoundPenny,
    'comprehensiveUnit': 'لبنانية',
    'unit': 'قرش',
    'unitPlural': 'قروش',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.emiratesDirham,
    'comprehensiveUnit': 'إماراتي',
    'unit': 'درهم',
    'unitPlural': 'دراهم',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.emiratesDirhamPenny
  },
  {
    'unitCode': TafqitUnitCode.emiratesDirhamPenny,
    'comprehensiveUnit': 'إماراتي',
    'unit': 'فلس',
    'unitPlural': 'فلوس',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.egyptianPound,
    'comprehensiveUnit': 'مصري',
    'unit': 'جنيه',
    'unitPlural': 'جنيهات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.egyptianPoundPiastre
  },
  {
    'unitCode': TafqitUnitCode.egyptianPoundPiastre,
    'comprehensiveUnit': 'مصري',
    'unit': 'قرش',
    'unitPlural': 'قروش',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.egyptianPoundMillieme
  },
  {
    'unitCode': TafqitUnitCode.egyptianPoundMillieme,
    'comprehensiveUnit': 'مصري',
    'unit': 'مليم',
    'unitPlural': 'مليمات',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.sudanesePound,
    'comprehensiveUnit': 'سوداني',
    'unit': 'جنيه',
    'unitPlural': 'جنيهات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.sudanesePoundQirsh
  },
  {
    'unitCode': TafqitUnitCode.sudanesePoundQirsh,
    'comprehensiveUnit': 'سوداني',
    'unit': 'قرش',
    'unitPlural': 'قروش',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.jordanianDinar,
    'comprehensiveUnit': 'أردني',
    'unit': 'دينار',
    'unitPlural': 'دنانير',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.jordanianDinardirham
  },
  {
    'unitCode': TafqitUnitCode.jordanianDinardirham,
    'comprehensiveUnit': 'أردني',
    'unit': 'درهم',
    'unitPlural': 'دراهم',
    'unitMaxValue': 10,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.jordanianDinarqirsh
  },

  {
    'unitCode': TafqitUnitCode.qatariRiyal,
    'comprehensiveUnit': 'قطري',
    'unit': 'ريال',
    'unitPlural': 'ريالات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.qatariRiyalDirham
  },
  {
    'unitCode': TafqitUnitCode.qatariRiyalDirham,
    'comprehensiveUnit': 'قطري',
    'unit': 'درهم',
    'unitPlural': 'دراهم',
    'unitMaxValue': 10,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.libyanDinar,
    'comprehensiveUnit': 'ليبي',
    'unit': 'درهم',
    'unitPlural': 'دراهم',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.libyanDinarDirham
  },
  {
    'unitCode': TafqitUnitCode.libyanDinarDirham,
    'comprehensiveUnit': 'ليبي',
    'unit': 'درهم',
    'unitPlural': 'دراهم',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.yemeniRial,
    'comprehensiveUnit': 'يمني',
    'unit': 'ريال',
    'unitPlural': 'ريالات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.yemeniRialFils
  },
  {
    'unitCode': TafqitUnitCode.yemeniRialFils,
    'comprehensiveUnit': 'يمني',
    'unit': 'فلس',
    'unitPlural': 'فلوس',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.omaniRial,
    'comprehensiveUnit': 'عماني',
    'unit': 'ريال',
    'unitPlural': 'ريالات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.omaniRialBaisa
  },
  {
    'unitCode': TafqitUnitCode.omaniRialBaisa,
    'comprehensiveUnit': 'عماني',
    'unit': 'بيسة',
    'unitPlural': 'بيسات',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.jordanianDinarqirsh
  },

  {
    'unitCode': TafqitUnitCode.jordanianDinarqirsh,
    'comprehensiveUnit': 'أردني',
    'unit': 'قرش',
    'unitPlural': 'قروش',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.jordanianDinarFulus
  },
  {
    'unitCode': TafqitUnitCode.jordanianDinarFulus,
    'comprehensiveUnit': 'أردني',
    'unit': 'فلس',
    'unitPlural': 'فلوس',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.bahrainiDinar,
    'comprehensiveUnit': 'بحريني',
    'unit': 'دينار',
    'unitPlural': 'دنانير',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.bahrainiDinarFulus
  },
  {
    'unitCode': TafqitUnitCode.bahrainiDinarFulus,
    'comprehensiveUnit': 'بحريني',
    'unit': 'فلس',
    'unitPlural': 'فلوس',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.tunisianDinar,
    'comprehensiveUnit': 'تونسي',
    'unit': 'دينار',
    'unitPlural': 'دنانير',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.tunisianDinarMillim
  },
  {
    'unitCode': TafqitUnitCode.tunisianDinarMillim,
    'comprehensiveUnit': 'تونسي',
    'unit': 'مليم',
    'unitPlural': 'مليمات',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.algerianDinar,
    'comprehensiveUnit': 'جزائري',
    'unit': 'دينار',
    'unitPlural': 'دنانير',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.algerianDinarCentime
  },
  {
    'unitCode': TafqitUnitCode.algerianDinarCentime,
    'comprehensiveUnit': 'جزائري',
    'unit': 'سنتيم',
    'unitPlural': 'سنتيمات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.moroccanDirham,
    'comprehensiveUnit': 'مغربي',
    'unit': 'درهم',
    'unitPlural': 'دراهم',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.moroccanDirhamCentime
  },
  {
    'unitCode': TafqitUnitCode.moroccanDirhamCentime,
    'comprehensiveUnit': 'مغربي',
    'unit': 'سنتيم',
    'unitPlural': 'سنتيمات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.iraqiDinar,
    'comprehensiveUnit': 'عراقي',
    'unit': 'دينار',
    'unitPlural': 'دنانير',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.iraqiDinarFils
  },
  {
    'unitCode': TafqitUnitCode.iraqiDinarFils,
    'comprehensiveUnit': 'عراقي',
    'unit': 'فلس',
    'unitPlural': 'فلوس',
    'unitMaxValue': 1000,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  //====

  {
    'unitCode': TafqitUnitCode.percent,
    'comprehensiveUnit': 'بالمئة',
    'unit': '',
    'unitPlural': '',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.neutral,
    'partialUnitCode': TafqitUnitCode.none
  },

  ///=======
  ///

  {
    'unitCode': TafqitUnitCode.container,
    'comprehensiveUnit': '',
    'unit': 'حاوية',
    'unitPlural': 'حاويات',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
  {
    'unitCode': TafqitUnitCode.package,
    'comprehensiveUnit': '',
    'unit': 'طرد',
    'unitPlural': 'طرود',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.share,
    'comprehensiveUnit': '',
    'unit': 'سهم',
    'unitPlural': 'أسهم',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.box,
    'comprehensiveUnit': '',
    'unit': 'صندوق',
    'unitPlural': 'صناديق',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.can,
    'comprehensiveUnit': '',
    'unit': 'علبة',
    'unitPlural': 'علب',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.kiloMetrePerHour,
    'comprehensiveUnit': '',
    'unit': 'كيلومتر في الساعة',
    'unitPlural': 'كيلومترات في الساعة',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },

  {
    'unitCode': TafqitUnitCode.metrePerSecond,
    'comprehensiveUnit': '',
    'unit': 'متر في الثانية',
    'unitPlural': 'أمتار في الثانية',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  },
];
