// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:kemahasiswaan/Constant/app_text.dart';
import 'package:kemahasiswaan/Dashboard/dashboard_proposal.dart';
import 'package:kartal/kartal.dart';

class DashboardProposal extends StatelessWidget {
  const DashboardProposal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(AppText.login),
          ],
        ),
      ),
    );
  }
}
