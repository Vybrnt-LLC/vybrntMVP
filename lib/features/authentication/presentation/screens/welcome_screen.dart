import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:auto_route/auto_route.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0),
            child: Image(
              height: 300,
              image: AssetImage('assets/logos/VYBrntfin-07.png'),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0),
            child: Image(
              height: 50,
              image: AssetImage('assets/motto/VYBtypelockup-14.png'),
            ),
          ),
          const SizedBox(height: 8),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 300, height: 50),
            child: ElevatedButton(
                onPressed: () => context.navigator.push(route.Routes.intro),
                child: Text('Sign Up',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold)),
              TextButton(
                  onPressed: () =>
                      context.navigator.push(route.Routes.signInPage),
                  child: Text('Login',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: const Color(0xFFA4528A),
                          fontWeight: FontWeight.bold)))
            ],
          )
        ],
      ),
    );
  }
}
