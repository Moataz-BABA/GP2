import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: First(),
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          dividerColor: Color(0xFF001361)
        )
    );
  }
}
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF001361),
      appBar: AppBar(
        backgroundColor: const Color(0xFF001361),
        title: const Text("InvestGateway",style: TextStyle(color: Colors.white)),
        centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF001361),
      child: ListView(
      padding: const EdgeInsets.all(20),
        children: <Widget>[
         DrawerHeader(
            decoration: BoxDecoration(
              color:const Color(0xFF001361),
                border: Border(bottom: Divider.createBorderSide(context,color:Color(0xFF001361)))
            ),
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(height: 10), // Provides spacing between the photo and the name
                  Text(
                    'User Name', // Replace with the actual user name
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person,color: Colors.white),
            title: const Text('Profile',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home,color: Colors.white),
            title: const Text('Home',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings,color: Colors.white),
            title: const Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout,color: Colors.white),
            title: const Text('Logout',style: TextStyle(color: Colors.white,fontSize: 20)),
            onTap: () {
              //AlertDialog
              Navigator.pop(context);
            },
        ),
      ],
    ),
    ),
      body:SingleChildScrollView(
    child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,right: 10),
                    child:Image.network("https://img.ws.mms.shopee.com.my/74a2275a5b1f10b8d85fad01e5f22ac7"),
                    width: 150,
                    height: 150,
                 ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,right: 10),
                    child:Image.network("https://images-platform.99static.com//w53s92vikG_eSYo1G40fWdqTO60=/388x15:2909x2535/fit-in/590x590/projects-files/176/17617/1761756/1aa73204-dbf6-40f8-adb5-df2b9119be87.png"),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,right: 10),
                    child:Image.network("https://th.bing.com/th/id/OIP.mlKNoT2hEIhKSvA-UuxbsAHaHa?rs=1&pid=ImgDetMain"),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,right: 10),
                    child:Image.network("https://th.bing.com/th/id/OIP.pr2yK7CWmSuKnaHrMf2uRwHaHa?rs=1&pid=ImgDetMain"),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,right: 10),
                    child:Image.network("https://foothunk.in/wp-content/uploads/2023/01/vecteezy_puma-logo-white-symbol-with-name-clothes-design-icon_10994278.jpg"),
                    width: 150,
                    height: 150,
                  ),
               ]
            ),
           ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'What are you looking for?',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(30),
                      width: 150,
                      height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFF001361),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(child:
                      Row(
                        children: [
                          Icon(Icons.restaurant,color: Colors.white,),
                          Text(" Resturantes",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                        ]
                      )
                    )
                  ),
                    onTap: () {},
                  ),
                InkWell(
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 150,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xFF001361),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(child:
                      Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Icon(Icons.sports,color: Colors.white),
                            ),
                            Text(" Sport",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                          ]
                      )
                      )
                  ),
                  onTap: () {},
                ),
              ]
            ),
            Row(
                children: [
                  InkWell(
                    child: Container(
                        margin: const EdgeInsets.all(30),
                        width: 150,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF001361),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child:  Center(child:
                        Row(
                            children: [
                              Container(
                                margin:EdgeInsets.only(left: 20),
                                child: Icon(Icons.school,color: Colors.white),
                              ),
                              Text("  School",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                            ]
                        )
                        )
                    ),
                    onTap: () {},
                  ),
                  InkWell(

                    child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 150,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF001361),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child:
                        Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Icon(Icons.home,color: Colors.white),
                              ),
                              Text(" Retail",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                            ]
                        )
                        )
                    ),
                    onTap: () {},
                  ),
                ]
               ),
            Row(
                children: [
                  InkWell(
                    child: Container(
                        margin: const EdgeInsets.all(30),
                        width: 150,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF001361),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child:  Center(child:
                        Row(
                            children: [
                              Container(
                                margin :const EdgeInsets.only(left:30),
                                child: Icon(Icons.store_sharp,color: Colors.white,),
                              ),
                              Text(" Stores",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                            ]
                        )
                        )
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 150,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF001361),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child:
                        Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Icon(Icons.local_hospital_sharp,color: Colors.white),
                              ),
                              Text(" Health",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                            ]
                        )
                        )
                    ),
                    onTap: () {},
                  ),
                ]
            ),
            Row(
                children: [
                  InkWell(
                    child: Container(
                        margin: const EdgeInsets.all(30),
                        width: 150,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF001361),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child:
                        Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Icon(Icons.bed,color: Colors.white,),
                              ),
                              Text(" Hotel",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                            ]
                        )
                        )
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 150,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFF001361),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child:
                        Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Icon(Icons.precision_manufacturing,color: Colors.white),
                              ),
                              Text("Manufacture",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
                            ]
                        )
                        )
                    ),
                    onTap: () {},
                  ),
                ]
            ),
              ],
            )
        ),
      ),
      );
  }
}
