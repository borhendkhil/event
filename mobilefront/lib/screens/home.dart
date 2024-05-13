import 'package:far7etna/components/additionCard.dart';
import 'package:flutter/material.dart';
import 'package:far7etna/components/components.dart';

//import '../components/navModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final homeNavKey = GlobalKey<NavigatorState>();
  // final searchNavKey = GlobalKey<NavigatorState>();
  // final notificationNavKey = GlobalKey<NavigatorState>();
  // final profileNavKey = GlobalKey<NavigatorState>();
  // int selectedTab = 0;
  // List<NavModel> items = [];

  // @override
  // void initState() {
  //   super.initState();
  //   items = [
  //     NavModel(page: const TabPage(tab: 1), navKey: homeNavKey),
  //     NavModel(page: const TabPage(tab: 2), navKey: searchNavKey),
  //     NavModel(page: const TabPage(tab: 3), navKey: notificationNavKey),
  //     NavModel(page: const TabPage(tab: 4), navKey: profileNavKey),
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      ]),
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        //remove CONST modifier later when adding DB
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/images/me.jpg', fit: BoxFit.fill),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Mohammed",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "Gabes,Tunisia",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_active_outlined,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Find & Plan the best event for you!',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SearchField(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Additions',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xFF8F00FF), fontFamily: 'Montserrat'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 130.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                          child: Image(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/Frame.png')));
                      // AdditionCard(
                      //     addition: NewAddition.additions[index]);
                    },
                  ),
                ),
              ),
              //RECENT ADDITIONS CARD HERE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event Categories',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xFF8F00FF), fontFamily: 'Montserrat'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 80,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('it works'),
                              ),
                            );
                          },
                          child: Container(
                            width: 56,
                            height: 56,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://images.unsplash.com/photo-1515934751635-c81c6bc9a2d8',
                                  )),
                              //color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        const Text(
                          'Wedding',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://plus.unsplash.com/premium_photo-1681400690940-8eff232a8f7d',
                                )),
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        const Text(
                          'Hackathon',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1475721027785-f74eccf877e2',
                                )),
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        const Text(
                          'Conference',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1470225620780-dba8ba36b745',
                                )),
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        const Text(
                          'Party',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //CATEGORY CONTAINER HERE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xFF8F00FF), fontFamily: 'Montserrat'),
                  ),
                ],
              ),
              //TRENDING CARD HERE
            ],
          ),
        ),
      ),
    );
  }
}
// class TabPage extends StatelessWidget {
//   final int tab;
//   const TabPage({Key? key, required this.tab}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [

//           ],
//         ),
//       ),
      
//     );
//   }
// }

