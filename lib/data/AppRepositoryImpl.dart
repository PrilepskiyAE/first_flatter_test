import '../domain/AppRepository.dart';

class AppModelImpl extends AppModel {

  final Map<String,String> users = {
    "Kotlin" : "https://www.udacity.com/blog/wp-content/uploads/2018/05/Kotlin-Udacity-Google.png",
    "Java": "https://www.reksoft.ru/wp-content/uploads/2021/02/Kak-ustanovit-Java-s-apt-na-Ubuntu-18.04-1024x724.jpg",
    "KMM" : "https://assets-global.website-files.com/607f4f6df411bd9e447dc7d8/607f4f6df411bd3cd97dd5ee_kotlin-multiplatform.png",
    "Flutter" : "https://cdn6.f-cdn.com/contestentries/2150025/25034390/6316951757b97_thumb900.jpg",
    "Dart": "https://swansoftwaresolutions.com/wp-content/uploads/2020/02/08.20.20-What-is-Dart-and-how-is-it-used.jpg"
  };

  @override
  Map<String, String> work() {
    print("DI: TEST INIT");
    return users;
  }


}