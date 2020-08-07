import 'package:flutter/material.dart';
import 'package:flutter_email_ui/components/custom_card.dart';
import 'package:flutter_email_ui/components/side_bar.dart';
import 'package:flutter_email_ui/theme/theme_config.dart';

class HomePageDesktop extends StatefulWidget {
  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.smokeWhite,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBar(),
          buildEmailList(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(child: Text('Mail here')),
            ),
          ),
        ],
      ),
    );
  }

  buildEmailList() {
    return Container(
      width: 350.0,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 25.0),
            Container(
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                      ),
                      Icon(
                        Icons.search,
                        size: 18.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 25.0),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return EmailItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: CustomCard(
        elevated: true,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(),
                title: Text(
                  'New Updates',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                subtitle: Text(
                  'JideGuru',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                trailing: Text(
                  '12 min ago',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Theme.of(context).textTheme.caption.color,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 50.0),
                child: Text(
                  'Pellentesque in ipsum id orci porta dapibus. Cras '
                      'ultricies ligula sed magna dictum porta. Vestibulum '
                      'ante ipsum primis in faucibus orci luctus et ultrices '
                      'posuere cubilia Curae; Donec velit neque, auctor sit '
                      'amet aliquam vel, ullamcorper sit amet ligula. Cras '
                      'ultricies ligula sed magna dictum porta. Lorem ipsum '
                      'dolor sit amet, consectetur adipiscing elit. ',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).textTheme.caption.color,
                  ),
                ),
              ),

              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
