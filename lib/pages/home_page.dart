import 'package:flutter/material.dart';
import 'package:well_sleep/pages/common_widget.dart';
import 'package:well_sleep/pages/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            image: AssetImage('images/home-bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Sleep Stories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            sliverList(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: const Text(
                  'Soothing bedtime stories to help you fall into a deep and natural sleep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            sliverList(
                child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 0,
              ),
              height: 130,
              child: ListView(
                // shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                children: const [
                  IconBoxUI(
                    icon: 'images/all.png',
                    title: 'All',
                    isSelected: true,
                  ),
                  IconBoxUI(
                    icon: 'images/love.png',
                    title: 'My',
                  ),
                  IconBoxUI(
                    icon: 'images/sad.png',
                    title: 'Anxious',
                  ),
                  IconBoxUI(
                    icon: 'images/sleep.png',
                    title: 'Sleep',
                  ),
                  IconBoxUI(
                    icon: 'images/child.png',
                    title: 'Kids',
                  ),
                ],
              ),
            )),
            sliverList(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(15),
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('images/ocean-moon-bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: secondryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.lock,
                            size: 15,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'The ocean moon',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Text(
                              'Non-stop 8- hour mixes of our most popular sleep audio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: textColor,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              elevation: 5,
                              primary: Colors.black.withOpacity(0.8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            child: Text('Start'.toUpperCase()),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              // mainAxisSpacing: 10,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('images/night-card.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Night Island',
                                  style: TextStyle(
                                    color: Color(0xffE6E7F2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '45 MIN SLEEP MUSIC',
                                  style: TextStyle(
                                    color: Color(0xff98A1BD),
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('images/night-card2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Night Island',
                                  style: TextStyle(
                                    color: Color(0xffE6E7F2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '45 MIN SLEEP MUSIC',
                                  style: TextStyle(
                                    color: Color(0xff98A1BD),
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('images/night-card2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Night Island',
                                  style: TextStyle(
                                    color: Color(0xffE6E7F2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '45 MIN SLEEP MUSIC',
                                  style: TextStyle(
                                    color: Color(0xff98A1BD),
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('images/night-card.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Night Island',
                                  style: TextStyle(
                                    color: Color(0xffE6E7F2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '45 MIN SLEEP MUSIC',
                                  style: TextStyle(
                                    color: Color(0xff98A1BD),
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        elevation: 10,
        selectedItemColor: secondryColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xff98A1BD),
        onTap: (selected) {},
      ),
    );
  }
}

class IconBoxUI extends StatelessWidget {
  const IconBoxUI({
    Key? key,
    required this.title,
    required this.icon,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: isSelected ? secondryColor : const Color(0xff586894),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  offset: const Offset(0, 5),
                  blurRadius: 6,
                ),
              ],
            ),
            child: ImageIcon(
              AssetImage(
                icon,
              ),
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor.withOpacity(0.9),
              fontSize: 15,
              // fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
