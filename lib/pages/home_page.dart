import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_ui/utils/my_button.dart';
import 'package:flutter_wallet_app_ui/utils/my_card.dart';
import 'package:flutter_wallet_app_ui/utils/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                // appbar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "My",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " Cards",
                            style: TextStyle(fontSize: 28),
                          ),
                        ],
                      ),

                      // plus button
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.grey[400], shape: BoxShape.circle),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // cards
                Container(
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: [
                      MyCard(
                        balance: 708834.78,
                        cardNumber: 6352452,
                        expiryMonth: 12,
                        expiryYear: 26,
                        color: Colors.deepPurple,
                      ),
                      MyCard(
                        balance: 425342.00,
                        cardNumber: 0109242,
                        expiryMonth: 02,
                        expiryYear: 23,
                        color: Colors.blue[300],
                      ),
                      MyCard(
                        balance: 1000224.65,
                        cardNumber: 46234623,
                        expiryMonth: 07,
                        expiryYear: 25,
                        color: Colors.green[300],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.grey.shade800,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // 3 buttons - send, bill, pay
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // send button
                      MyButton(
                          iconImagePath: 'lib/icons/send-money.png',
                          buttonText: 'Send'),
                      // pay button
                      MyButton(
                          iconImagePath: 'lib/icons/credit-card.png',
                          buttonText: 'Pay'),
                      // bills button
                      MyButton(
                          iconImagePath: 'lib/icons/bill.png',
                          buttonText: 'Bill'),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                // column -> stats + transactions
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      // statistics
                      MyListTile(
                          iconImagePath: 'lib/icons/statistics.png',
                          tileTitle: 'Statistics',
                          tileSubTitle: 'Payments and Income'),
                      // transaction
                      MyListTile(
                          iconImagePath: 'lib/icons/transaction.png',
                          tileTitle: 'Transactions',
                          tileSubTitle: 'Transaction History'),
                      MyListTile(
                          iconImagePath: 'lib/icons/transaction.png',
                          tileTitle: 'Transactions',
                          tileSubTitle: 'Transaction History'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
