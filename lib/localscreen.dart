import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LocalScreen extends StatelessWidget {
  LocalScreen({Key? key}) :super(key: key);

@override
_LocalScreen createState() => _LocalScreen();
  }

  class _LocalScreen extends State<LocalScreen> {
   
// Suggested code may be subject to a license. Learn more: ~LicenseLog:650320436.
   Future<Map<String, dynamic>> ambilData() {
   Map<String, dynamic> item = {};
   try{
var res = await http.get(Uri.parse("https://c7a9-114-10-17-8.ngrok-free.app/login"));

   if(res.statusCode == 200){
    item = Map<String, dynamic>.from(jsonDecode(res.body));
    print("Berhasil Mengambil Data");
    print(item);
   }else{
    print(res.statusCode);
   }
   }catch(e){
    print(e);
   }return item;
}
    @override
    Widget build(BuildContext context) {
      return Scaffold(
       body: SafeArea(
        child: Column(
        children: <Widget>[
          TextButton(onPressed: onPressed, child: child)
        ]
      );
    }
  }