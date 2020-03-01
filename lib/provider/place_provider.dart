import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_bus_dhaka_route/models/place.dart';

class PlaceProvider extends ChangeNotifier {
  List<Place> _placeList = [
    Place(
      name: 'Lalbagh Fort',
      location: 'Lalbagh Rd, Dhaka 1211',
      description: lalbaghFort_description,
      featureImageUrl:
          'https://cdn.pixabay.com/photo/2017/08/30/22/33/fort-aurangabad-2698844_960_720.jpg',
      imageList: lalbaghFort_imageList,
      visitingTime: LalbaghFort_Vtime,
      startColor: Colors.deepOrange,
      endColor: Colors.yellowAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.deepOrange,
    ),
    Place(
      name: 'Ahsan Manzil',
      location: '18 kumartuli, Islampur Rd, Dhaka 1100',
      description: ahsanManzil_description,
      featureImageUrl:
          'https://c7.alamy.com/comp/HTEYEP/dhaka-bangladesh-february-2017-the-pink-palace-of-ashan-manjil-seen-HTEYEP.jpg',
      imageList: ahsanManzil_imageList,
      visitingTime: ahsanManzil_Vtime,
      startColor: Colors.green,
      endColor: Colors.redAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.lightBlue,
    ),
    Place(
      name: 'Shaheed Minar',
      location: 'Shahīd Minār, Secretariate Road, Dhaka',
      description: sohidMinar_description,
      featureImageUrl:
          'https://www.ontaheen.com/wp-content/uploads/2018/02/Shahid-Minar-picture.jpg',
      imageList: sohidMinar_imageList,
      visitingTime: shaheedMinar_Vtime,
      startColor: Colors.blueAccent,
      endColor: Colors.purpleAccent,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.lightGreenAccent,
    ),
    Place(
      name: 'Sonargaon',
      location: 'Sonargaon Museum, Sonargaon',
      description: sonargaonMesuem_description,
      featureImageUrl:
          'https://mytriphack.com/wp-content/uploads/2018/04/Sonargaon-museum-complex.jpg',
      imageList: sonargaon_imageList,
      visitingTime: sonargaon_Vtime,
      startColor: Colors.yellow,
      endColor: Colors.deepOrange,
      iconColor: Colors.deepOrange,
      shadowColor: Colors.lightGreenAccent,
    )
  ];

  List<Place> get places => UnmodifiableListView(_placeList);
}

// Lalbagh Fort
const List<String> lalbaghFort_imageList = [
  'https://nijhoom.b-cdn.net/wp-content/uploads/2018/08/lalbagh-fort-tomb-pari-bibi-600-o.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Lalbagh_Fort_Mosque-A-History-Teller.jpg/220px-Lalbagh_Fort_Mosque-A-History-Teller.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/a/a1/Lalbagh_Kella_%28Lalbagh_Fort%29_Dhaka_Bangladesh_2011_17.JPG',
  'https://nijhoom.b-cdn.net/wp-content/uploads/2018/08/lalbagh-fort-mosque-600-o.jpg'
];

const List<String> ahsanManzil_imageList = [
  'https://c7.alamy.com/comp/JMP76T/the-ahsan-manzil-pink-palace-above-the-buriganga-river-dhaka-bangladesh-JMP76T.jpg',
  'https://c7.alamy.com/comp/R99B6J/ahsan-manzil-R99B6J.jpg',
  'https://c7.alamy.com/comp/MFF3XW/ahsan-manzil-on-victory-day-of-bangladesh-MFF3XW.jpg',
  'https://c7.alamy.com/comp/HTEYEP/dhaka-bangladesh-february-2017-the-pink-palace-of-ashan-manjil-seen-HTEYEP.jpg'
];

const List<String> sohidMinar_imageList = [
  'https://c7.alamy.com/comp/J7X9N8/central-shaheed-minar-language-martyrs-monument-in-dhaka-city-built-J7X9N8.jpg',
  'https://c7.alamy.com/comp/DYCG23/fleur-de-lys-at-the-international-mother-language-day-commemorations-DYCG23.jpg',
  'https://c7.alamy.com/comp/2B0W1JX/dhaka-bangladesh-february-21-2020-the-altar-of-the-central-shaheed-minar-in-dhaka-is-decorated-with-flowers-as-the-nation-pays-tribute-of-respect-2B0W1JX.jpg',
  'https://c7.alamy.com/comp/KDMFCR/the-events-and-activities-in-the-street-and-surrounding-the-central-KDMFCR.jpg'
];
const List<String> sonargaon_imageList = [
  'https://c7.alamy.com/comp/T3B77H/ancient-buildings-of-panam-city-sonargaon-narayanganj-dhaka-division-bangladesh-T3B77H.jpg',
  'https://c7.alamy.com/comp/B0PW65/interior-of-an-old-house-in-sonargaon-bangladesh-B0PW65.jpg',
  'https://c7.alamy.com/comp/JD929B/hotel-sonargaon-is-a-renowned-5-stars-internationally-chain-hotel-JD929B.jpg',
  'https://c7.alamy.com/comp/EWEF54/panam-city-as-the-lost-town-of-bengal-one-the-most-popular-heritage-EWEF54.jpg'
];

const String lalbaghFort_description = "The Mughal prince Muhammad Azam, "
    "third son of Aurangzeb started the work of the fort in 1678 during his vice-royalty in Bengal. He stayed in Bengal for 15 months. "
    "The fort remained incomplete when he was called away by his father Aurangzeb."
    "Shaista Khan was the new subahdar of Dhaka in that time, and he did not complete the fort."
    "In 1684, the daughter of Shaista Khan named Iran Dukht Pari Bibi died there. After her death,"
    "he started to think the fort as unlucky, and left the structure incomplete."
    "[2] Among the three major parts of Lalbagh Fort, one is the tomb of Bibi Pari.After Shaista Khan left Dhaka, it lost its popularity."
    "The main cause was that the capital was moved from Dhaka to Murshidabad. After the end of the royal Mughal period, the fort became abandoned."
    "In 1844, the area acquired its name as Lalbagh replacing Aurangabad, and the fort became Lalbagh Fort.[3]\nCredit : Wikipedia";

const String ahsanManzil_description =
    "In Mughal era, there was a garden house of Sheikh Enayet Ullah, the landlord of Jamalpur Porgona (district),"
    " in this place. Sheikh Enayet Ullah was a very charming person. He acquired a very big area in Kumortuli (Kumartuli) and included it in his garden house."
    "Here he built a beautiful palace and named it \"Rongmohol\" (Rangmahal). He used to enjoy here keeping beautiful girls collected from the country and abroad,"
    " dressing them with gorgeous dresses and expensive ornaments. There is a saying that, the foujdar of Dhaka (representative of mughal emperor) was attracted to one of the beautiful girls. "
    "He invited Sheikh Enayet Ullah to a party one night and killed him in a conspiracy when he was returning home. That girl also committed suicide in anger and sorrow."
    "There was a grave of Sheikh Enayet Ullah in the north-east corner of the palace yard which was ruined in the beginning of the 20th century"
    "Probably in the period of Nawab Alibardi Khan around 1740 century, Sheikh Moti Ullah, the son of Sheikh Enayet Ullah, sold the property to the French traders. "
    "There was a French trading house beside this property. The trading house became wealthier after purchasing this property. In that time, French traders could do business here without paying any taxes by a decree from the emperor Aurangzeb."
    " In that time, the French became very wealthy by doing business here in competition with the English and other European companies. "
    "They made a big palace and dug a pond for sweet water in the newly purchased property. The pond still exists in the compound of Ahsan Manzil which was called \"Les Jalla\" in that time. In the English-French war,"
    " French got defeated and all their properties were captured by the English. On 22 June 1757, the French left the trading house with a fleet of 35 boats from the river station of Buriganga in front of Kumartuli."
    "\nCredit : Wikipedia";

const String sohidMinar_description =
    "The first Shaheed Minar was built immediately after the events of 21–22 February 1952. According to Dr. Sayeed Haider the main planner and the designer of the first Shaheed Minar, "
    "the decision to build it was first made by the students of Dhaka Medical College. Shaheed Minar is situated near Dhaka Medical College Hospital and in the Dhaka University area. It is adjacent to the Mathematics department of Dhaka University."
    " It is only 0.5 kilometres (0.3 mi) away from Shahbag and 0.25 km (0.16 mi) distant from Chankharpul. Shaheed Minar is an outstanding monument of Bangladesh. It was built to tribute the martyrs who given up their life for language. "
    "The main incident had been occurring inside of Dhaka medical college hospital. So a decision was taken to build a memorial adjacent to DMCH. The planning started at midnight on 22 February, and the work started the next day."
    " This Minar was sponsored by Pearu Sardar, one of the old Dhaka panchayet sardars, when some of the students asked his help at midnight of 22 February, to contribute the raw materials needed to build the monument."
    " Although curfew was in place, students started building the Minar in the afternoon of 23 February. They worked through the night and finished it at dawn. A hand written paper was attached to the Minar with \"Shaheed Smritistombho\" written on it."
    " The original Minar was on a base measuring 10.5 feet (3.2 m).[3] The Minar was inaugurated by the father of Sofiur Rahman, Molvi. Mahabubur Rahman, who killed during the massacre. It was demolished on 26 February by the police and Pakistani Army."
    "[3] Smaller versions of the memorial were built in other places.";

const String sonargaonMesuem_description =
    "Sonargaon is located near the old course of the Brahmaputra River. To the north of Sonargaon are the Wari-Bateshwar ruins, which archaeologists have considered to be the emporium (trading colony) of Sounagoura mentioned by Greco-Roman writers."
    " The name Sonargaon originated with the ancient term of Suvarnagrama.[3] Sonargaon was ruled by Vanga and Samatata Kingdoms during antiquity. The Sena dynasty used the area as a base."
    " The Deva dynasty King Dasharathadeva shifted his capital from Bikrampur to Suvarnagrama in the middle of the 13th century.[3] Sonargaon is also one of the possible locations for the fabled land of Suvarnabhumi that is referred in cultures across the Indian subcontinent and Southeast Asia."
    "\nDelhi Sultanate\n"
    "Muslim settlers first arrived in Sonargaon circa 1281.[4] In the early 14th century, Sonargaon became part of the Delhi Sultanate when Shamsuddin Firoz Shah, Delhi's governor in Gauda, conquered central Bengal."
    " Firoz Shah built a mint in Sonargaon from where a large number of coins were issued.[5] Delhi's governors in Bengal often tried to assert their independence. Rebel governors often chose Sonargaon as the capital of Bengal."
    " When Firoz Shah died in 1322, his son, Ghiyasuddin Bahadur Shah, replaced him as ruler. In 1324, the Delhi Sultan Ghiyasuddin Tughlaq declared war against him and succeeded in capturing Bahadur Shah in battle. During the same year,"
    " Sultan Muhammad bin Tughlaq released him and appointed him as the governor of Sonargaon. Sonargaon began to develop as a seat of Muslim learning and Persian literature."
    " Many Persian and Persianate Turkic immigrants settled in Sonargaon. Maulana Sharfuddin Abu Tawwama of Bukhara came to Sonargaon circa 1270 and established a Sufi khanqah and madrasa, which imparted both religious and secular education. "
    "The institutions became reputed throughout the Indian subcontinent. Sharfuddin Yahya Maneri, a celebrated Sufi scholar of Bihar, was an alumnus of Sonargaon. Tawwama's book on mysticism, Maqamat, enjoyed a strong reputation. During the administration of Roknuddin Kaikaus (1291-1301 AD), "
    "son of Nasiruddin Bughra Khan, Nam-i-Haq, a book on fiqh (jurisprudence), was written in elegant Persian poetry, in Sonargaon.[7] It is in 10 volumes and contains 180 poems. Though the authorship of this book has been ascribed to Shaikh Sharafu’d-Din Abu Tawwama, "
    "the author’s introduction testifies that the book was actually written by one of the disciples of Shaikh Sharafu’d-Din on the basis of his teachings.[8][9] The Fatwa-i-Tatarkhani was compiled at the initiative Tatar Khan, the Tughluq governor of Sonargaon.";

const Map<String, dynamic> LalbaghFort_Vtime = {
  'summerH': 'April to September (Summer)',
  'summerB':
      'Tuesday to Saturday: 10:00 am - 6:00 pm\nMonday: 2:00 pm - 6:00 pm',
  'winterH': 'October to March (Winter)',
  'winterB':
      'Tuesday to Saturday: 9:00 am - 5:00 pm\nMonday: 1:30 pm - 5:00 pm',
  'entryFeeH': 'Entry Fees',
  'entryFeeB':
      'Bangladeshi Citizens: ৳ 20.00\nCitizens of SAARC Countries: ৳ 100.00\n'
          'Other Foreign Citizens: ৳ 200.00\n'
          'Students(till secondary school): ৳ 5.00',
  'closingTime': 'Sunday: Closed'
};

const Map<String, dynamic> ahsanManzil_Vtime = {
  'summerH': 'April to September (Summer)',
  'summerB':
      'Saturday to Wednesday: 10:30 am - 5:30 pm\nFriday: 3:00 pm - 7:30 pm',
  'winterH': 'October to March (Winter)',
  'winterB':
      'Saturday to Wednesday: 9:30 am - 4:30 pm\nFriday: 3:00 pm - 7:30 pm',
  'entryFeeH': 'Entry Fees',
  'entryFeeB':
      'Bangladeshi Citizens: ৳ 20.00TK\nCitizens of SAARC Countries: ৳ 300.00TK\n'
          'Other Foreign Citizens: ৳ 500.00TK\n',
  'closingTime': 'Closed: Thursday | Govt. Holiday'
};

const Map<String, dynamic> sonargaon_Vtime = {
  'summerH': 'April to September (Summer)',
  'summerB':
      'Tueday to Saturday: 10:00 am - 6:00 pm\nFriday: 12:30 pm - 2:30 pm'
          '\nMuseum Galleries: 10:30 AM - 5:30 PM',
  'winterH': 'October to March (Winter)',
  'winterB':
      'Saturday to Wednesday: 9:30 am - 4:30 pm\nFriday: 3:00 pm - 7:30 pm',
  'entryFeeH': 'Entry Fees',
  'entryFeeB': 'No Need',
  'closingTime': 'Closed: Wednesday & Thursday | Govt. Holiday'
};

const Map<String, dynamic> shaheedMinar_Vtime = {
  'summerH': 'April to September (Summer)',
  'summerB':
      'Open 24 hours',
  'winterH': 'October to March (Winter)',
  'winterB':
      'Open 24 hours',
  'entryFeeH': 'Entry Fees',
  'entryFeeB': 'No Need',
  'closingTime': 'Always Open'
};
