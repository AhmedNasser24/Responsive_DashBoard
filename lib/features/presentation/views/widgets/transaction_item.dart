import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/transaction_item_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionItemModel,
    required this.active,
  });
  final TransactionItemModel transactionItemModel;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: kBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: ListTile(
        title: Text(transactionItemModel.title, style: AppStyle.semiBold16),
        subtitle: Text(transactionItemModel.subtitle,
            style: AppStyle.regular16.copyWith(color: kGrayColor)),
        trailing: Text(transactionItemModel.price,
            style: active
                ? AppStyle.semiBold16.copyWith(color: Colors.redAccent)
                : AppStyle.semiBold16.copyWith(color: Colors.green)),
      ),
    );
  }
}
