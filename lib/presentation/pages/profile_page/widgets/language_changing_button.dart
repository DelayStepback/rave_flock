import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/common/constants/enums/locale_enum.dart';
import 'package:rave_flock/domain/repositories/config_repository.dart';
import 'package:rave_flock/main.dart';

class LanguageChangingButton extends StatefulWidget {
  const LanguageChangingButton({super.key});

  @override
  State<LanguageChangingButton> createState() => _LanguageChangingButtonState();
}

class _LanguageChangingButtonState extends State<LanguageChangingButton> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ...List.generate(
                  LocaleEnum.values.length,
                  (index) {
                    bool isSelectedLocale =
                        ConfigInherited.of(context).configEntity?.locale == LocaleEnum.values[index];
                    return GestureDetector(
                      onTap: () {
                        GetIt.I<ConfigRepository>().set(
                          ConfigInherited.of(context).configEntity!.copyWith(locale: LocaleEnum.values[index]),
                        );
                        setState(() {
                          isOpened = false;
                        });
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          // color: context.myColors.darkGreen,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: isSelectedLocale ? Colors.green : Colors.grey,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(LocaleEnum.values[index].name),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
