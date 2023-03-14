import 'package:apps_in_flutter/app_pages/json_pages/json_in_list.dart';
import 'package:flutter/material.dart';

class JsonHomePage extends StatefulWidget {
  const JsonHomePage({Key? key}) : super(key: key);

  @override
  _JsonHomePageState createState() => _JsonHomePageState();
}

class _JsonHomePageState extends State<JsonHomePage> {
  late PersonData personData;
  late Future<PersonData> getData;
  int index = 0;
  final int _index = 0;

  @override
  void initState() {
    super.initState();
    getData = getPersonData();
    // debugPrint('${getData}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<PersonData>(
            future: getData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                debugPrint('Malumot keldi');

                return ListView.builder(
                  itemCount: 2,
                  itemBuilder: ((context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Name: ${snapshot.data?.firstName}'),
                          Text('Last Name: ${snapshot.data?.lastName}'),
                          Text('Gender: ${snapshot.data?.gender.toLowerCase()}'),
                          Text('Age: ${snapshot.data?.age}'),
                          // Text('Address: ${personData?.address}'),
                          // Text(
                          //     'Phone Type: ${snapshot.data?.phoneNumber[index].type}'),
                          // Text(
                          //     'Phone Numbers: ${snapshot.data?.phoneNumber[_index].number}'),
                        ],
                      )),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
                debugPrint('Malunot kelmadi');
              }

              return const Center(child: CircularProgressIndicator());
            }));
  }
}
