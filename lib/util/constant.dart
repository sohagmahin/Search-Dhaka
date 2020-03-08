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
    'Khamarbari',
    'Technical',
    'Madanpur',
    'Katabon',
    'Golap Shah Mazar',
    'Shymoli',
    'Asad Gate',
    'Zirani Bazar',
  ];

  static List<Map<String, dynamic>> emergencyMapList = [
    {
      "division": "999 - Emergency Service",
      "infoList": [
        {
          'name': "Emergency Service (Any Type)",
          'location': "All over the country",
          'phone': '999',
          'tel': '999',
          'fax': 'N\\A',
          'email': 'info@999.gov.bd',
        },
      ]
    },
    {
      "division": "RAB - Rapid Action Battalions",
      "infoList": [
        {
          'name': 'RAB HQ',
          'location': "All over the country",
          'phone': '+880-2-8961105',
          'tel': 'N\\A',
          'fax': '+880-28963418',
          'email': 'N\\A',
        },
        {
          'name': 'RAB-1',
          'location':
              "Gulshan, Badda, Cantonment, Airport & Uttara Thana areas",
          'phone': 'N\\A',
          'tel': '8962221',
          'fax': '+880-28963418',
          'email': 'central_rab1@rab.gov.bd',
        },
        {
          'name': 'RAB-2',
          'location':
              "Ramna, Dhanmondi, Lalbagh, Kotawali, Hazaribagh, Kamrangichor, Thana areas",
          'phone(Control Room)': '01777710299',
          'tel(Control Room)': '8142196',
          'fax': '+880-2-8363763',
          'email': 'central_rab2@rab.gov.bd',
        },
        {
          'name': 'RAB-3',
          'location':
              "Sutrapur, Motijheel, Demra, Khilgaon, Shempur & Sabujbagh",
          'phone': 'N\\A',
          'tel': '+880-2-7174687',
          'fax': '+88-02-7174686',
          'email': 'central_rab3@rab.gov.bd',
        },
        {
          'name': 'RAB-4',
          'location':
              "Tejgaon, Mohammadpur, Kafrul, Pallabi, Mirpur, Savar, Dhamrai, Keranigonj, Nawabgonj, Dohar Thana areas",
          'phone': 'N\\A',
          'tel': '+880-2-8059254',
          'fax': ' +880-2-8059253 ',
          'email': 'central_rab4@rab.gov.bd',
        },
      ]
    },
    //new division [Pharmacy]
    {
      "division": "24/7 Pharmacy",
      "infoList": [
        {
          "name": "24, Hour Pharmacy",
          "location": "House-14/E, Road-6, Dhanmondi, Dhaka",
          "phone": "",
          "tel": "9673512, 9673507",
          "fax": "N\\A",
          "email": "N\\A",
        },
        {
          "name": "Lazz Pharma",
          "location": "64/3, Lake Caircus Kalabagan, Dhaka",
          "phone": "N\\A",
          "tel": "9110864, 9117839",
          "fax": "N\\A",
          "email": "N\\A",
        },
        {
          "name": "Shifa Pharmacy",
          "location": "Alam Market, Gulshan-2, Dhaka",
          "phone": "N\\A",
          "tel": "9880820",
          "fax": "N\\A",
          "email": "N\\A",
        },
      ]
    },
    //new division [Blood Banks]
    {
      "division": "Blood Banks",
      "infoList": [
        {
          "name": "Bangladesh Red Crescent Blood Bank",
          "location": "7/5 Aurongzeb Road, Mohammadpur, Dhaka",
          "phone": "N\\A",
          "tel": "9116563",
          "fax": "N\\A",
          "email": "N\\A",
        },
        {
          "name": "Modern Clinic & Blood Center",
          "location": "House 5, Road11, Gulshan-1, Dhaka",
          "phone": "N\\A",
          "tel": "9883948",
          "fax": "N\\A",
          "email": "N\\A",
        },
        {
          "name": "Sandhani",
          "location": "Dhaka Medical College, Dhaka.",
          "phone": "N\\A",
          "tel": "9668690",
          "fax": "N\\A",
          "email": "N\\A",
        },
        {
          "name": "Dhaka Medical College Hospital",
          "location": "Shahbag, Dhaka.",
          "phone": "N\\A",
          "tel": "8626812-26",
          "fax": "N\\A",
          "email": "N\\A",
        },
      ]
    },
    //new division [Embassy & High-commissions ]
    {
      "division": "Embassy & High-commissions",
      "infoList": [
        {
          "name": "Embassy of the Islamic State of Afghanistan",
          "location": "House No CWN (C) 2A, Road No. 24,Gulshan, Dhaka-1212",
          "phone": "N\\A",
          "tel": "9895994, 9895819",
          "fax": "880-2-9884767",
          "email": "N\\A",
        },
        {
          "name": "Australian High Commission",
          "location": "184 Gulshan Avenue, Gulshan, Dhaka.1212",
          "phone": "N\\A",
          "tel": "8813101-5",
          "fax": "880-2-8811125",
          "email": "dima-dhaka@dfat.gov.au",
        },
        {
          "name": "Royal Bhutanese Embassy",
          "location": "House # 12, Road No. 107, Gulshan 2, Dhaka-1212",
          "phone": "N\\A",
          "tel": "8826863,\n 8827160,\n8821160",
          "fax": "880-2-8823939",
          "email": "N\\A",
        },
        {
          "name": "High Commission of Brunei Darussalam",
          "location": "House 26, Road 6, Baridhara, Dhaka-1212",
          "phone": "N\\A",
          "tel": "8819552,\n 8813304",
          "fax": "880-2-8819551",
          "email": "N\\A",
        },
        {
          "name": "The Canadian High Commission",
          "location": "House No. 16/A, Road No. 48, Gulshan, Dhaka - 1212.",
          "phone": "N\\A",
          "tel": "9887091-7",
          "fax": "88-02-8823043",
          "email": "N\\A",
        },
        {
          "name": "The Embassy of the People's Republic of China",
          "location": "Plot No. 2 & 4, Road No. 3, Block-1, Baridhara, Dhaka",
          "phone": "N\\A",
          "tel": "8824862, 8824164",
          "fax": "880-2-8823004, 9880188",
          "email": "chinaemb@bdmail.net",
        },
        {
          "name": "Royal Danish Embassy",
          "location": "House # 1, Road No. 51, Gulshan, Dhaka - 1212.",
          "phone": "N\\A",
          "tel": "8822499, 8822599, 8822699, 8821799",
          "fax": "880-2-8823638",
          "email": "info@danishembassybd.com",
        },
        {
          "name": "Embassy of the Arab Republic of Egypt",
          "location": "House No. NE(N) 9, Road No. 9, Gulshan, Dhaka 1212",
          "phone": "N\\A",
          "tel": " 8858737-9",
          "fax": "880-02-8858747",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Republic of France",
          "location": "Road No. 108, House No. 18, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8813812 - 4, 9883851",
          "fax": "880-2-8823612",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Federal Republic of Germany",
          "location": "178, Gulshan Avenue, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8853521-24",
          "fax": "880-2-8853260",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Holy See (Vatican)",
          "location": "United Nations Road No. 2, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8822018, 8822143",
          "fax": "880-2-8823574",
          "email": "N\\A",
        },
        {
          "name": "High Commission of India",
          "location": "House # 2, Road # 2, Gulshan-1, Dhaka 1212",
          "phone": "N\\A",
          "tel": "9888789, 9888791, 8820243 - 7",
          "fax": "880-2-9893050,8817487",
          "email": "N\\A",
        },
        {
          "name": "The Embassy of the Republic of Indonesia",
          "location": "Plot # 14, Road # 53, Gulshan 2, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9881640-1, 8812260",
          "fax": "880-2-8825391",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Islamic Republic of Iran",
          "location": "House # 7, Road # 6, UN Road,Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8825896, 8825948, 9896754",
          "fax": "880-2-8828780",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Republic of Italy",
          "location": "Plot # 2 & 3, Road # 74/79,Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8822781-3 (PABX), 9882802, 8826359",
          "fax": "880-2-8822578",
          "email": "ambdhaka@citechco.net",
        },
        {
          "name": "Embassy of Japan",
          "location": "House # 5 & 7, Dutabash Road,Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8810087",
          "fax": "880-2-8824469",
          "email": "jpnemb@citechco.net",
        },
        {
          "name": "Embassy of the Democratic People's Republic of Korea",
          "location": "House # 5/A, Road # 54, Gulshan 2, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8811893-9",
          "fax": "880-2-8810813",
          "email": "N\\A",
        },
        {
          "name": "The Embassy of the Republic of Korea",
          "location": "4, Madani Avenue, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8812088-90, 8812041",
          "fax": "880-2-8813871",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the State of Kuwait",
          "location":
              "House # SE(B) - 5, 25 South Link Road, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": " 8822700 - 3",
          "fax": "880-2-8823753",
          "email": "N\\A",
        },
        {
          "name":
              "The People's Bureau of the Great Socialist, People's Libyan Arab Jamahiriya",
          "location": "House # 17, Road # 7, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9895808-9",
          "fax": "880-2-8823417",
          "email": "N\\A",
        },
        {
          "name": "High Commission of Malaysia",
          "location": "House # 19, Road # 6,Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": " 8827759-60, 9891651, 9885543",
          "fax": "880-2-8827761, 8823115",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Kingdom of Morocco",
          "location": "House # 44, United Nations Road,Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8823176, 9880329",
          "fax": "880-2-8810018",
          "email": "N\\A",
        },
        {
          "name": "The Embassy of the Union of Myanmar",
          "location": "House # NE(L)-3, Road 84,Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9896298, 9896373",
          "fax": "880-2-8823740",
          "email": "N\\A",
        },
        {
          "name": "Royal Nepalese Embassy",
          "location": "United Nations Road - 2, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9892568, 9892490",
          "fax": "880-2-8826401",
          "email": "rnedhaka@bdmail.ne",
        },
        {
          "name": "Royal Netherlands Embassy",
          "location": "House # 49, Road # 90, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8822715-8",
          "fax": "880-2-8823326",
          "email": "nlgovdha@citechco.net",
        },
        {
          "name": "Royal Norwegian Embassy",
          "location": "Road # 111, House # 9, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8823880, 8823065, 8816273",
          "fax": "880-2-8823661",
          "email": "N\\A",
        },
        {
          "name": "High Commission for the Islamic Republic of Pakistan",
          "location": "House # NE(C) 2, Road # 71, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8825388-9",
          "fax": "880-2-8850673",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the State of Palestine",
          "location": "House # 15/A, Road # 35, Gulshan , Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9893895-6",
          "fax": "880-2-8823517",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Republic of Philippines",
          "location": "House # 6, Road # 101, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9881578, 9881590-3",
          "fax": "8880-2-8823686",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Republic of Poland",
          "location": "House # 12 A, Road # 86, Banani, Dhaka - 1213",
          "phone": "N\\A",
          "tel": " 8825895",
          "fax": "880-2-8827568",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the State of Qatar",
          "location": "House # 1, Road # 108, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": " 8819930, 9887429",
          "fax": "880-2-9896071",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Russian Federation",
          "location": "House # NE(J) 9, Road # 79, Dhaka -1212",
          "phone": "N\\A",
          "tel": "8828147, 9881680,9896286",
          "fax": "880-2-8823735",
          "email": "royak5@hotmail.com",
        },
        {
          "name": "The Royal Embassy of Saudi Arabia",
          "location": "House # 05 (NE) L, Road # 83,Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": " 8829125, 8829128 - 9, 8826989",
          "fax": "880-2-8823616",
          "email": "N\\A",
        },
        {
          "name": "Consulate of the Republic of Singapore",
          "location": "House # 15, Road # 68/A, Gulshan - 2, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9880404, 9880337",
          "fax": "880-2-9883666",
          "email": "N\\A",
        },
        {
          "name":
              "High Commission of the Democratic Socialist Republic of Sri Lanka.",
          "location": "House # 4A, Road # 113, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "9896353, 8810779",
          "fax": "880-2-8823971 ",
          "email": "N\\A",
        },
        {
          "name": "Embassy of Sweden",
          "location": "House # 1, Road # 52, Gulshan, Dhaka - 1212.",
          "phone": "N\\A",
          "tel": " 8824761 - 4",
          "fax": "880-2-8823948",
          "email": "N\\A",
        },
        {
          "name": "Embassy of Switzerland",
          "location": "House # 31 - B, Road # 18,Banani, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8812874-6",
          "fax": "880-2-8823872",
          "email": "vertretung@dha.rep.admin.ch",
        },
        {
          "name": "Royal Thai Embassy",
          "location": "House # 14, Road # 11, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8812795-6, 8813260-1",
          "fax": "880-2-8854280",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the Republic of Turkey",
          "location": "House # 14A, Road # 62, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8822198, 8823536, 8813297",
          "fax": "880-2-8823873",
          "email": "dhakkabe@citechco.net",
        },
        {
          "name": "Embassy of the United Arab Emirates",
          "location": "House # 17, Road # 10, Block K, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": " 9882244, 9882255, 9882266, 9882277",
          "fax": "880-2-8823225",
          "email": "info@uaeembassydhaka.com",
        },
        {
          "name": "British High Commission",
          "location": "United Nations Road,Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8822705-9",
          "fax": "880-2- 8823437, 8823474",
          "email": "N\\A",
        },
        {
          "name": "Embassy of the United States of America",
          "location": "Madani Avenue, Baridhara, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8855500-22",
          "fax": "880-2-8823744, 8823648",
          "email": "dhaka@pd.state.gov",
        },
        {
          "name": "Embassy of the Socialist Republic of Vietnam",
          "location": "House # 8, Road # 51, Gulshan - 2, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8854051-2",
          "fax": "880-2-8854051",
          "email": "vietnam@citech-bd.com",
        },
        {
          "name": "Commission of the European Communities",
          "location": "House # 7, Road # 84, Gulshan, Dhaka - 1212",
          "phone": "N\\A",
          "tel": "8824730-32, 9862826-32",
          "fax": "880-2-8823118",
          "email": "N\\A",
        },
      ]
    }
  ];
}
