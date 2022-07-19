// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '8.ColumnRowW.dart';
import '9.SingleChildScrollviewListviewW.dart';
import '10.MediaqueryRDW.dart';
import '11.ListTileW.dart';
import '12.StackPositionedFloatingW.dart';
import '13.ImageW.dart';
import '14.LiquidSwipeW.dart';
import '15.CardGridviewW.dart';
import '16.ExpandedWidgetW.dart';
import '17.PageViewW.dart';
import '18.HeroW.dart';
import '19.BottomNavBarW.dart';
import '20.TabBarW.dart';
import '21.SliverAppBarW.dart';
import '23.GradientColorW.dart';
import '24.ProviderSetStateW.dart';
import '25.AsyncSyncW.dart';
import '26.ImagePickerLoadImageW.dart';
import '27.ModalW.dart';
import '28.AlertDialogW.dart';
import '29.CurvedNavBarW.dart';
import '30.CustomDialogW.dart';
import '31.StreamFutureW.dart';
import '32.SnackBarW.dart';
import '33.ToastW.dart';
import '34.SliderW.dart';
import '35.RichTextW.dart';
import '36.DropdownButtonW.dart';
import '37.DismissableW.dart';
import '38.CheckBoxW.dart';
import '39.AnimatedCrossfadeW.dart';
import '40.SwitchW.dart';
import '41.AnimatedContainerW.dart';
import '42.ExpansionTileW.dart';
import '43.TooltipW.dart';
import '44.BackdropFilterW.dart';
import '45.DateTimePickerW.dart';
import '46.TransformW.dart';
import '47.FetchingJsonDataW.dart';
import '49.DataTableW.dart';
import '5.AppbarTextW.dart';
import '50.NavRailW.dart';
import '51.PassDataW.dart';
import '52.AnimatedScreenFlareW.dart';
import '53.FirebaseCarouselSliderW.dart';
import '54.OnboardingScreenW.dart';
import '55.SharedPreferencesW.dart';
import '56. ChangeAppIconAppNameW.dart';
import '57.FormValidationW.dart';
import '58.DrawerW.dart';
import '59.AdmobW.dart';
import '6.SafeAreaW.dart';
import '60.UrlLauncherW.dart';
import '61.GenerateSingedApk.dart';
import '62.WebViewW.dart';
import '63.ResponsiveUiW.dart';
import '64.NavigationRoutesW.dart';
import '65.ConnectivityCheck.dart';
import '67.LocalizationW.dart';
import '68.PushNotificationW.dart';
import '69.PaymentGatewayStripe.dart';
import '7.ContainerW.dart';
import '70.AnimatedCustomDrawer.dart';
import '71.CloseAppAlertDialogW.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AppbarTextW()));
                      },
                      child: const Text(
                        'App Bar & Text',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SafeAreaW()));
                      },
                      child: const Text(
                        'Safe Area',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ContainerW()));
                      },
                      child: const Text(
                        'Container',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ColumnRowW()));
                      },
                      child: const Text(
                        'Column & Row',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleChildScrollviewListviewW()));
                      },
                      child: const Text(
                        'Scrollview & Listview',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MediaqueryRDW()));
                      },
                      child: const Text(
                        'Responsive Screen',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ListTileW()));
                      },
                      child: const Text(
                        'List Tile',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const StackPositionedFloatingW()));
                      },
                      child: const Text(
                        'Stack, Positioned, Floating',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageW()));
                      },
                      child: const Text(
                        'Image',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LiquidSwipeW()));
                      },
                      child: const Text(
                        'Liquid Swipe',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CardGridviewW()));
                      },
                      child: const Text(
                        'Card & Gridview',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpandedWidgetW()));
                      },
                      child: const Text(
                        'Expanded Widget',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PageViewW()));
                      },
                      child: const Text(
                        'Page View',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HeroW()));
                      },
                      child: const Text(
                        'Hero',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBarW()));
                      },
                      child: const Text(
                        'Bottom Nav Bar',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TabBarW()));
                      },
                      child: const Text(
                        'Tab Bar',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SliverAppBarW()));
                      },
                      child: const Text(
                        'Sliver App Bar',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const GradientColorW()));
                      },
                      child: const Text(
                        'Gradient Color',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProviderSetStateW()));
                      },
                      child: const Text(
                        'Provider & Set State',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AsyncSyncW()));
                      },
                      child: const Text(
                        'Async vs Sync',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ImagePickerLoadImageW()));
                      },
                      child: const Text(
                        'Image Picker & Load',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ModalW()));
                      },
                      child: const Text(
                        'Modal Bottom Sheet',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AlertDialogW()));
                      },
                      child: const Text(
                        'Alert Dialog',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CurvedNavBarW()));
                      },
                      child: const Text(
                        'Curved Nav Bar',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomDialogW()));
                      },
                      child: const Text(
                        'Custom Dialog',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const StreamFutureW()));
                      },
                      child: const Text(
                        'Stream vs Future',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SnackBarW()));
                      },
                      child: const Text(
                        'Snack Bar',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ToastW()));
                      },
                      child: const Text(
                        'Toast',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SliderW()));
                      },
                      child: const Text(
                        'Slider',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const RichTextW()));
                      },
                      child: const Text(
                        'Rich Text',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DropdownButtonW()));
                      },
                      child: const Text(
                        'Dropdown Button',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DismissableW()));
                      },
                      child: const Text(
                        'Dismissable',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckBoxW()));
                      },
                      child: const Text(
                        'Check Box',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedCrossfadeW()));
                      },
                      child: const Text(
                        'Animated Crossfade',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SwitchW()));
                      },
                      child: const Text(
                        'Switch',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedContainerW()));
                      },
                      child: const Text(
                        'Animated Container',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpansionTileW()));
                      },
                      child: const Text(
                        'Expansion Tile',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TooltipW()));
                      },
                      child: const Text(
                        'Tooltip',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BackdropFilterW()));
                      },
                      child: const Text(
                        'Backdrop Filter',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DateTimePickerW()));
                      },
                      child: const Text(
                        'Date Time Picker',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TransformW()));
                      },
                      child: const Text(
                        'Transform',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FetchingJsonDataW()));
                      },
                      child: const Text(
                        'Fetching Json Data',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DataTableW()));
                      },
                      child: const Text(
                        'Data Table',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NavRailW()));
                      },
                      child: const Text(
                        'Nav Rail',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PassDataW()));
                      },
                      child: const Text(
                        'Pass Data',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedScreenFlareW()));
                      },
                      child: const Text(
                        'Animated Screen Flare',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FirebaseCarouselSliderW()));
                      },
                      child: const Text(
                        'Firebase Carousel Slider',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OnboardingScreenW()));
                      },
                      child: const Text(
                        'Onboarding Screen',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SharedPreferencesW()));
                      },
                      child: const Text(
                        'Shared Preferences',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangeAppIconAppNameW()));
                      },
                      child: const Text(
                        'Change Icon & Name',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FormValidationW()));
                      },
                      child: const Text(
                        'Form Validation',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerW()));
                      },
                      child: const Text(
                        'Drawer',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AdmobW()));
                      },
                      child: const Text(
                        'Admob',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const UrlLauncherW()));
                      },
                      child: const Text(
                        'Url Launcher',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const GenerateSingedApk()));
                      },
                      child: const Text(
                        'Generate Singed Apk',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WebViewW()));
                      },
                      child: const Text(
                        'Web View',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ResponsiveUiW()));
                      },
                      child: const Text(
                        'Responsive UI',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationRoutesW()));
                      },
                      child: const Text(
                        'Navigation Routes',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ConnectivityCheck()));
                      },
                      child: const Text(
                        'Connectivity Check',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LocalizationW()));
                      },
                      child: const Text(
                        'Localization',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PushNotificationW()));
                      },
                      child: const Text(
                        'Push Notification',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentGatewayStripe()));
                      },
                      child: const Text(
                        'Stripe',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedCustomDrawer()));
                      },
                      child: const Text(
                        'Animated Custom Drawer',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(width: 10), // give it width
                    FlatButton(
                      minWidth: 150.0,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CloseAppAlertDialogW()));
                      },
                      child: const Text(
                        'Close App Alert',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                const Text('',),
                const Text('',),
                const Text('',),
                const Text('',),
                const Text('',),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
