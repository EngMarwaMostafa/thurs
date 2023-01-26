import 'dart:convert';
import 'dart:core';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../api/api/repo/contat_repo.dart';
import '../models/contact_model.dart';
import 'package:google_maps_webservice/src/places.dart';

class ContactController extends GetxController implements GetxService {
  ContactRepo contactRepo;

  ContactController({required this.contactRepo});

  bool _loading = false;
  late Position _position;
  late Position _pickPosition;

  ContactModel? _contactModel;
  bool get isLoading=>_isLoading;
  ContactModel? get contactModel=>_contactModel;

  Placemark _placemark = Placemark();
  Placemark _pickPlacemark = Placemark();

  Placemark get placemark => _placemark;

  Placemark get pickPlacemark => _pickPlacemark;



  late GoogleMapController _mapController;

  GoogleMapController get mapController => _mapController;

  bool _updateContactData = true;
  bool _changeContact = true;

  bool get loading => _loading;

  Position get position => _position;

  Position get pickPosition => _pickPosition;

  /*for srvice zone*/
  bool _isLoading = false;

  /*wether the user is in service zone or not*/
  bool _inZone = false;

  bool get inZone => _inZone;

  /*showing and hiding the button as map as loads*/
  bool _buttonDisabled = true;

  bool get buttonDisabled => _buttonDisabled;

  /*save the google map suggestions for address*/
  List<Prediction> _predectionList=[];


  void setMapController(GoogleMapController mapController) {
    _mapController = mapController;

   /*  Future<void> updatePosition(CameraPosition position,bool fromAddress)async{
      if(_updateContactData){
        _loading=true;
        update();
        try{
          if(fromAddress){
            _position=Position(
                longitude: position.target.longitude,
                latitude: position.target.latitude,
                timestamp: DateTime.now(),
                accuracy: 1,
                altitude: 1,
                heading: 1,
                speed: 1,
                speedAccuracy: 1);
          }else{
            _pickPosition=Position(
                longitude:position.target.longitude,
                latitude: position.target.latitude,
                timestamp: DateTime.now(),
                accuracy: 1,
                altitude: 1,
                heading: 1,
                speed: 1,
                speedAccuracy: 1);
          }
          ResponseModel _responseModel=
              await getZone(
                position.target.latitude.toString(),
                position.target.longitude.toString(),
                false
              );
          _buttonDisabled=_responseModel.isSuccess;
          if(_changeContact){
            String _address =await getAddressfromGeocode(
              LatLng(
                 position.target.latitude,
                  position.target.longitude,
              ),
            );
            fromAddress
            ?_placemark=Placemark(name: _address)
            :_pickPlacemark=Placemark(name: _address);
          }
        } catch (e) {
          print(e);
        }
        _loading = false;
        update();
      } else {
        _updateContactData = true;
      }
    }*/

  }

  late Map<String, dynamic> _getAddress;
  Map get getAddress=>_getAddress;

  ContactModel getUserAddress(){
    late ContactModel _contactModel;

    /*converting to map using jsonDecode*/
    _getAddress=jsonDecode(contactRepo.getUserAddress());
    try {
      _contactModel =
          ContactModel.fromJson(jsonDecode(contactRepo.getUserAddress()));
    }catch(e) {

    }
    return _contactModel;
  }

 /*void setAddressTypeIndex(int index){
     _contactTypeIndex=index;
     update();
  }*/

 /* Future<ResponseModel> addAddress(ContactModel contactModel)async{
     _loading=true;
     update();
     Response response=await contactRepo.addAddress(contactModel);
     ResponseModel responseModel;
     if(response.statusCode==200){
       String message=response.body['message'];
       responseModel=ResponseModel(true, message);
       await saveUserAddress(contactModel);
     }else{
       responseModel=ResponseModel(false, response.statusText!);
     }
     update();
     return responseModel;
  }*/

/* Future<void> getAddressList()async{
     Response response=await contactRepo.getAllAddress();
     if(response.statusCode==200){
       _contactList=[];
       _allcontactList=[];
       response.body.forEach((address){
         _contactList.add(ContactModel.fromJson(address));
         _allcontactList.add(ContactModel.fromJson(address));
       });
     }else{
       _contactList=[];
       _allcontactList=[];
     }
     update();
  }
*/
  Future<bool> saveUserAddress(ContactModel contactModel)async{
    String userAddress=jsonEncode(contactModel.toJson());
    return await contactRepo.saveUserAddress(userAddress);
  }

/* void clearAddressList(){
     _contactList=[];
     _allcontactList=[];
     update();
  }*/

  String getUserAddressFromLocalStorage(){
    return contactRepo.getUserAddress();
  }

  void setAddAddressData(){
    _position=_pickPosition;
    _placemark=_pickPlacemark;
    _updateContactData=false;
    update();
  }

/*  Future<ResponseModel> getZone(String lat, String lang, bool markerLoad) async {
    late ResponseModel _responseModel;
    if (markerLoad) {
      _loading = true;
    } else {
      _isLoading = true;
    }
    update();
    Response response = await contactRepo.getZone(lat, lang);
    if(response.statusCode==200){
      _responseModel = ResponseModel(true, response.body['zone_id'].toString());
    }else{
      _inZone=false;
      _responseModel = ResponseModel(true, response.statusText!);
    }
    if(markerLoad){
      _loading=false;
    }else{
      _isLoading=false;
    }
    update();
    return _responseModel;
  }*/

}

