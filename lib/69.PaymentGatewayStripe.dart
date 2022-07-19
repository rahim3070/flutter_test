import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '69.stripe_payment_controller.dart';
import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey = 'pk_test_UGafZtSm3QqHHms1eyFQNEnt';
  runApp(const PaymentGatewayStripe());
}

class PaymentGatewayStripe extends StatelessWidget {
  const PaymentGatewayStripe({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var obj = StripePaymentController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Payment Gateway Stripe"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () => obj.makePayment(

              amount: '5',
              currency: 'USD'
          ),
          child: const Text("Make a Payment"),
        )),
      ),
    );
  }
}
