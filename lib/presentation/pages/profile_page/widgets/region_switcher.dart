import 'package:flutter/material.dart';
import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';
import 'package:rave_flock/main.dart';
import 'package:rave_flock/presentation/dialogs/city_set_dialog.dart';

class RegionSwitcher extends StatelessWidget {
  final String regionName;
  final Function(CityEntity city) changeRegionCallback;
  const RegionSwitcher({super.key, required this.regionName, required this.changeRegionCallback});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.zero,
        splashFactory: NoSplash.splashFactory,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (contextInner) => CitySetDialog(
            cities: CitiesInherited.of(context).cities,
            regionName: regionName,
            onSelectCityCallback: (CityEntity city) {
              
              changeRegionCallback(city);
            },
          ),
        );
      },
      child: Text(
        regionName,
        maxLines: 1,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
