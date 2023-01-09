import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  List<WorldTime> locations = [
    WorldTime(location: "Kabul, Afghanistan", flag: "AF", url: "Asia/Kabul"),
    WorldTime(location: "Mariehamn, Aland Islands", flag: "AX", url: "Europe/Mariehamn"),
    WorldTime(location: "Tirane, Albania", flag: "AL", url: "Europe/Tirane"),
    WorldTime(location: "Algiers, Algeria", flag: "DZ", url: "Africa/Algiers"),
    WorldTime(location: "Pago Pago, American Samoa", flag: "AS", url: "Pacific/Pago_Pago"),
    WorldTime(location: "Andorra, Andorra", flag: "AD", url: "Europe/Andorra"),
    WorldTime(location: "Buenos Aires, Argentina", flag: "AR", url: "America/Argentina/Buenos_Aires"),
    WorldTime(location: "Catamarca, Argentina", flag: "AR", url: "America/Argentina/Catamarca"),
    WorldTime(location: "Cordoba, Argentina", flag: "AR", url: "America/Argentina/Cordoba"),
    WorldTime(location: "Jujuy, Argentina", flag: "AR", url: "America/Argentina/Jujuy"),
    WorldTime(location: "La Rioja, Argentina", flag: "AR", url: "America/Argentina/La_Rioja"),
    WorldTime(location: "Mendoza, Argentina", flag: "AR", url: "America/Argentina/Mendoza"),
    WorldTime(location: "Rio Gallegos, Argentina", flag: "AR", url: "America/Argentina/Rio_Gallegos"),
    WorldTime(location: "Salta, Argentina", flag: "AR", url: "America/Argentina/Salta"),
    WorldTime(location: "San Juan, Argentina", flag: "AR", url: "America/Argentina/San_Juan"),
    WorldTime(location: "San Luis, Argentina", flag: "AR", url: "America/Argentina/San_Luis"),
    WorldTime(location: "Tucuman, Argentina", flag: "AR", url: "America/Argentina/Tucuman"),
    WorldTime(location: "Ushuaia, Argentina", flag: "AR", url: "America/Argentina/Ushuaia"),
    WorldTime(location: "Rothera, Argentina", flag: "AR", url: "Antarctica/Rothera"),
    WorldTime(location: "Yerevan, Armenia", flag: "AM", url: "Asia/Yerevan"),
    WorldTime(location: "Casey, Australia", flag: "AU", url: "Antarctica/Casey"),
    WorldTime(location: "Davis, Australia", flag: "AU", url: "Antarctica/Davis"),
    WorldTime(location: "Macquarie, Australia", flag: "AU", url: "Antarctica/Macquarie"),
    WorldTime(location: "Mawson, Australia", flag: "AU", url: "Antarctica/Mawson"),
    WorldTime(location: "Adelaide, Australia", flag: "AU", url: "Australia/Adelaide"),
    WorldTime(location: "Brisbane, Australia", flag: "AU", url: "Australia/Brisbane"),
    WorldTime(location: "Broken Hill, Australia", flag: "AU", url: "Australia/Broken_Hill"),
    WorldTime(location: "Currie, Australia", flag: "AU", url: "Australia/Currie"),
    WorldTime(location: "Darwin, Australia", flag: "AU", url: "Australia/Darwin"),
    WorldTime(location: "Eucla, Australia", flag: "AU", url: "Australia/Eucla"),
    WorldTime(location: "Hobart, Australia", flag: "AU", url: "Australia/Hobart"),
    WorldTime(location: "Lindeman, Australia", flag: "AU", url: "Australia/Lindeman"),
    WorldTime(location: "Lord Howe, Australia", flag: "AU", url: "Australia/Lord_Howe"),
    WorldTime(location: "Melbourne, Australia", flag: "AU", url: "Australia/Melbourne"),
    WorldTime(location: "Perth, Australia", flag: "AU", url: "Australia/Perth"),
    WorldTime(location: "Sydney, Australia", flag: "AU", url: "Australia/Sydney"),
    WorldTime(location: "Vienna, Austria", flag: "AT", url: "Europe/Vienna"),
    WorldTime(location: "Baku, Azerbaijan", flag: "AZ", url: "Asia/Baku"),
    WorldTime(location: "Nassau, Bahamas", flag: "BS", url: "America/Nassau"),
    WorldTime(location: "Guernsey, Bailiwick of Guernsey", flag: "GG", url: "Europe/Guernsey"),
    WorldTime(location: "Jersey, Bailiwick of Jersey", flag: "JE", url: "Europe/Jersey"),
    WorldTime(location: "Dhaka, Bangladesh", flag: "BD", url: "Asia/Dhaka"),
    WorldTime(location: "Barbados, Barbados", flag: "BB", url: "America/Barbados"),
    WorldTime(location: "Minsk, Belarus", flag: "BY", url: "Europe/Minsk"),
    WorldTime(location: "Brussels, Belgium", flag: "BE", url: "Europe/Brussels"),
    WorldTime(location: "Belize, Belize", flag: "BZ", url: "America/Belize"),
    WorldTime(location: "Bermuda, Bermuda", flag: "BM", url: "Atlantic/Bermuda"),
    WorldTime(location: "Thimphu, Bhutan", flag: "BT", url: "Asia/Thimphu"),
    WorldTime(location: "La Paz, Bolivia", flag: "BO", url: "America/La_Paz"),
    WorldTime(location: "Sarajevo, Bosnia and Herzegovina", flag: "BA", url: "Europe/Sarajevo"),
    WorldTime(location: "Araguaina, Brazil", flag: "BR", url: "America/Araguaina"),
    WorldTime(location: "Bahia, Brazil", flag: "BR", url: "America/Bahia"),
    WorldTime(location: "Belem, Brazil", flag: "BR", url: "America/Belem"),
    WorldTime(location: "Boa Vista, Brazil", flag: "BR", url: "America/Boa_Vista"),
    WorldTime(location: "Campo Grande, Brazil", flag: "BR", url: "America/Campo_Grande"),
    WorldTime(location: "Cuiaba, Brazil", flag: "BR", url: "America/Cuiaba"),
    WorldTime(location: "Eirunepe, Brazil", flag: "BR", url: "America/Eirunepe"),
    WorldTime(location: "Fortaleza, Brazil", flag: "BR", url: "America/Fortaleza"),
    WorldTime(location: "Maceio, Brazil", flag: "BR", url: "America/Maceio"),
    WorldTime(location: "Manaus, Brazil", flag: "BR", url: "America/Manaus"),
    WorldTime(location: "Noronha, Brazil", flag: "BR", url: "America/Noronha"),
    WorldTime(location: "Porto Velho, Brazil", flag: "BR", url: "America/Porto_Velho"),
    WorldTime(location: "Recife, Brazil", flag: "BR", url: "America/Recife"),
    WorldTime(location: "Rio Branco, Brazil", flag: "BR", url: "America/Rio_Branco"),
    WorldTime(location: "Santarem, Brazil", flag: "BR", url: "America/Santarem"),
    WorldTime(location: "Sao Paulo, Brazil", flag: "BR", url: "America/Sao_Paulo"),
    WorldTime(location: "Chagos, British Indian Ocean Territory", flag: "IO", url: "Indian/Chagos"),
    WorldTime(location: "South Georgia, British Overseas Territory", flag: "GS", url: "Atlantic/South_Georgia"),
    WorldTime(location: "Brunei, Brunei", flag: "BN", url: "Asia/Brunei"),
    WorldTime(location: "Sofia, Bulgaria", flag: "BG", url: "Europe/Sofia"),
    WorldTime(location: "Phnom Penh, Cambodia", flag: "KH", url: "Asia/Phnom_Penh"),
    WorldTime(location: "Atikokan, Canada", flag: "CA", url: "America/Atikokan"),
    WorldTime(location: "Blanc-Sablon, Canada", flag: "CA", url: "America/Blanc-Sablon"),
    WorldTime(location: "Cambridge Bay, Canada", flag: "CA", url: "America/Cambridge_Bay"),
    WorldTime(location: "Creston, Canada", flag: "CA", url: "America/Creston"),
    WorldTime(location: "Dawson, Canada", flag: "CA", url: "America/Dawson"),
    WorldTime(location: "Dawson Creek, Canada", flag: "CA", url: "America/Dawson_Creek"),
    WorldTime(location: "Edmonton, Canada", flag: "CA", url: "America/Edmonton"),
    WorldTime(location: "Fort Nelson, Canada", flag: "CA", url: "America/Fort_Nelson"),
    WorldTime(location: "Glace Bay, Canada", flag: "CA", url: "America/Glace_Bay"),
    WorldTime(location: "Goose Bay, Canada", flag: "CA", url: "America/Goose_Bay"),
    WorldTime(location: "Halifax, Canada", flag: "CA", url: "America/Halifax"),
    WorldTime(location: "Inuvik, Canada", flag: "CA", url: "America/Inuvik"),
    WorldTime(location: "Iqaluit, Canada", flag: "CA", url: "America/Iqaluit"),
    WorldTime(location: "Moncton, Canada", flag: "CA", url: "America/Moncton"),
    WorldTime(location: "Nipigon, Canada", flag: "CA", url: "America/Nipigon"),
    WorldTime(location: "Pangnirtung, Canada", flag: "CA", url: "America/Pangnirtung"),
    WorldTime(location: "Rainy River, Canada", flag: "CA", url: "America/Rainy_River"),
    WorldTime(location: "Rankin Inlet, Canada", flag: "CA", url: "America/Rankin_Inlet"),
    WorldTime(location: "Regina, Canada", flag: "CA", url: "America/Regina"),
    WorldTime(location: "Resolute, Canada", flag: "CA", url: "America/Resolute"),
    WorldTime(location: "St Johns, Canada", flag: "CA", url: "America/St_Johns"),
    WorldTime(location: "Swift Current, Canada", flag: "CA", url: "America/Swift_Current"),
    WorldTime(location: "Thunder Bay, Canada", flag: "CA", url: "America/Thunder_Bay"),
    WorldTime(location: "Toronto, Canada", flag: "CA", url: "America/Toronto"),
    WorldTime(location: "Vancouver, Canada", flag: "CA", url: "America/Vancouver"),
    WorldTime(location: "Whitehorse, Canada", flag: "CA", url: "America/Whitehorse"),
    WorldTime(location: "Winnipeg, Canada", flag: "CA", url: "America/Winnipeg"),
    WorldTime(location: "Yellowknife, Canada", flag: "CA", url: "America/Yellowknife"),
    WorldTime(location: "Cape Verde, Cape Verde", flag: "CV", url: "Atlantic/Cape_Verde"),
    WorldTime(location: "Ndjamena, Chad", flag: "TD", url: "Africa/Ndjamena"),
    WorldTime(location: "Punta Arenas, Chile", flag: "CL", url: "America/Punta_Arenas"),
    WorldTime(location: "Santiago, Chile", flag: "CL", url: "America/Santiago"),
    WorldTime(location: "Palmer, Chile", flag: "CL", url: "Antarctica/Palmer"),
    WorldTime(location: "Easter, Chile", flag: "CL", url: "Pacific/Easter"),
    WorldTime(location: "Macau, China", flag: "CN", url: "Asia/Macau"),
    WorldTime(location: "Shanghai, China", flag: "CN", url: "Asia/Shanghai"),
    WorldTime(location: "Urumqi, China", flag: "CN", url: "Asia/Urumqi"),
    WorldTime(location: "Christmas, Christmas Island", flag: "CX", url: "Indian/Christmas"),
    WorldTime(location: "Kiritimati, Christmas Island", flag: "CX", url: "Pacific/Kiritimati"),
    WorldTime(location: "Cocos, Cocos Islands", flag: "CC", url: "Indian/Cocos"),
    WorldTime(location: "Bogota, Colombia", flag: "CO", url: "America/Bogota"),
    WorldTime(location: "Comoro, Comoros", flag: "KM", url: "Indian/Comoro"),
    WorldTime(location: "Rarotonga, Cook Islands", flag: "CK", url: "Pacific/Rarotonga"),
    WorldTime(location: "Costa Rica, Costa Rica", flag: "CR", url: "America/Costa_Rica"),
    WorldTime(location: "Zagreb, Croatia", flag: "HR", url: "Europe/Zagreb"),
    WorldTime(location: "Havana, Cuba", flag: "CU", url: "America/Havana"),
    WorldTime(location: "Famagusta, Cyprus", flag: "CY", url: "Asia/Famagusta"),
    WorldTime(location: "Nicosia, Cyprus", flag: "CY", url: "Asia/Nicosia"),
    WorldTime(location: "Prague, Czech Republic", flag: "CZ", url: "Europe/Prague"),
    WorldTime(location: "Copenhagen, Denmark", flag: "DK", url: "Europe/Copenhagen"),
    WorldTime(location: "Santo Domingo, Dominican Republic", flag: "DO", url: "America/Santo_Domingo"),
    WorldTime(location: "Guayaquil, Ecuador", flag: "EC", url: "America/Guayaquil"),
    WorldTime(location: "Cairo, Egypt", flag: "EG", url: "Africa/Cairo"),
    WorldTime(location: "El Salvador, El Salvador", flag: "SV", url: "America/El_Salvador"),
    WorldTime(location: "Tallinn, Estonia", flag: "EE", url: "Europe/Tallinn"),
    WorldTime(location: "Stanley, Falkland Islands", flag: "FK", url: "Atlantic/Stanley"),
    WorldTime(location: "Faroe, Faroe Islands", flag: "FO", url: "Atlantic/Faroe"),
    WorldTime(location: "Fiji, Fiji", flag: "FJ", url: "Pacific/Fiji"),
    WorldTime(location: "Helsinki, Finland", flag: "FI", url: "Europe/Helsinki"),
    WorldTime(location: "Cayenne, France", flag: "FR", url: "America/Cayenne"),
    WorldTime(location: "Martinique, France", flag: "FR", url: "America/Martinique"),
    WorldTime(location: "Miquelon, France", flag: "FR", url: "America/Miquelon"),
    WorldTime(location: "DumontDUrville, France", flag: "FR", url: "Antarctica/DumontDUrville"),
    WorldTime(location: "Paris, France", flag: "FR", url: "Europe/Paris"),
    WorldTime(location: "Gambier, French Polynesia", flag: "PF", url: "Pacific/Gambier"),
    WorldTime(location: "Marquesas, French Polynesia", flag: "PF", url: "Pacific/Marquesas"),
    WorldTime(location: "Tahiti, French Polynesia", flag: "PF", url: "Pacific/Tahiti"),
    WorldTime(location: "Kerguelen, French Southern and Antarctic Lands", flag: "TF", url: "Indian/Kerguelen"),
    WorldTime(location: "Galapagos, Galápagos Islands", flag: "EC", url: "Pacific/Galapagos"),
    WorldTime(location: "Tbilisi, Georgia", flag: "GE", url: "Asia/Tbilisi"),
    WorldTime(location: "Berlin, Germany", flag: "DE", url: "Europe/Berlin"),
    WorldTime(location: "Busingen, Germany", flag: "DE", url: "Europe/Busingen"),
    WorldTime(location: "Accra, Ghana", flag: "GH", url: "Africa/Accra"),
    WorldTime(location: "Gibraltar, Gibraltar", flag: "GI", url: "Europe/Gibraltar"),
    WorldTime(location: "Athens, Greece", flag: "GR", url: "Europe/Athens"),
    WorldTime(location: "Danmarkshavn, Greenland", flag: "GL", url: "America/Danmarkshavn"),
    WorldTime(location: "Nuuk, Greenland", flag: "GL", url: "America/Nuuk"),
    WorldTime(location: "Scoresbysund, Greenland", flag: "GL", url: "America/Scoresbysund"),
    WorldTime(location: "Thule, Greenland", flag: "GL", url: "America/Thule"),
    WorldTime(location: "Guam, Guam", flag: "GU", url: "Pacific/Guam"),
    WorldTime(location: "Guatemala, Guatemala", flag: "GT", url: "America/Guatemala"),
    WorldTime(location: "Bissau, Guinea-Bissau", flag: "GW", url: "Africa/Bissau"),
    WorldTime(location: "Guyana, Guyana", flag: "GY", url: "America/Guyana"),
    WorldTime(location: "Port-au-Prince, Haiti", flag: "HT", url: "America/Port-au-Prince"),
    WorldTime(location: "Tegucigalpa, Honduras", flag: "HN", url: "America/Tegucigalpa"),
    WorldTime(location: "Hong Kong, Hong Kong", flag: "HK", url: "Asia/Hong_Kong"),
    WorldTime(location: "Budapest, Hungary", flag: "HU", url: "Europe/Budapest"),
    WorldTime(location: "Reykjavik, Iceland", flag: "IS", url: "Atlantic/Reykjavik"),
    WorldTime(location: "Kolkata, India", flag: "IN", url: "Asia/Kolkata"),
    WorldTime(location: "Jakarta, Indonesia", flag: "ID", url: "Asia/Jakarta"),
    WorldTime(location: "Jayapura, Indonesia", flag: "ID", url: "Asia/Jayapura"),
    WorldTime(location: "Makassar, Indonesia", flag: "ID", url: "Asia/Makassar"),
    WorldTime(location: "Pontianak, Indonesia", flag: "ID", url: "Asia/Pontianak"),
    WorldTime(location: "Tehran, Iran", flag: "IR", url: "Asia/Tehran"),
    WorldTime(location: "Baghdad, Iraq", flag: "IQ", url: "Asia/Baghdad"),
    WorldTime(location: "Dublin, Ireland", flag: "IE", url: "Europe/Dublin"),
    WorldTime(location: "Isle of Man, Isle of Man", flag: "IM", url: "Europe/Isle_of_Man"),
    WorldTime(location: "Jerusalem, Israel", flag: "IL", url: "Asia/Jerusalem"),
    WorldTime(location: "Rome, Italy", flag: "IT", url: "Europe/Rome"),
    WorldTime(location: "Abidjan, Ivory Coast", flag: "CI", url: "Africa/Abidjan"),
    WorldTime(location: "Jamaica, Jamaica", flag: "JM", url: "America/Jamaica"),
    WorldTime(location: "Syowa, Japan", flag: "JP", url: "Antarctica/Syowa"),
    WorldTime(location: "Tokyo, Japan", flag: "JP", url: "Asia/Tokyo"),
    WorldTime(location: "Amman, Jordan", flag: "JO", url: "Asia/Amman"),
    WorldTime(location: "Almaty, Kazakhstan", flag: "KZ", url: "Asia/Almaty"),
    WorldTime(location: "Aqtau, Kazakhstan", flag: "KZ", url: "Asia/Aqtau"),
    WorldTime(location: "Aqtobe, Kazakhstan", flag: "KZ", url: "Asia/Aqtobe"),
    WorldTime(location: "Atyrau, Kazakhstan", flag: "KZ", url: "Asia/Atyrau"),
    WorldTime(location: "Oral, Kazakhstan", flag: "KZ", url: "Asia/Oral"),
    WorldTime(location: "Qyzylorda, Kazakhstan", flag: "KZ", url: "Asia/Qyzylorda"),
    WorldTime(location: "Nairobi, Kenya", flag: "KE", url: "Africa/Nairobi"),
    WorldTime(location: "Enderbury, Kiribati", flag: "KI", url: "Pacific/Enderbury"),
    WorldTime(location: "Tarawa, Kiribati", flag: "KI", url: "Pacific/Tarawa"),
    WorldTime(location: "Bishkek, Kyrgyzstan", flag: "KG", url: "Asia/Bishkek"),
    WorldTime(location: "Vientiane, Laos", flag: "LA", url: "Asia/Vientiane"),
    WorldTime(location: "Riga, Latvia", flag: "LV", url: "Europe/Riga"),
    WorldTime(location: "Beirut, Lebanon", flag: "LB", url: "Asia/Beirut"),
    WorldTime(location: "Monrovia, Liberia", flag: "LR", url: "Africa/Monrovia"),
    WorldTime(location: "Tripoli, Libya", flag: "LY", url: "Africa/Tripoli"),
    WorldTime(location: "Vaduz, Liechtenstein", flag: "LI", url: "Europe/Vaduz"),
    WorldTime(location: "Vilnius, Lithuania", flag: "LT", url: "Europe/Vilnius"),
    WorldTime(location: "Luxembourg, Luxembourg", flag: "LU", url: "Europe/Luxembourg"),
    WorldTime(location: "Antananarivo, Madagascar", flag: "MG", url: "Indian/Antananarivo"),
    WorldTime(location: "Kuala Lumpur, Malaysia", flag: "MY", url: "Asia/Kuala_Lumpur"),
    WorldTime(location: "Kuching, Malaysia", flag: "MY", url: "Asia/Kuching"),
    WorldTime(location: "Maldives, Maldives", flag: "MV", url: "Indian/Maldives"),
    WorldTime(location: "Malta, Malta", flag: "MT", url: "Europe/Malta"),
    WorldTime(location: "Kwajalein, Marshall Islands", flag: "MH", url: "Pacific/Kwajalein"),
    WorldTime(location: "Majuro, Marshall Islands", flag: "MH", url: "Pacific/Majuro"),
    WorldTime(location: "Mauritius, Mauritius", flag: "MU", url: "Indian/Mauritius"),
    WorldTime(location: "Mayotte, Mayotte", flag: "YT", url: "Indian/Mayotte"),
    WorldTime(location: "Bahia Banderas, Mexico", flag: "MX", url: "America/Bahia_Banderas"),
    WorldTime(location: "Cancun, Mexico", flag: "MX", url: "America/Cancun"),
    WorldTime(location: "Chihuahua, Mexico", flag: "MX", url: "America/Chihuahua"),
    WorldTime(location: "Hermosillo, Mexico", flag: "MX", url: "America/Hermosillo"),
    WorldTime(location: "Matamoros, Mexico", flag: "MX", url: "America/Matamoros"),
    WorldTime(location: "Mazatlan, Mexico", flag: "MX", url: "America/Mazatlan"),
    WorldTime(location: "Merida, Mexico", flag: "MX", url: "America/Merida"),
    WorldTime(location: "Mexico City, Mexico", flag: "MX", url: "America/Mexico_City"),
    WorldTime(location: "Monterrey, Mexico", flag: "MX", url: "America/Monterrey"),
    WorldTime(location: "Ojinaga, Mexico", flag: "MX", url: "America/Ojinaga"),
    WorldTime(location: "Tijuana, Mexico", flag: "MX", url: "America/Tijuana"),
    WorldTime(location: "Chuuk, Micronesia", flag: "FM", url: "Pacific/Chuuk"),
    WorldTime(location: "Kosrae, Micronesia", flag: "FM", url: "Pacific/Kosrae"),
    WorldTime(location: "Pohnpei, Micronesia", flag: "FM", url: "Pacific/Pohnpei"),
    WorldTime(location: "Chisinau, Moldova", flag: "MD", url: "Europe/Chisinau"),
    WorldTime(location: "Monaco, Monaco", flag: "MC", url: "Europe/Monaco"),
    WorldTime(location: "Choibalsan, Mongolia", flag: "MN", url: "Asia/Choibalsan"),
    WorldTime(location: "Hovd, Mongolia", flag: "MN", url: "Asia/Hovd"),
    WorldTime(location: "Ulaanbaatar, Mongolia", flag: "MN", url: "Asia/Ulaanbaatar"),
    WorldTime(location: "Podgorica, Montenegro", flag: "ME", url: "Europe/Podgorica"),
    WorldTime(location: "Casablanca, Morocco", flag: "MA", url: "Africa/Casablanca"),
    WorldTime(location: "Maputo, Mozambique", flag: "MZ", url: "Africa/Maputo"),
    WorldTime(location: "Rangoon, Myanmar", flag: "MM", url: "Asia/Rangoon"),
    WorldTime(location: "Windhoek, Namibia", flag: "NA", url: "Africa/Windhoek"),
    WorldTime(location: "Nauru, Nauru", flag: "NR", url: "Pacific/Nauru"),
    WorldTime(location: "Kathmandu, Nepal", flag: "NP", url: "Asia/Kathmandu"),
    WorldTime(location: "Curacao, Netherlands", flag: "NL", url: "America/Curacao"),
    WorldTime(location: "Amsterdam, Netherlands", flag: "NL", url: "Europe/Amsterdam"),
    WorldTime(location: "Noumea, New Caledonia", flag: "NC", url: "Pacific/Noumea"),
    WorldTime(location: "Auckland, New Zealand", flag: "NZ", url: "Pacific/Auckland"),
    WorldTime(location: "Chatham, New Zealand", flag: "NZ", url: "Pacific/Chatham"),
    WorldTime(location: "Managua, Nicaragua", flag: "NI", url: "America/Managua"),
    WorldTime(location: "Lagos, Nigeria", flag: "NG", url: "Africa/Lagos"),
    WorldTime(location: "Niue, Niue", flag: "NU", url: "Pacific/Niue"),
    WorldTime(location: "Norfolk, Norfolk Island", flag: "NF", url: "Pacific/Norfolk"),
    WorldTime(location: "Pyongyang, North Korea", flag: "KP", url: "Asia/Pyongyang"),
    WorldTime(location: "Skopje, North Macedonia", flag: "MK", url: "Europe/Skopje"),
    WorldTime(location: "Saipan, Northern Mariana Islands", flag: "MP", url: "Pacific/Saipan"),
    WorldTime(location: "Troll, Norway", flag: "NO", url: "Antarctica/Troll"),
    WorldTime(location: "Oslo, Norway", flag: "NO", url: "Europe/Oslo"),
    WorldTime(location: "Karachi, Pakistan", flag: "PK", url: "Asia/Karachi"),
    WorldTime(location: "Palau, Palau", flag: "PW", url: "Pacific/Palau"),
    WorldTime(location: "Gaza, Palestine", flag: "PS", url: "Asia/Gaza"),
    WorldTime(location: "Hebron, Palestine", flag: "PS", url: "Asia/Hebron"),
    WorldTime(location: "Panama, Panama", flag: "PA", url: "America/Panama"),
    WorldTime(location: "Bougainville, Papua New Guinea", flag: "PG", url: "Pacific/Bougainville"),
    WorldTime(location: "Port Moresby, Papua New Guinea", flag: "PG", url: "Pacific/Port_Moresby"),
    WorldTime(location: "Asuncion, Paraguay", flag: "PY", url: "America/Asuncion"),
    WorldTime(location: "Lima, Peru", flag: "PE", url: "America/Lima"),
    WorldTime(location: "Manila, Philippines", flag: "PH", url: "Asia/Manila"),
    WorldTime(location: "Pitcairn, Pitcairn Islands", flag: "PN", url: "Pacific/Pitcairn"),
    WorldTime(location: "Warsaw, Poland", flag: "PL", url: "Europe/Warsaw"),
    WorldTime(location: "Azores, Portugal", flag: "PT", url: "Atlantic/Azores"),
    WorldTime(location: "Madeira, Portugal", flag: "PT", url: "Atlantic/Madeira"),
    WorldTime(location: "Lisbon, Portugal", flag: "PT", url: "Europe/Lisbon"),
    WorldTime(location: "Puerto Rico, Puerto Rico", flag: "PR", url: "America/Puerto_Rico"),
    WorldTime(location: "Qatar, Qatar", flag: "QA", url: "Asia/Qatar"),
    WorldTime(location: "Reunion, Reunion", flag: "RE", url: "Indian/Reunion"),
    WorldTime(location: "Bucharest, Romania", flag: "RO", url: "Europe/Bucharest"),
    WorldTime(location: "Vostok, Russia", flag: "RU", url: "Antarctica/Vostok"),
    WorldTime(location: "Anadyr, Russia", flag: "RU", url: "Asia/Anadyr"),
    WorldTime(location: "Barnaul, Russia", flag: "RU", url: "Asia/Barnaul"),
    WorldTime(location: "Chita, Russia", flag: "RU", url: "Asia/Chita"),
    WorldTime(location: "Irkutsk, Russia", flag: "RU", url: "Asia/Irkutsk"),
    WorldTime(location: "Kamchatka, Russia", flag: "RU", url: "Asia/Kamchatka"),
    WorldTime(location: "Khandyga, Russia", flag: "RU", url: "Asia/Khandyga"),
    WorldTime(location: "Krasnoyarsk, Russia", flag: "RU", url: "Asia/Krasnoyarsk"),
    WorldTime(location: "Magadan, Russia", flag: "RU", url: "Asia/Magadan"),
    WorldTime(location: "Novokuznetsk, Russia", flag: "RU", url: "Asia/Novokuznetsk"),
    WorldTime(location: "Novosibirsk, Russia", flag: "RU", url: "Asia/Novosibirsk"),
    WorldTime(location: "Omsk, Russia", flag: "RU", url: "Asia/Omsk"),
    WorldTime(location: "Sakhalin, Russia", flag: "RU", url: "Asia/Sakhalin"),
    WorldTime(location: "Srednekolymsk, Russia", flag: "RU", url: "Asia/Srednekolymsk"),
    WorldTime(location: "Tomsk, Russia", flag: "RU", url: "Asia/Tomsk"),
    WorldTime(location: "Vladivostok, Russia", flag: "RU", url: "Asia/Vladivostok"),
    WorldTime(location: "Yakutsk, Russia", flag: "RU", url: "Asia/Yakutsk"),
    WorldTime(location: "Yekaterinburg, Russia", flag: "RU", url: "Asia/Yekaterinburg"),
    WorldTime(location: "Astrakhan, Russia", flag: "RU", url: "Europe/Astrakhan"),
    WorldTime(location: "Kaliningrad, Russia", flag: "RU", url: "Europe/Kaliningrad"),
    WorldTime(location: "Kirov, Russia", flag: "RU", url: "Europe/Kirov"),
    WorldTime(location: "Moscow, Russia", flag: "RU", url: "Europe/Moscow"),
    WorldTime(location: "Samara, Russia", flag: "RU", url: "Europe/Samara"),
    WorldTime(location: "Simferopol, Russia", flag: "RU", url: "Europe/Simferopol"),
    WorldTime(location: "Ulyanovsk, Russia", flag: "RU", url: "Europe/Ulyanovsk"),
    WorldTime(location: "Volgograd, Russia", flag: "RU", url: "Europe/Volgograd"),
    WorldTime(location: "St Helena, Saint Helena, Ascension and Tristan da Cunha", flag: "SH", url: "Atlantic/St_Helena"),
    WorldTime(location: "Apia, Samoa", flag: "WS", url: "Pacific/Apia"),
    WorldTime(location: "San Marino, San Marino", flag: "SM", url: "Europe/San_Marino"),
    WorldTime(location: "Sao Tome, Sao Tome and Principe", flag: "ST", url: "Africa/Sao_Tome"),
    WorldTime(location: "Riyadh, Saudi Arabia", flag: "SA", url: "Asia/Riyadh"),
    WorldTime(location: "Belgrade, Serbia", flag: "RS", url: "Europe/Belgrade"),
    WorldTime(location: "Mahe, Seychelles", flag: "SC", url: "Indian/Mahe"),
    WorldTime(location: "Singapore, Singapore", flag: "SG", url: "Asia/Singapore"),
    WorldTime(location: "Bratislava, Slovakia", flag: "SK", url: "Europe/Bratislava"),
    WorldTime(location: "Ljubljana, Slovenia", flag: "SI", url: "Europe/Ljubljana"),
    WorldTime(location: "Guadalcanal, Solomon Islands", flag: "SB", url: "Pacific/Guadalcanal"),
    WorldTime(location: "Johannesburg, South Africa", flag: "ZA", url: "Africa/Johannesburg"),
    WorldTime(location: "Seoul, South Korea", flag: "KR", url: "Asia/Seoul"),
    WorldTime(location: "Juba, South Sudan", flag: "SS", url: "Africa/Juba"),
    WorldTime(location: "Ceuta, Spain", flag: "ES", url: "Africa/Ceuta"),
    WorldTime(location: "Canary, Spain", flag: "ES", url: "Atlantic/Canary"),
    WorldTime(location: "Madrid, Spain", flag: "ES", url: "Europe/Madrid"),
    WorldTime(location: "Colombo, Sri Lanka", flag: "LK", url: "Asia/Colombo"),
    WorldTime(location: "Khartoum, Sudan", flag: "SD", url: "Africa/Khartoum"),
    WorldTime(location: "Paramaribo, Suriname", flag: "SR", url: "America/Paramaribo"),
    WorldTime(location: "Stockholm, Sweden", flag: "SE", url: "Europe/Stockholm"),
    WorldTime(location: "Zurich, Switzerland", flag: "CH", url: "Europe/Zurich"),
    WorldTime(location: "Damascus, Syria", flag: "SY", url: "Asia/Damascus"),
    WorldTime(location: "Taipei, Taiwan", flag: "TW", url: "Asia/Taipei"),
    WorldTime(location: "Dushanbe, Tajikistan", flag: "TJ", url: "Asia/Dushanbe"),
    WorldTime(location: "Bangkok, Thailand", flag: "TH", url: "Asia/Bangkok"),
    WorldTime(location: "Dili, Timor-Leste", flag: "TL", url: "Asia/Dili"),
    WorldTime(location: "Fakaofo, Tokelau", flag: "TK", url: "Pacific/Fakaofo"),
    WorldTime(location: "Tongatapu, Tonga", flag: "TO", url: "Pacific/Tongatapu"),
    WorldTime(location: "Port of Spain, Trinidad and Tobago", flag: "TT", url: "America/Port_of_Spain"),
    WorldTime(location: "Tunis, Tunisia", flag: "TN", url: "Africa/Tunis"),
    WorldTime(location: "Istanbul, Turkey", flag: "TR", url: "Europe/Istanbul"),
    WorldTime(location: "Ashgabat, Turkmenistan", flag: "TM", url: "Asia/Ashgabat"),
    WorldTime(location: "Grand Turk, Turks and Caicos Islands", flag: "TC", url: "America/Grand_Turk"),
    WorldTime(location: "Funafuti, Tuvalu", flag: "TV", url: "Pacific/Funafuti"),
    WorldTime(location: "Kiev, Ukraine", flag: "UA", url: "Europe/Kiev"),
    WorldTime(location: "Uzhgorod, Ukraine", flag: "UA", url: "Europe/Uzhgorod"),
    WorldTime(location: "Zaporozhye, Ukraine", flag: "UA", url: "Europe/Zaporozhye"),
    WorldTime(location: "Dubai, United Arab Emirates", flag: "AE", url: "Asia/Dubai"),
    WorldTime(location: "London, United Kingdom", flag: "GB", url: "Europe/London"),
    WorldTime(location: "Adak, United States", flag: "US", url: "America/Adak"),
    WorldTime(location: "Anchorage, United States", flag: "US", url: "America/Anchorage"),
    WorldTime(location: "Boise, United States", flag: "US", url: "America/Boise"),
    WorldTime(location: "Chicago, United States", flag: "US", url: "America/Chicago"),
    WorldTime(location: "Denver, United States", flag: "US", url: "America/Denver"),
    WorldTime(location: "Detroit, United States", flag: "US", url: "America/Detroit"),
    WorldTime(location: "Indianapolis, United States", flag: "US", url: "America/Indiana/Indianapolis"),
    WorldTime(location: "Knox, United States", flag: "US", url: "America/Indiana/Knox"),
    WorldTime(location: "Marengo, United States", flag: "US", url: "America/Indiana/Marengo"),
    WorldTime(location: "Petersburg, United States", flag: "US", url: "America/Indiana/Petersburg"),
    WorldTime(location: "Tell City, United States", flag: "US", url: "America/Indiana/Tell_City"),
    WorldTime(location: "Vevay, United States", flag: "US", url: "America/Indiana/Vevay"),
    WorldTime(location: "Vincennes, United States", flag: "US", url: "America/Indiana/Vincennes"),
    WorldTime(location: "Winamac, United States", flag: "US", url: "America/Indiana/Winamac"),
    WorldTime(location: "Juneau, United States", flag: "US", url: "America/Juneau"),
    WorldTime(location: "Louisville, United States", flag: "US", url: "America/Kentucky/Louisville"),
    WorldTime(location: "Monticello, United States", flag: "US", url: "America/Kentucky/Monticello"),
    WorldTime(location: "Los Angeles, United States", flag: "US", url: "America/Los_Angeles"),
    WorldTime(location: "Menominee, United States", flag: "US", url: "America/Menominee"),
    WorldTime(location: "Metlakatla, United States", flag: "US", url: "America/Metlakatla"),
    WorldTime(location: "New York, United States", flag: "US", url: "America/New_York"),
    WorldTime(location: "Nome, United States", flag: "US", url: "America/Nome"),
    WorldTime(location: "Beulah, United States", flag: "US", url: "America/North_Dakota/Beulah"),
    WorldTime(location: "Center, United States", flag: "US", url: "America/North_Dakota/Center"),
    WorldTime(location: "New Salem, United States", flag: "US", url: "America/North_Dakota/New_Salem"),
    WorldTime(location: "Phoenix, United States", flag: "US", url: "America/Phoenix"),
    WorldTime(location: "Sitka, United States", flag: "US", url: "America/Sitka"),
    WorldTime(location: "Yakutat, United States", flag: "US", url: "America/Yakutat"),
    WorldTime(location: "Honolulu, United States", flag: "US", url: "Pacific/Honolulu"),
    WorldTime(location: "Johnston, United States", flag: "US", url: "Pacific/Johnston"),
    WorldTime(location: "Midway, United States", flag: "US", url: "Pacific/Midway"),
    WorldTime(location: "Wake, United States", flag: "US", url: "Pacific/Wake"),
    WorldTime(location: "Montevideo, Uruguay", flag: "UY", url: "America/Montevideo"),
    WorldTime(location: "Samarkand, Uzbekistan", flag: "UZ", url: "Asia/Samarkand"),
    WorldTime(location: "Tashkent, Uzbekistan", flag: "UZ", url: "Asia/Tashkent"),
    WorldTime(location: "Efate, Vanuatu", flag: "VU", url: "Pacific/Efate"),
    WorldTime(location: "Vatican, Vatican City", flag: "VA", url: "Europe/Vatican"),
    WorldTime(location: "Caracas, Venezuela", flag: "VE", url: "America/Caracas"),
    WorldTime(location: "Ho Chi Minh, Vietnam", flag: "VN", url: "Asia/Ho_Chi_Minh"),
    WorldTime(location: "Wallis, Wallis and Futuna", flag: "WF", url: "Pacific/Wallis"),
    WorldTime(location: "El Aaiun, Western Sahara", flag: "EH", url: "Africa/El_Aaiun")
  ];

  late NavigatorState navigator = NavigatorState();

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    navigator.pop({
      'location': instance.location,
      'flag': "https://countryflagsapi.com/png/${instance.flag}",
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    navigator = Navigator.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    //"https://flagsapi.com/${locations[index].flag}/flat/64.png
                    "https://countryflagsapi.com/png/${locations[index].flag}"
                  ),
                ),
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
              ),
            ),
          );
        },
      ),
    );
  }
}
