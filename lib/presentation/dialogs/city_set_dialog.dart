import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';

class CitySetDialog extends StatelessWidget {
  const CitySetDialog({
    super.key,
    required this.regionName,
    required this.cities,
    required this.onSelectCityCallback,
  });
  final List<CityEntity> cities;
  final String regionName;
  final Function(CityEntity city) onSelectCityCallback;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Container(
        height: 400,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(context.S.change_region,
            ),
            Text(
              regionName,
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SearchTextFieldAndResultWidget(
                cities: cities,
                onSelectCityCallback: (city) {
                  onSelectCityCallback(city);
                  context.pop();
                },
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class SearchTextFieldAndResultWidget extends StatefulWidget {
  const SearchTextFieldAndResultWidget({super.key, required this.cities, required this.onSelectCityCallback});
  final void Function(CityEntity) onSelectCityCallback;

  final List<CityEntity> cities;

  @override
  State<SearchTextFieldAndResultWidget> createState() => _SearchTextFieldAndResultWidgetState();
}

class _SearchTextFieldAndResultWidgetState extends State<SearchTextFieldAndResultWidget> {
  final TextEditingController _searchController = TextEditingController();
  List<CityEntity> searchedCities = [];
  @override
  void initState() {
    super.initState();
    _searchController.addListener(_search);
  }

  @override
  void dispose() {
    _searchController.removeListener(_search);
    _searchController.dispose();
    super.dispose();
  }

  void _search() async {
    String searchValue = _searchController.text;
    if (searchValue.isEmpty) {
      setState(() {
        searchedCities = [];
      });
      return;
    }

    // TODO: inherited cities

    setState(
      () {
        searchedCities =
            widget.cities.where((element) => element.name.toLowerCase().startsWith(searchValue.toLowerCase())).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              filled: false,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ),
        if (_searchController.text.isNotEmpty) ...[
          const SizedBox(height: 12),
          const Divider(
            indent: 12,
            endIndent: 12,
          ),
        ],
        ListView.builder(
          shrinkWrap: true,
          itemCount: searchedCities.length >= 3 ? 3 : searchedCities.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                widget.onSelectCityCallback(searchedCities[index]);
                _searchController.text = '${searchedCities[index].name}, ${searchedCities[index].country}';
              },
              child: ListTile(
                title: Text(
                  '${searchedCities[index].name}, ${searchedCities[index].country} ',
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
