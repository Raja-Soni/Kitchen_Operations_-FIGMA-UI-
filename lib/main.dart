import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_operations/Pages/import_all_pages.dart';
import 'package:kitchen_operations/bloc/bottom_nav_bar/bottom_nav_bar_bloc_event_state.dart';
import 'package:kitchen_operations/bloc/running_orders/running_orders_bloc.dart';
import 'package:kitchen_operations/bloc/tab_bar/tab_bar_bloc_event_state.dart';
import 'package:kitchen_operations/customWidgets/import_all_custom_widgets.dart';

import 'bloc/cancel_running_order/cancel_running_order_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TabBarBloc()),
        BlocProvider(create: (context) => BottomNavBarBloc()),
        BlocProvider(create: (context) => CancelRunningOrderBloc()),
        BlocProvider(create: (context) => RunningOrderBloc()),
      ],
      child: MaterialApp(
        title: 'Kitchen Operations Application',
        theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.white)),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox.shrink(),
          leadingWidth: 0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Kitchen Operations",
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
            ),
          ),
          actionsPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 11),
          actions: [
            BlocBuilder<TabBarBloc, TabBarState>(
              builder: (context, tabBarState) {
                return tabBarState.currentTabPage is LiveOrdersPage ||
                        tabBarState.currentTabPage is ShelfLifeItemsPage
                    ? Container(
                        height: 40,
                        width: 131,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFEFEFF0),
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 15.99,
                                width: 16,
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  size: 16,
                                ),
                              ),
                              Text(
                                DateTime.now().toString().split(' ').first,
                                style: TextStyle(
                                  fontFamily: "PlusJakartaSans-Regular",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.0,
                                  letterSpacing: -1.0,
                                  color: Color(0xFF1D1929),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : SizedBox.shrink();
              },
            ),
          ],
        ),
        body: BlocBuilder<TabBarBloc, TabBarState>(
          builder: (context, tabBarState) {
            return Column(
              children: [
                // Custom Tab Bar
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    height: 40,
                    width: 992,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            context.read<TabBarBloc>().add(
                              CurrentTabChangedEvent(
                                currentTabPage: SchedulePage(),
                              ),
                            );
                          },
                          child: topBarTabItem(
                            tabName: "Schedule",
                            tapped: tabBarState.currentTabPage is SchedulePage,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            context.read<TabBarBloc>().add(
                              CurrentTabChangedEvent(
                                currentTabPage: LiveOrdersPage(),
                              ),
                            );
                          },
                          child: topBarTabItem(
                            tabName: "Live Orders",
                            tapped:
                                tabBarState.currentTabPage is LiveOrdersPage,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            context.read<TabBarBloc>().add(
                              CurrentTabChangedEvent(
                                currentTabPage: ShelfLifeItemsPage(),
                              ),
                            );
                          },
                          child: topBarTabItem(
                            tabName: "Shelf Life Items",
                            tapped:
                                tabBarState.currentTabPage
                                    is ShelfLifeItemsPage,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            context.read<TabBarBloc>().add(
                              CurrentTabChangedEvent(
                                currentTabPage: PreparedItemsPage(),
                              ),
                            );
                          },
                          child: topBarTabItem(
                            tabName: "Preprepared Items",
                            tapped:
                                tabBarState.currentTabPage is PreparedItemsPage,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            context.read<TabBarBloc>().add(
                              CurrentTabChangedEvent(
                                currentTabPage: LeftOverPage(),
                              ),
                            );
                          },
                          child: topBarTabItem(
                            tabName: "Leftover",
                            tapped: tabBarState.currentTabPage is LeftOverPage,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            context.read<TabBarBloc>().add(
                              CurrentTabChangedEvent(
                                currentTabPage: PurchaseConfirmationPage(),
                              ),
                            );
                          },
                          child: topBarTabItem(
                            tabName: "Purchase Confirmation",
                            tapped:
                                tabBarState.currentTabPage
                                    is PurchaseConfirmationPage,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                tabBarState.currentTabPage,
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, bnbState) {
            return SizedBox(
              height: 86,
              width: 428,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          context.read<BottomNavBarBloc>().add(
                            CurrentBNBTabChangedEvent(currentBNBPageIndex: 0),
                          );
                        },
                        child: rowBottomNavigationBarItem(
                          isTapped: bnbState.currentBNBPageIndex == 0,
                          labelName: "DashBoard",
                          icon: Icons.dashboard_customize,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 82,
                      child: GestureDetector(
                        onTap: () {
                          context.read<BottomNavBarBloc>().add(
                            CurrentBNBTabChangedEvent(currentBNBPageIndex: 1),
                          );
                        },
                        child: rowBottomNavigationBarItem(
                          isTapped: bnbState.currentBNBPageIndex == 1,
                          labelName: "Take Orders",
                          icon: Icons.takeout_dining_outlined,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 127,
                      child: GestureDetector(
                        onTap: () {
                          context.read<BottomNavBarBloc>().add(
                            CurrentBNBTabChangedEvent(currentBNBPageIndex: 2),
                          );
                        },
                        child: rowBottomNavigationBarItem(
                          isTapped: bnbState.currentBNBPageIndex == 2,
                          labelName: "Prepare Order",
                          icon: Icons.circle_outlined,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          context.read<BottomNavBarBloc>().add(
                            CurrentBNBTabChangedEvent(currentBNBPageIndex: 3),
                          );
                        },
                        child: rowBottomNavigationBarItem(
                          isTapped: bnbState.currentBNBPageIndex == 3,
                          labelName: "Kitchen Operation",
                          icon: Icons.kitchen,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
