import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/transaction_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/transaction_item.dart';

class TransactionItemList extends StatelessWidget {
  const TransactionItemList({super.key});
  static const List < TransactionItemModel> itemsmodel = [
    TransactionItemModel(title: 'Cash Withdrawal', subtitle: '13 Apr, 2022', price: r'$20,129'),
    TransactionItemModel(title: 'Landing Page project', subtitle: '13 Apr, 2022 at 3:30 PM', price: r'$2,000'),
    TransactionItemModel(title: 'Juni Mobile App project', subtitle: '13 Apr, 2022 at 3:30 PM', price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemsmodel.asMap().entries.map((e) => Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: TransactionItem(transactionItemModel: e.value, active: e.key == 0,),
      )).toList(),
    );
  }
}