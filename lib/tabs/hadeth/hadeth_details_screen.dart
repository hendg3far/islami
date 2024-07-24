import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/hadeth/hadeth_item_details.dart';
import 'package:islami_app/tabs/hadeth/hadeth_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.06,
            vertical: MediaQuery.of(context).size.height * 0.05,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Divider(
                thickness: 1,
                color: Theme.of(context).primaryColor,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: args.content.length,
                    itemBuilder: (_, index) {
                      return HadethItemDetails(content: args.content[index]);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

