import 'package:flutter/material.dart';

const Color colorGray = Color(0xff707070);
const Color primaryColor = Color(0xff006AFF);
const String connectText = 'يمكنك التواصل مع أ.غسان نكدلي للحصول '
    'على دروس خاصة عبر مواقع التواصل'
    '\n الاجتماعي';

const List<String> images = [
  'assets/images/whatup.png',
  'assets/images/facebook.png',
  'assets/images/youtube.png',
  'assets/images/insta.png',
  'assets/images/telegram.png',
  'assets/images/phone.png',
];
const String aboutApp = 'تطبيق English With Ghassan  هو تطبيق لتعلم اللغة الإنكليزية بطريقة مبسطة من الأستاذ القدير\n أ.غسان نكدلي';
const List<Map<String, String>> wordsCategories = [
  {
    'name': 'اللفظ',
    'subtitle': 'Pronunciation',
  },
  {
    'name': 'القواعد',
    'subtitle': 'Grammar',
  },
  {
    'name': 'أساسيات',
    'subtitle': 'Basics',
  },
  {
    'name': 'نص وتعليق',
    'subtitle': 'A text & a comment',
  },
  {
    'name': 'التوفل و الأيتلس',
    'subtitle': 'TOEFL & IELTS',
  },{
    'name': 'مختلطات',
    'subtitle': 'Mixed',
  },{
    'name': 'كلمات وتعابير',
    'subtitle': 'Words & phrases',
  },
];

Size getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}
