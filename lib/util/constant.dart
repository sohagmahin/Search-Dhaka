import 'package:flutter/material.dart';
import '../models/conscious_info_card_model.dart';

class KConstant {
  static Gradient buildGradient({Color firstColor, Color secondColor}) {
    return LinearGradient(
        colors: [firstColor, secondColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.8]);
  }

  static List<ConsciousInfoCard> contentList = [
    ConsciousInfoCard(
        color: Colors.lightGreenAccent,
        title: 'বাসে যেভাবে বসবেন',
        content:
            'পাবলিক বাসে সাধারণত কোনো নির্ধারিত সিট থাকে না। আগে এলে আগে পাবেন ভিত্তিতেই সিট বণ্টন করা হয়। বাসে বসার ক্ষেত্রে খেয়াল রাখুন নারী, শিশু ও বয়স্করা যেন সামনের দিকে বসতে পারেন।'),
    ConsciousInfoCard(
      color: Colors.blueAccent,
      title: 'বাস থেকে ময়লা-আবর্জনা ফেলা',
      content:
          'কফ-সর্দি যেমন বাস থেকে বাইরে ফেলেন অনেকে, তেমনি বিভিন্ন ফলের খোসা, বিশেষ করে কলার খোসা ফেলার প্রবণতাও দেখা যায়। কলার খোসা রাস্তায় থাকলে দুর্ঘটনার আশঙ্কা থাকে। এ ছাড়া চিপসের প্যাকেট, বাদামের খোসা, এমনকি কেউ কেউ বমি পলিথিনে করে জানালা দিয়ে ছুড়ে ফেলেন, যা উচিত নয়। বাসের জানালা দিয়ে বমি করার অভ্যাস থাকে কারও কারও। পথচারীদের এ জন্য নানা সময়ে ঝামেলার মুখোমুখি হতে হয়। এটা নিজের জন্যই ঝুঁকিপূর্ণ।',
    ),
    ConsciousInfoCard(
      color: Colors.tealAccent,
      title: 'বাসের ফ্যানের বাতাস যেভাবে ভাগাভাগি করবেন',
      content:
          'আমরা সাধারণত পাবলিক বাসে চড়ার সময় যাঁরা দাঁড়িয়ে থাকি, তাঁরা কোনো একটি ফ্যানের নিচে সুযোগ পেলেই দাঁড়িয়ে যাই। আমাদের দাঁড়ানোর কারণে চারপাশে যাঁরা বসে থাকেন, তাঁরা আর ফ্যানের বাতাস পান না। এমনভাবে দাঁড়ানো উচিত, যেন ফ্যানের বাতাস চারপাশের যাত্রীদের গায়ে লাগে আবার নিজের গায়েও লাগে।',
    ),
    ConsciousInfoCard(
      color: Colors.deepOrangeAccent,
      title: 'বাসের জানালা আসলে কার?',
      content:
          'অনেক সময় পাবলিক বাসে জানালার অংশ ভাগাভাগি নিয়ে মারামারি ও কথা-কাটাকাটি করতে দেখা যায়। বাসের চড়ার জন্য নিজের ব্যক্তিত্ব প্রকাশ করার চেষ্টা করুন। জানালা যেন দুই পাশের সিটে বসা মানুষের কাজে আসে, সেভাবে জানালার অবস্থান ঠিক করুন। জানালা বন্ধ কিংবা সামনে এগোনোর সময় সামনে-পেছনের বসা মানুষটিকে জানিয়ে নিন। তাঁর হাত কিংবা কনুই জানালায় থাকতে পারে, আপনি হুট করে জানালা বন্ধ বা খুললে অন্যরা আহত হতে পারেন।',
    ),
    ConsciousInfoCard(
      color: Colors.indigoAccent,
      title: 'বাসে বাজার বহনে সতর্ক থাকুন',
      content:
          'বাসে চলাচলের সময় বাজার পরিবহনের ক্ষেত্রে সতর্ক থাকুন। বাজারের ব্যাগ থেকে পানি বা অন্য কোনো তরল বাসে যেন না পড়ে সেদিকে খেয়াল রাখুন। বাজারের ব্যাগের কারণে অন্যদের যেন সমস্যা না হয় সেদিকে খেয়াল রাখুন।',
    ),
    ConsciousInfoCard(
      color: Colors.greenAccent,
      title: 'ব্যাগ সামলে রাখুন',
      content:
          'আমরা কাঁধে ব্যাগ নিয়ে যখন বাসে চলাচল করি, তখন দাঁড়িয়ে পিঠেই ব্যাগ রাখি। এ কারণে অনেকের চলাচলে সমস্যা হয়। চেষ্টা করুন পাবলিক বাসে দাঁড়ানো অবস্থায় ব্যাগ সামনের দিকে ঝুলিয়ে রাখতে।',
    ),
    ConsciousInfoCard(
      color: Colors.yellowAccent,
      title: 'এসি বাসে সতর্ক থাকুন',
      content:
          'এখন অনেক পাবলিক বাস শীতাতপ নিয়ন্ত্রিত। আরামের জন্য অনেকে জুতা-মোজা খুলে সিটে বসে পড়েন। জুতা-মোজায় দুর্গন্ধ থাকলে এসি বাসে সে গন্ধ আটকে থাকে। তাই নিজেদের জুতা-মোজা যাতে অন্যদের অস্বস্তির কারণ না হয়ে দাঁড়ায়, সেদিকে খেয়াল রাখা উচিত।',
    ),
    ConsciousInfoCard(
      color: Colors.pinkAccent,
      title: 'দূরত্ব রাখুন',
      content:
          'পাবলিক বাসে চলাচলের সময় অন্যের সঙ্গে নিজের দূরত্ব রাখার দিকে খেয়াল রাখুন। যতই ভিড় বা চাপাচাপি হোক না কেন, অন্য কারও ওপর চাপ সৃষ্টি করবেন না। বিশেষ করে নারী ও শিশুদের অবস্থানের দিকে খেয়াল রাখুন।',
    ),
    ConsciousInfoCard(
        color: Colors.orangeAccent,
        title: 'উচ্চ স্বরে কথা বলা ও হাসাহাসি',
        content:
            'বাসে উঠেই মুঠোফোনে জোরে জোরে কথা বলার অভ্যাস অনেকের। পাবলিক বাসে চলাচলের সময় কখনোই মুঠোফোনে জোরে চিৎকার করবেন না। প্রয়োজন হলে শান্ত গলায় ধীরস্থির হয়ে কথা বলুন।'),
    ConsciousInfoCard(
        color: Colors.greenAccent,
        title: 'স্টপেজ ছাড়া ওঠানামা নয়',
        content:
            'যাত্রী হিসেবে দায়িত্ব হচ্ছে নির্দিষ্ট স্টপেজ ও বাসস্টেশন থেকে বাসে ওঠা। আমরা যদি নির্দিষ্ট স্থানে ওঠানামা করি, তাহলে বাসচালকেরাও সতর্ক হয়ে যাবেন। নিজের সুবিধার জন্য যেখানে–সেখানে হাত তুলে বাস থামানোর নির্দেশ দিলে পথে অনাকাঙ্ক্ষিত দুর্ঘটনা ও যানজটের আশংকা বেড়ে যায়। চালকের সহকারী কিংবা চালক কথা না শুনলে আইনশৃঙ্খলা রক্ষাকারী বাহিনীর সদস্যদের কাছে সরাসরি অভিযোগ করুন।'),
    ConsciousInfoCard(
        color: Colors.blueGrey,
        title: 'লাইন ধরে বাসে উঠুন',
        content:
            'সব সময় চেষ্টা করুন লাইন ধরে বাসে উঠতে। যেখানে লাইন নেই, সেখানে চেষ্টা করুন ফুটপাতের একপাশে দাঁড়িয়ে লাইন তৈরি করতে। অন্যকে উৎসাহ দিন লাইনে দাঁড়িয়ে বাসে উঠতে। কেউ বাসে লাইন ধরে উঠতে না চাইলে তাঁকে ভদ্রভাবে ইতিবাচক উপায়ে দায়িত্ব ও কর্তব্যবোধ সম্পর্কে জানাতে পারেন।'),
    ConsciousInfoCard(
        color: Colors.purpleAccent,
        title: 'আগে লোক নামতে দিন',
        content:
            'বাসে চড়ার সময় কে নামছেন, সেদিকে খেয়াল না রেখেই উঠে যান অনেকে। খেয়াল রাখুন, কেউ বাস থেকে নামছেন কি না। আগে নামতে দিন, তারপরে লাইন করে গাড়িতে উঠুন। নারী ও শিশুদের আগে বাসে উঠতে দিন। বয়স্কদের দিকে খেয়াল রাখুন।'),
    ConsciousInfoCard(
        color: Colors.limeAccent,
        title: 'সিটে বসার সময় খেয়াল রাখুন',
        content:
            'আমরা অনেক সময় নারী, শিশু ও সুবর্ণ নাগরিকদের জন্য বরাদ্দকৃত সিটে বসে যাই। বাসে উঠার পরে খেয়াল করে সিটে বসুন। চেষ্টা করুন কখনোই অন্যদের জন্য বরাদ্দকৃত সিটে না বসতে।'),
    ConsciousInfoCard(
        color: Colors.cyanAccent,
        title: 'বাস ময়লা করবেন না',
        content:
            'বাসের উঠার সময় অনেকেই হাতে এক প্যাকেট বাদাম বা চিপস নিয়ে ওঠেন। একদিকে বাদাম চিবোনা, অন্যদিকে সিটের নিচে বাদামের খোসা ফেলতে থাকেন। এভাবে চারপাশ নোংরা হয়। কখনোই বাসের ভেতর ময়লা ফেলবেন না। বাদাম কিংবা চিপস খেলে প্যাকেটে সেই ময়লা সংগ্রহ করে পরে তা নির্দিষ্ট স্থানে ফেলুন।'),
    ConsciousInfoCard(
        color: Colors.redAccent,
        title: 'কাশি-কফ বা সর্দি থেকে সাবধান',
        content:
            'আপনার যদি খুব কাশি-কফ কিংবা ঠান্ডা লেগে থাকে, তাহলে পাবলিক বাস পরিহার করুন। আপনার কারণে অন্যদের বায়ুবাহিত রোগে সংক্রমণের ঝুঁকি থাকে।'),
    ConsciousInfoCard(
        color: Colors.deepPurpleAccent,
        title: 'বাসে মালপত্র যেখানে রাখবেন',
        content:
            'মালপত্র পরিবহনের সময় বাসে এমনভাবে রাখুন, যেন অন্যদের সমস্যা না হয়। বিশেষ করে চলার পথে মালপত্র সাবধানে রাখুন।'),
    ConsciousInfoCard(
        color: Colors.amberAccent,
        title: 'বাসে যখন ঘুমাবেন',
        content:
            'ক্লান্তিতে অনেকেই বাসে চোখ বন্ধ করে আরামে ঘুমিয়ে যাই। ঘুমানোর সময় যেন অন্যের ঘাড়ে আমাদের মাথা চলে না যায়, সেদিকে খেয়াল রাখতে হবে। এমনভাবে বসুন, যেন মাথা সামনের সিটে হেলে থাকে কিংবা সিটের সঙ্গে এঁটে থাকে। পারতপক্ষে ছোট যাত্রায় গাড়িতে ঘুমানো ঠিক হবে না।'),
    ConsciousInfoCard(
        color: Colors.brown,
        title: 'চালকের সহকারীর সঙ্গে যেভাবে আচরণ করবেন',
        content:
            'আমরা বাসের সহকারী কিংবা চালকের সহযোগীর সঙ্গে অনেক সময় তুই-তুকারি করি। অশালীন ভাষাতেও অনেক সময় রাগ–অভিমান প্রকাশ করি। টিকিট কিংবা সিট নিয়ে কোনো সমস্যা হলে বাসের ম্যানেজারকে ফোন করে জানাতে পারেন। প্রয়োজনে আইনশৃঙ্খলা রক্ষাকারী বাহিনীর সদস্য বা ট্রাফিক পুলিশদের কাছে সরাসরি অভিযোগ জানিয়ে প্রতিকার নিতে পারেন আপনি।')
  ];

  static List<String> suggestions = [
    'Naya Bazar',
    'Ray Shaheb Bazar',
    'Daynik Bangla Mor',
    'Savar',
    'GPO',
    'Shahbag',
    'Motijheel',
    'Kallyanpur',
    'Paltan',
    'Collage Gate',
    'College Gate',
    'Nandan Park',
    'Aminbazar',
    'Bangla Motor',
    'Shyamoli',
    'Hemayetpur',
    'High Court',
    'Jatra Bari',
    'Jatrabari',
    'Nobinagar',
    'Gabtoli',
    'Sign Board',
    'Kanchpur',
    'Chittagong Road',
    'Science Lab',
    'Jonopath Mor',
    'Press Club',
    'Kamalapur',
    'Farmgate',
    'Shishu Mela',
    'Dhanmondi 27',
    'Gulistan',
    'Shonir Akhra',
    'Kawran Bazar',
    'Dhanmondi 32',
    'Kalabagan',
    'Sayedabad',
    'Baipayl',
    'Shabag',
    'Khamarbari',
    'Technical',
    'Madanpur',
    'Katabon',
    'Golap Shah Mazar',
    'Shymoli',
    'Asad Gate',
    'Zirani Bazar',
  ];
}
