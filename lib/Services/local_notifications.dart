import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
  _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static void initialize() {
    const InitializationSettings initializationSettings =
    InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"));
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

 /* static void display(RemoteMessage message) async{
    try {
      // int id = DateTime.now().microsecondsSinceEpoch ~/1000000;
      Random random = Random();
      int id = random.nextInt(10000);
      const NotificationDetails notificationDetails = NotificationDetails(
          android: AndroidNotificationDetails(
            "restaurantAdmin",
            "channel",
            importance: Importance.max,
            priority: Priority.high,
          )

      );
      //print("my id is ${id.toString()}");
      await _flutterLocalNotificationsPlugin.show(

        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,);
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }*/
}
