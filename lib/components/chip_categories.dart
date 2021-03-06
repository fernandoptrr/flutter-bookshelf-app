import 'package:bookshelf_app/theme.dart';
import 'package:flutter/material.dart';

class ChipCategory extends StatefulWidget {
  const ChipCategory({Key? key}) : super(key: key);

  @override
  State<ChipCategory> createState() => _ChipCategoryState();
}

class _ChipCategoryState extends State<ChipCategory> {
  static final List<String> _categories = [
    'All Books',
    'Fiction',
    'Non Fiction',
    'Self Help',
    'Documentary',
    'Mistery',
    'Romance',
    'Action',
    'Comedy'
  ];

  static final List<String> _chipColor = [
    "#F2E5FF",
    "#FFE5E5",
    "#E5FFE5",
    "#FFF2E5",
    "#E5FFFF",
    "#E5E5FF",
    "#E5F2FF",
    "#FFE5FF",
    "#FFE5F2"
  ];

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  int? _value = 0;
  String _selectedCategory = "Fiction";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Wrap(
            spacing: 4,
            children: List<Widget>.generate(
              9,
              (int index) {
                return ChoiceChip(
                  label: Text(
                    _categories[index],
                  ),
                  selected: _value == index,
                  selectedColor: BookShelfTheme.ink02,
                  labelStyle: Theme.of(context).textTheme.caption!.copyWith(
                        color: _value == index
                            ? Colors.white
                            : BookShelfTheme.ink01,
                      ),
                  backgroundColor: hexToColor(_chipColor[index]),
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : null;
                      _selectedCategory = _categories[index];
                    });
                  },
                );
              },
            ).toList(),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
