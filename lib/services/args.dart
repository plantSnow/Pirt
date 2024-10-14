// ignore_for_file: prefer_const_declarations

// 用户相关
final String argUserName = "种下大雪";
final String argPersonalQuote = "把酒祝东风，与君共从容...";
final String argProfilePhotoPath = "assets/images/pirt_logo.png";

// 计划相关
class PirtPlan {
  // 参数
  String argPlanName = '';
  Map<String, DateTime> argPlanDates = {
    'begin': DateTime.now(), 
    'end': DateTime.now()
  };
  Map<String, String> argPlanCity = {
    'departure': '', 
    'destination': ''
  };
  String argPlanProfile = '';
  String argPlanType = '';
  List<String> argPlanLabels = [];

  // 构造函数
  void setName(String name) => argPlanName = name;
  void setDate(Map<String, DateTime> dates) => argPlanDates = dates;
  void setCity(Map<String, String> city) => argPlanCity = city;
  void setProfile(String profile) => argPlanProfile = profile;
  void setType(String type) => argPlanType = type;
  void setLabels(List<String> labels) => argPlanLabels = labels;

}

// 事项相关
class PirtTask {
  // 参数
  DateTime argTaskBeginDate = DateTime.now();
  int argTaskLastingTime = 0;
  Map<String, String> argTaskLocation = {
    'departure': '', 
    'destination': ''
  };
  int argTaskClockNeeded = 0;
  String argTaskAlarmMusic = '';
  String argTaskNote = '';

  // 构造函数
  void setBeginDate(DateTime beginDate) => argTaskBeginDate = beginDate;
  void setLastingTime(int lastingTime) => argTaskLastingTime = lastingTime;
  void setLocation(Map<String, String> location) => argTaskLocation = location;
  void setClockNeed(int clockNeeded) => argTaskClockNeeded = clockNeeded;
  void setAlarmMusic(String music) => argTaskAlarmMusic = music;
  void setNote(String note) => argTaskNote = note;

}