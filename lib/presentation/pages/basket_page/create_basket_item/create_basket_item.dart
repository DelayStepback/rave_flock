import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/common/widget/text_input.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/services/auth_service.dart';

class CreateOrUpdateBasketItem extends StatelessWidget {
  CreateOrUpdateBasketItem({super.key, required this.meetId});

  final int meetId;

  final _titleController = TextEditingController();

  final _costController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.S.create_new_basket_item),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextInput(
              label: context.S.title,
              controller: _titleController,
              maxLine: 1,
            ),
            TextInput(
              label: context.S.price,
              controller: _costController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.S.please_enter_a_number;
                }
                if (double.tryParse(value) == null) {
                  return context.S.please_enter_a_valid_number;
                }
                return null; // Validation passed
              },
              maxLine: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  GetIt.I<MeetDataBloc>().add(MeetDataEvent.addBasketItem(BasketItemModel(
                      cost: _costController.text,
                      title: _titleController.text,
                      meetId: meetId,
                      createdByUserId: AuthService.getUserId() ?? '')));
                  context.pop();
                },
                child: Text(context.S.create_new_basket_item)),
          ],
        ),
      ),
    );
  }
}
