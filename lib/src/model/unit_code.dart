enum TafqitUnitCode {
  test('TST'),
  once('once'),
  none('NON'),
  undefined('UND'),
  undefinedPart('UNDP'),
  userDefined('USRD'),

  syrianPound('SYP'),
  syrianPoundqirsh('SYPQ'),

  turkishLira('TRY'),
  turkishLiraQirsh('TRYQ'),

  sudanesePound('SDG'),
  sudanesePoundQirsh('SDGQ'),

  omaniRial('OMR'),
  omaniRialBaisa('OMR'),

  lebanonPound('LBP'),
  lebanonPoundPenny('LBPP'),

  emiratesDirham('AED'),
  emiratesDirhamPenny('AEDP'),

  unitedStatesDollar('USD'),
  unitedStatesDollarPenny('USDP'),

  egyptianPound('EGP'),
  egyptianPoundPiastre('EGPP'),
  egyptianPoundMillieme('EGPM'),

  jordanianDinar('JOD'),
  jordanianDinardirham('JODD'), //10 dirham
  jordanianDinarqirsh('JODQ'), //100 qirsh
  jordanianDinarFulus('JODF'), //1000 fulus

  saudiArabianRiyal('SAR'),
  saudiArabianRiyalHalala('SARP'),

  kuwaitiDinar('DK'),
  kuwaitiDinarFulus('DKF'),

  libyanDinar('LYD'),
  libyanDinarDirham('LYDD'),

  mauritanianOuguiya('MRU'),
  mauritanianOuguiyaKhoums('MRUKH'),

  bahrainiDinar('BHD'),
  bahrainiDinarFulus('BHDF'),

  tunisianDinar('TD'),
  tunisianDinarMillim('TDM'),

  yemeniRial('YER'),
  yemeniRialFils('YERF'),

  algerianDinar('DZD'),
  algerianDinarCentime('DZDM'),

  iraqiDinar('IQD'),
  iraqiDinarFils('IQDF'),

  euro('EUR'),
  euroCent('EURC'),

  australianDollar('AUSD'),
  australianDollarCent('AUSC'),
  canadianDollar('CAD'),
  canadianDollarCent('CADC'),

  poundSterling('GBP'),
  poundSterlingPence('GBPP'),

  moroccanDirham('MAD'),
  moroccanDirhamCentime('MADC'),

  bitcoin('BITC'),
  bitcoinSatoshi('BITCS'), // 100000000

  qatariRiyal('QR'),
  qatariRiyalDirham('QRD'),
  mile('MI'),
  yard('YA'),
  feet('FE'),
  inch('INCH'),
  degree('DGRE'),
  fahrenheit('FHRN'),

  russianRuble('RUB'),
  russianRubleCopeck('RUBC'),

  metricTon('MTON'),
  kiloGram('KG'),
  gram('GRAM'),

  ounce('OZ'),
  percent('PCT'),

  kiloMetre2('KM2'),
  kiloMetre('KM'),
  metre('M'),
  metre2('M2'),
  centimeter('CM'),
  centimeter2('CM2'),

  milliMeter('MM'),
  milliMeter2('MM2'),

  kiloMetrePerHour('KMPH'),
  metrePerSecond('MPS'),

  hour('HR'),
  minute('MIN'),
  second('SEC'),
  millisecond('MSEC'),

  container('CON'),
  package('PKG'),
  box('BOX'),
  can('CAN'),

  share('SHARE'),
  ;

  //final int codeIndex;
  final String code;
  const TafqitUnitCode(this.code);
  @override
  String toString() => 'The $name Code is $code';

  String toMap() => code;

  //tafqitUnitCode fromMap(String unitCode) =>
  //   tafqitUnitCode.values.firstWhere((e) => e.toMap() == unitCode);
  factory TafqitUnitCode.fromMap(TafqitUnitCode x) {
    return (x); //(TafqitUnitCode.values.firstWhere((e) => e.toMap() == x));
  }
}

//=== Gender
//Determine if the number is masculine or feminine
enum TafqitUnitGender {
  masculine('M'),
  neutral('N'),
  feminine('F');

  //final int codeIndex;
  final String code;
  const TafqitUnitGender(this.code);
  @override
  String toString() => 'The $name Code is $code';

  String toMap() => code;

  //tafqitUnitCode fromMap(String unitCode) =>
  //   tafqitUnitCode.values.firstWhere((e) => e.toMap() == unitCode);
  factory TafqitUnitGender.fromMap(TafqitUnitGender x) {
    return (x);
    // (TafqitUnitGender.values.firstWhere((e) => e.toMap() == x));
  }
}
