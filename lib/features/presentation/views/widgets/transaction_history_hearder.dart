
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Transaction History', style: AppStyle.semiBold20),
        const Spacer(),
        TextButton(
          onPressed: (){
            print(MediaQuery.sizeOf(context).width) ;
          },
          child : Text ('see all' , style : AppStyle.medium16.copyWith(color: kBlueColor),),)
      ],
    );
  }
}
