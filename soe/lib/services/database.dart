import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:soe/models/currentUser.dart';
import 'package:soe/models/scheduleData.dart';
import 'package:soe/models/sensorData.dart';

class DatabaseServices {
  final String uid;
  DatabaseServices({this.uid});

  //collection reference
  final CollectionReference staffData =
      FirebaseFirestore.instance.collection('staff');
  final CollectionReference scheduleData =
      FirebaseFirestore.instance.collection('Schedule');
  final CollectionReference sensorData =
      FirebaseFirestore.instance.collection('SensorData');
  final CollectionReference reportData =
      FirebaseFirestore.instance.collection('Reports');

  Future updateSensorData(String ntu, String mq2) async {
    return await sensorData.doc('data').update({
      'ntu': ntu,
      'mq2': mq2,
    });
  }

  // Future addReport(String s) async{
  //   return await reportData.doc(uid).set({})
  // }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data()['name'],
      email: snapshot.data()['email'],
      mobile: snapshot.data()['mobile'],
    );
  }

  Stream<UserData> get userData {
    return staffData.doc(uid).snapshots().map(_userDataFromSnapshot);
  }

  SensorData2 _sensorDataFromSnapshot(DocumentSnapshot snapshot) {
    return SensorData2(
      ntu: snapshot.data()['ntu'],
      mq2: snapshot.data()['mq2'],
    );
  }

  Stream<SensorData2> get dataOfSensor {
    return sensorData.doc('data').snapshots().map(_sensorDataFromSnapshot);
  }

  ScheduleData _scheduleDataFromSnapshot(DocumentSnapshot snapshot) {
    return ScheduleData(
      onDuty: snapshot.data()['onDuty'],
    );
  }

  Stream<ScheduleData> get dataOfSchedule {
    return scheduleData.doc('data').snapshots().map(_scheduleDataFromSnapshot);
  }
}
