Tafqit a  Dart/Flutter  package  to convert a number to its text representation in Arabic words.

Tafqit is a package for converting Arabic numerals into their equivalent in words, taking into account the masculine and feminine ones.
Simply the packag's goal is to ensure the accuracy of converting numbers into words according to the correct Arabic rules.


Tafqit, Wording  the numbers:

It is the process of writing numbers as text with words instead of numbers, and the benefit of this process is to prevent manipulation of numbers and the process of Tafqit is always accompanied by the phrase “just nothing else” in order to prevent any manipulation of numbers, it is easy to Tafqit the number 1000 dollars written in number by adding a zero to the right of the number Then it becomes $10,000, but in the Tafqit we write “a thousand dollars only, nothing else” and here a person cannot manipulate the number because it is not only numbers but a text written in letters.


in arabic:
تفقيط مكتبة برمجية بلغة دارت هدفها تحويل الارقام إلى ما يقابلها كتابة بالكلمات، مع مراعاة التذكير والتأنيث
  وتأمين دقة تحويل الأعداد إلى كلمات حسب القواعد العربية الصحيحة


تفقيط اﻷعداد
هي عملية كتابة الأعداد نصاً بالكلمات بدلاً من الأرقام، وفائدة هذه العملية هو منع التلاعب بالارقام ودائماً ما يصاحب عملية التفقيط عبارة "فقط لا غير" لكي تقطع الطريق على أي عملية تلاعب بالارقام، فمن السهل تزوير العدد
المكتوب بالارقام، مثل الف دولار المكتوب رقماً باضافة صفر الى يمين الرقم فيصبح عشرة الالف دولار، اما في التفقيط نكتب "ألف دولاراً فقط لاغير" وهنا لا يمكن لشخص التلاعب في العدد لأنه ليس أرقام فحسب بل نص مكتوب بالحروف.


اسم العدد    	عدد            الاصفار

مليون        	6 أصفار          10⁶

مليار          	9 أصفار          10⁹

تريليون      	12 صفر          10¹²

كوادريليون       	15 صفر          10¹⁵



## Features
The library contains a set of features:

1- It contains a large set of predefined Tafqit units,
such as units of currencies and their countries, times units , distances units, voulme,  and things,

2 - Tafqit units can be added by the developer as needed at the time of implementation, or the application run time,

3- The numbers can be translated to words, or numbers with their parts, and parts of parts, if any.

4- By Default, the library adds the words “only” and “nothing else” to the numbers after converting them into words, and the developer can replace them with other words as needed,

تحتوي المكتبة على مجموعة من الميزات:
1-  احتوائها على مجموعة كبيرة من الوحدات المعرفة مسبقا
مثل وحدات خاصة بالنقود ودولها، ،  الزمن ، والمسافات، والاشياء، 

2 - يمكن اضافة وحدات عد ،  من قبل المطور حسب الحاجة في زمن التنفيذ، او زمن تنفيذ البرنامج، 

3-  يمكن تفقيط الاعداد، او الاعداد مع اجزائها، واجزاء الاجزاء في حال وجدت

4- بشكل تلقائي، تضيف المكتبة عبارة، "فقط"، "لاغير"، إلى الارقام بعد تحويلها إلى كلمات،  ويمكن للمطور،استبدالها بكلمات اخرى حسب الحاجة، 



## Getting started

The library relies on units (most are predefined, also developer can add units at run time), called the Tafqit  unit, to determine  unit Code, the gender of the unit,  as masculine or feminine, neutral, and the unit also needs to know its sub-unit if any,and how many parts is the sub-unit of the main unit 


TafqitUnitCode enum containes all predefined Units.


For example:

Counting unit for the Saudi Riyal, and its subunit  Halalah! (which is already predefined inside package)

//  Saudi Riyal Unit 
{
    'unitCode': TafqitUnitCode.saudiRiyal,  //unique Code.

    'comprehensiveUnit': 'سعودي',          // comprehensiveUnit: country name in the case of currencies

    'unit': 'ريال',                         // currency name


    'unitPlural': 'ريالات',                  // The plural form of the unit, there is no specific rule 

                                           //  in arabic to know it, so it must be defined in advance

    'unitMaxValue': 0,                      // The upper limit allowed as a value of the number,
                                           // 0 in the case of no limit, for example 60 in the case of a unit /// for counting minutes or seconds


    'unitGender': TafqitUnitGender.masculine, // The riyal is masculine

    'partialUnitCode': TafqitUnitCode.saudiRiyalHalala //The subunit Code, is the Halalah
      }

And the  definiton of the subunit  : Halalah!

  {
    'unitCode': TafqitUnitCode.saudiRiyalHalala,

    'comprehensiveUnit': 'سعودي',

    'unit': 'هللة',

    'unitPlural': 'هللات',

    'unitMaxValue': 100,                     // Halalah is 100 parts of the Saudi riyal

    'unitGender': TafqitUnitGender.feminine, // The riyal is feminine

    'partialUnitCode': TafqitUnitCode.none   // no more subunits. its none incase you iqnore it.

  },


Some of the units do not have a subunit, such as the definition of an Ounce:

{ // here we immited unused fields, will be filled by default values.
    'unitCode': TafqitUnitCode.ounce,
    'unit': 'أونصة',
    'unitPlural': 'أونصات',
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none  // ounce has no  subunits.
  },


Some of the units's Gender is neutral, such as the definition of an percentage:

  {
    'unitCode': TafqitUnitCode.percent,
    
    'comprehensiveUnit': 'بالمئة', // for neutral units we used comprehensiveUnit as unit name and Plural form
    
    'unit': '',
    'unitPlural': '',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.neutral,  // The percentage  is neutral
    'partialUnitCode': TafqitUnitCode.none
  },


## Usage


Add dependency

    dependencies:
        tafqit: 0.0.1  #latest version


import 'package:tafqit/tafqit.dart';



void main() {
  var tafqit = Tafqit();


///  1- Using  Predefine Tafqit Units:

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));

  /// will print    'فقط ريالان سعوديان واثنتان وستون هللةً لاغير'
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));

  /// will print 'فقط اثنتان وستون هللةً سعوديةً لاغير'
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0.9, 62], //  Fraction not accepted will gave null as resault.
      tafqitUnitCode: TafqitUnitCode.saudiRiyal,
      tryTafqit: true));
  /// will print  null




///  2- defaine a new Tafqit Units:

  // بات تايلدندي   =  ساتانغ 100
  var batUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'بات',
    'unitPlural': 'باتات',
     'unitGender': TafqitUnitGender.masculine,
  };
  var batPennyUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'ساتانغ',
    'unitPlural': 'ساتانغات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
  };

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {3: batUnit},
    {11: batPennyUnit}
  ]));
  // will print  'فقط ثلاثة باتات تايلندية واحد عشر ساتانغاً لاغير'


      var aPotunit = {
        'unit': 'طنجرة',
        'unitPlural': 'طناجر',
        'unitGender': TafqitUnitGender.feminine
      };

      print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts:
      [{ 234234 :  aPotunit}]));
      // will Print  'فقط مئتان واربعة وثلاثون الفاً ومئتان واربع وثلاثون طنجرةً لاغير'


////// 3- Using JustWord & Nothing Else:


        print(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [23, 2, 59],
                tafqitUnitCode: TafqitUnitCode.hour));
    // will print:
    //    'فقط ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً لاغير'

        print (
            tafqit.tafqitNumberWithParts(
              listOfNumberAndParts: [23, 2, 59],
              tafqitUnitCode: TafqitUnitCode.hour,
              justWord: 'الوقت المتوقع هو:',
              noOtherWord: 'بدأً من ساعة الصفر',
            ));
        // will print:
        // 'الوقت المتوقع هو: ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً بدأً من ساعة الصفر'

//// more examples to be added
}








## Additional information

This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.
