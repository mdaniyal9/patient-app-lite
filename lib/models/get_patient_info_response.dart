/// data : {"id":2,"user_id":8,"device_id":20,"image":null,"first_name":"Daniyal","first_name_enc":null,"last_name":"Altaf","last_name_enc":null,"mobile_phone":"03001234567","mobile_phone_enc":null,"full_name":"Daniyal Altaf","mr_no":"CHI-HN-0002","user_name":"daniyalp","gender":"Male","age":28,"height":180,"weight":null,"mobile":"03001234567","group":{"group_id":2,"group_name":"Patient","group_type":"Patient"},"episode_id":2,"devices":[{"device_id":3,"device_unique_code":"SWAN","device_code":"01:B6:EC:B1:CB:95","device_type_id":32,"device_type":"SWAN","device_model":"ANJ300RB","device_image":null,"device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":7,"device_unique_code":"PULMO012934","device_code":"34:81:F4:50:21:FC","device_type_id":2,"device_type":"Spirometer","device_model":"SP10W","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/Spirometer.png","device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":8,"device_unique_code":"BC011293","device_code":"34:81:F4:4B:B9:51","device_type_id":6,"device_type":"Urine Analyzer","device_model":"BC401","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/Urine.png","device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":13,"device_unique_code":"QNDG100015","device_code":"EF:A3:56:81:B3:00","device_type_id":33,"device_type":"Nebulizer","device_model":"NE-M01L","device_image":null,"device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":12,"device_unique_code":"smct01","device_code":"F0:C7:7F:F8:95:72","device_type_id":19,"device_type":"Heart Book","device_model":"HB-H1","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/aa.png","device_delete_data":true,"device_is_continuous":true,"prefix":null},{"device_id":1,"device_unique_code":"XCI00PC00041","device_code":"88:1B:99:06:05:66","device_type_id":21,"device_type":"Spot-Check-Monitor","device_model":"PC-102","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/aa.png","device_delete_data":true,"device_is_continuous":true,"prefix":null},{"device_id":19,"device_unique_code":"AP00580","device_code":"7C:01:0A:EF:E5:9B","device_type_id":27,"device_type":"Sleep Screener","device_model":"AP-20","device_image":null,"device_delete_data":true,"device_is_continuous":true,"prefix":null},{"device_id":11,"device_unique_code":"9998","device_code":"D8:A9:8B:A6:89:5E","device_type_id":29,"device_type":"Mintti Vision","device_model":"HC03","device_image":null,"device_delete_data":true,"device_is_continuous":false,"prefix":null}],"SecureModeEnabled":false,"SymptomChecker":true,"total_balance":0,"clinics":[{"clinic_mr_no":"PN-0002","clinic_name":"CHI CLINIC","clinic_logo_url":null,"clinic_address":null,"balance":0}],"has_subscription":false}
/// Status : "Ok"
/// Time : 1606222983.996
/// Duration : 0.151

class GetPatientInfoResponse {
  Data _data;
  String _status;
  double _time;
  double _duration;

  Data get data => _data;
  String get status => _status;
  double get time => _time;
  double get duration => _duration;

  GetPatientInfoResponse({
      Data data, 
      String status, 
      double time, 
      double duration}){
    _data = data;
    _status = status;
    _time = time;
    _duration = duration;
}

  GetPatientInfoResponse.fromJson(dynamic json) {
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
    _status = json["Status"];
    _time = json["Time"];
    _duration = json["Duration"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    map["Status"] = _status;
    map["Time"] = _time;
    map["Duration"] = _duration;
    return map;
  }

}

/// id : 2
/// user_id : 8
/// device_id : 20
/// image : null
/// first_name : "Daniyal"
/// first_name_enc : null
/// last_name : "Altaf"
/// last_name_enc : null
/// mobile_phone : "03001234567"
/// mobile_phone_enc : null
/// full_name : "Daniyal Altaf"
/// mr_no : "CHI-HN-0002"
/// user_name : "daniyalp"
/// gender : "Male"
/// age : 28
/// height : 180
/// weight : null
/// mobile : "03001234567"
/// group : {"group_id":2,"group_name":"Patient","group_type":"Patient"}
/// episode_id : 2
/// devices : [{"device_id":3,"device_unique_code":"SWAN","device_code":"01:B6:EC:B1:CB:95","device_type_id":32,"device_type":"SWAN","device_model":"ANJ300RB","device_image":null,"device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":7,"device_unique_code":"PULMO012934","device_code":"34:81:F4:50:21:FC","device_type_id":2,"device_type":"Spirometer","device_model":"SP10W","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/Spirometer.png","device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":8,"device_unique_code":"BC011293","device_code":"34:81:F4:4B:B9:51","device_type_id":6,"device_type":"Urine Analyzer","device_model":"BC401","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/Urine.png","device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":13,"device_unique_code":"QNDG100015","device_code":"EF:A3:56:81:B3:00","device_type_id":33,"device_type":"Nebulizer","device_model":"NE-M01L","device_image":null,"device_delete_data":true,"device_is_continuous":false,"prefix":null},{"device_id":12,"device_unique_code":"smct01","device_code":"F0:C7:7F:F8:95:72","device_type_id":19,"device_type":"Heart Book","device_model":"HB-H1","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/aa.png","device_delete_data":true,"device_is_continuous":true,"prefix":null},{"device_id":1,"device_unique_code":"XCI00PC00041","device_code":"88:1B:99:06:05:66","device_type_id":21,"device_type":"Spot-Check-Monitor","device_model":"PC-102","device_image":"https://s3.us-east-2.amazonaws.com/pubshare.chi.com/Devices-images/aa.png","device_delete_data":true,"device_is_continuous":true,"prefix":null},{"device_id":19,"device_unique_code":"AP00580","device_code":"7C:01:0A:EF:E5:9B","device_type_id":27,"device_type":"Sleep Screener","device_model":"AP-20","device_image":null,"device_delete_data":true,"device_is_continuous":true,"prefix":null},{"device_id":11,"device_unique_code":"9998","device_code":"D8:A9:8B:A6:89:5E","device_type_id":29,"device_type":"Mintti Vision","device_model":"HC03","device_image":null,"device_delete_data":true,"device_is_continuous":false,"prefix":null}]
/// SecureModeEnabled : false
/// SymptomChecker : true
/// total_balance : 0
/// clinics : [{"clinic_mr_no":"PN-0002","clinic_name":"CHI CLINIC","clinic_logo_url":null,"clinic_address":null,"balance":0}]
/// has_subscription : false

class Data {
  int _id;
  int _userId;
  int _deviceId;
  dynamic _image;
  String _firstName;
  dynamic _firstNameEnc;
  String _lastName;
  dynamic _lastNameEnc;
  String _mobilePhone;
  dynamic _mobilePhoneEnc;
  String _fullName;
  String _mrNo;
  String _userName;
  String _gender;
  int _age;
  int _height;
  dynamic _weight;
  String _mobile;
  Group _group;
  int _episodeId;
  List<Devices> _devices;
  bool _secureModeEnabled;
  bool _symptomChecker;
  int _totalBalance;
  List<Clinics> _clinics;
  bool _hasSubscription;

  int get id => _id;
  int get userId => _userId;
  int get deviceId => _deviceId;
  dynamic get image => _image;
  String get firstName => _firstName;
  dynamic get firstNameEnc => _firstNameEnc;
  String get lastName => _lastName;
  dynamic get lastNameEnc => _lastNameEnc;
  String get mobilePhone => _mobilePhone;
  dynamic get mobilePhoneEnc => _mobilePhoneEnc;
  String get fullName => _fullName;
  String get mrNo => _mrNo;
  String get userName => _userName;
  String get gender => _gender;
  int get age => _age;
  int get height => _height;
  dynamic get weight => _weight;
  String get mobile => _mobile;
  Group get group => _group;
  int get episodeId => _episodeId;
  List<Devices> get devices => _devices;
  bool get secureModeEnabled => _secureModeEnabled;
  bool get symptomChecker => _symptomChecker;
  int get totalBalance => _totalBalance;
  List<Clinics> get clinics => _clinics;
  bool get hasSubscription => _hasSubscription;

  Data({
      int id, 
      int userId, 
      int deviceId, 
      dynamic image, 
      String firstName, 
      dynamic firstNameEnc, 
      String lastName, 
      dynamic lastNameEnc, 
      String mobilePhone, 
      dynamic mobilePhoneEnc, 
      String fullName, 
      String mrNo, 
      String userName, 
      String gender, 
      int age, 
      int height, 
      dynamic weight, 
      String mobile, 
      Group group, 
      int episodeId, 
      List<Devices> devices, 
      bool secureModeEnabled, 
      bool symptomChecker, 
      int totalBalance, 
      List<Clinics> clinics, 
      bool hasSubscription}){
    _id = id;
    _userId = userId;
    _deviceId = deviceId;
    _image = image;
    _firstName = firstName;
    _firstNameEnc = firstNameEnc;
    _lastName = lastName;
    _lastNameEnc = lastNameEnc;
    _mobilePhone = mobilePhone;
    _mobilePhoneEnc = mobilePhoneEnc;
    _fullName = fullName;
    _mrNo = mrNo;
    _userName = userName;
    _gender = gender;
    _age = age;
    _height = height;
    _weight = weight;
    _mobile = mobile;
    _group = group;
    _episodeId = episodeId;
    _devices = devices;
    _secureModeEnabled = secureModeEnabled;
    _symptomChecker = symptomChecker;
    _totalBalance = totalBalance;
    _clinics = clinics;
    _hasSubscription = hasSubscription;
}

  Data.fromJson(dynamic json) {
    _id = json["id"];
    _userId = json["user_id"];
    _deviceId = json["device_id"];
    _image = json["image"];
    _firstName = json["first_name"];
    _firstNameEnc = json["first_name_enc"];
    _lastName = json["last_name"];
    _lastNameEnc = json["last_name_enc"];
    _mobilePhone = json["mobile_phone"];
    _mobilePhoneEnc = json["mobile_phone_enc"];
    _fullName = json["full_name"];
    _mrNo = json["mr_no"];
    _userName = json["user_name"];
    _gender = json["gender"];
    _age = json["age"];
    _height = json["height"];
    _weight = json["weight"];
    _mobile = json["mobile"];
    _group = json["group"] != null ? Group.fromJson(json["group"]) : null;
    _episodeId = json["episode_id"];
    if (json["devices"] != null) {
      _devices = [];
      json["devices"].forEach((v) {
        _devices.add(Devices.fromJson(v));
      });
    }
    _secureModeEnabled = json["SecureModeEnabled"];
    _symptomChecker = json["SymptomChecker"];
    _totalBalance = json["total_balance"];
    if (json["clinics"] != null) {
      _clinics = [];
      json["clinics"].forEach((v) {
        _clinics.add(Clinics.fromJson(v));
      });
    }
    _hasSubscription = json["has_subscription"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["user_id"] = _userId;
    map["device_id"] = _deviceId;
    map["image"] = _image;
    map["first_name"] = _firstName;
    map["first_name_enc"] = _firstNameEnc;
    map["last_name"] = _lastName;
    map["last_name_enc"] = _lastNameEnc;
    map["mobile_phone"] = _mobilePhone;
    map["mobile_phone_enc"] = _mobilePhoneEnc;
    map["full_name"] = _fullName;
    map["mr_no"] = _mrNo;
    map["user_name"] = _userName;
    map["gender"] = _gender;
    map["age"] = _age;
    map["height"] = _height;
    map["weight"] = _weight;
    map["mobile"] = _mobile;
    if (_group != null) {
      map["group"] = _group.toJson();
    }
    map["episode_id"] = _episodeId;
    if (_devices != null) {
      map["devices"] = _devices.map((v) => v.toJson()).toList();
    }
    map["SecureModeEnabled"] = _secureModeEnabled;
    map["SymptomChecker"] = _symptomChecker;
    map["total_balance"] = _totalBalance;
    if (_clinics != null) {
      map["clinics"] = _clinics.map((v) => v.toJson()).toList();
    }
    map["has_subscription"] = _hasSubscription;
    return map;
  }

}

/// clinic_mr_no : "PN-0002"
/// clinic_name : "CHI CLINIC"
/// clinic_logo_url : null
/// clinic_address : null
/// balance : 0

class Clinics {
  String _clinicMrNo;
  String _clinicName;
  dynamic _clinicLogoUrl;
  dynamic _clinicAddress;
  int _balance;

  String get clinicMrNo => _clinicMrNo;
  String get clinicName => _clinicName;
  dynamic get clinicLogoUrl => _clinicLogoUrl;
  dynamic get clinicAddress => _clinicAddress;
  int get balance => _balance;

  Clinics({
      String clinicMrNo, 
      String clinicName, 
      dynamic clinicLogoUrl, 
      dynamic clinicAddress, 
      int balance}){
    _clinicMrNo = clinicMrNo;
    _clinicName = clinicName;
    _clinicLogoUrl = clinicLogoUrl;
    _clinicAddress = clinicAddress;
    _balance = balance;
}

  Clinics.fromJson(dynamic json) {
    _clinicMrNo = json["clinic_mr_no"];
    _clinicName = json["clinic_name"];
    _clinicLogoUrl = json["clinic_logo_url"];
    _clinicAddress = json["clinic_address"];
    _balance = json["balance"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["clinic_mr_no"] = _clinicMrNo;
    map["clinic_name"] = _clinicName;
    map["clinic_logo_url"] = _clinicLogoUrl;
    map["clinic_address"] = _clinicAddress;
    map["balance"] = _balance;
    return map;
  }

}

/// device_id : 3
/// device_unique_code : "SWAN"
/// device_code : "01:B6:EC:B1:CB:95"
/// device_type_id : 32
/// device_type : "SWAN"
/// device_model : "ANJ300RB"
/// device_image : null
/// device_delete_data : true
/// device_is_continuous : false
/// prefix : null

class Devices {
  int _deviceId;
  String _deviceUniqueCode;
  String _deviceCode;
  int _deviceTypeId;
  String _deviceType;
  String _deviceModel;
  dynamic _deviceImage;
  bool _deviceDeleteData;
  bool _deviceIsContinuous;
  dynamic _prefix;

  int get deviceId => _deviceId;
  String get deviceUniqueCode => _deviceUniqueCode;
  String get deviceCode => _deviceCode;
  int get deviceTypeId => _deviceTypeId;
  String get deviceType => _deviceType;
  String get deviceModel => _deviceModel;
  dynamic get deviceImage => _deviceImage;
  bool get deviceDeleteData => _deviceDeleteData;
  bool get deviceIsContinuous => _deviceIsContinuous;
  dynamic get prefix => _prefix;

  Devices({
      int deviceId, 
      String deviceUniqueCode, 
      String deviceCode, 
      int deviceTypeId, 
      String deviceType, 
      String deviceModel, 
      dynamic deviceImage, 
      bool deviceDeleteData, 
      bool deviceIsContinuous, 
      dynamic prefix}){
    _deviceId = deviceId;
    _deviceUniqueCode = deviceUniqueCode;
    _deviceCode = deviceCode;
    _deviceTypeId = deviceTypeId;
    _deviceType = deviceType;
    _deviceModel = deviceModel;
    _deviceImage = deviceImage;
    _deviceDeleteData = deviceDeleteData;
    _deviceIsContinuous = deviceIsContinuous;
    _prefix = prefix;
}

  Devices.fromJson(dynamic json) {
    _deviceId = json["device_id"];
    _deviceUniqueCode = json["device_unique_code"];
    _deviceCode = json["device_code"];
    _deviceTypeId = json["device_type_id"];
    _deviceType = json["device_type"];
    _deviceModel = json["device_model"];
    _deviceImage = json["device_image"];
    _deviceDeleteData = json["device_delete_data"];
    _deviceIsContinuous = json["device_is_continuous"];
    _prefix = json["prefix"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["device_id"] = _deviceId;
    map["device_unique_code"] = _deviceUniqueCode;
    map["device_code"] = _deviceCode;
    map["device_type_id"] = _deviceTypeId;
    map["device_type"] = _deviceType;
    map["device_model"] = _deviceModel;
    map["device_image"] = _deviceImage;
    map["device_delete_data"] = _deviceDeleteData;
    map["device_is_continuous"] = _deviceIsContinuous;
    map["prefix"] = _prefix;
    return map;
  }

}

/// group_id : 2
/// group_name : "Patient"
/// group_type : "Patient"

class Group {
  int _groupId;
  String _groupName;
  String _groupType;

  int get groupId => _groupId;
  String get groupName => _groupName;
  String get groupType => _groupType;

  Group({
      int groupId, 
      String groupName, 
      String groupType}){
    _groupId = groupId;
    _groupName = groupName;
    _groupType = groupType;
}

  Group.fromJson(dynamic json) {
    _groupId = json["group_id"];
    _groupName = json["group_name"];
    _groupType = json["group_type"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["group_id"] = _groupId;
    map["group_name"] = _groupName;
    map["group_type"] = _groupType;
    return map;
  }

}