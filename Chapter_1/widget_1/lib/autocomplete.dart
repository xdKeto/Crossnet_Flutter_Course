import 'package:flutter/material.dart';

class AutocompleteText extends StatelessWidget {
  const AutocompleteText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(),
          child: LayoutBuilder(builder: (context, constraints) {
            List<String> items = <String>[
              'Angela',
              'Ardy',
              'Fizfat',
              'Dita',
              'Rimuru',
              'Deny',
              'John',
              'Roy',
            ];

            return Autocomplete<String>(
              fieldViewBuilder: (context, textEditingController, focusNode,
                  onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onSubmitted: (text) => onFieldSubmitted(),
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: "Let's start with some characters",
                  ),
                );
              },
              initialValue: const TextEditingValue(
                text: "Roy",
              ),
              onSelected: (String value) {
                //selected value
              },
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return items.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
            );
          }),
        ),
      ],
    );
  }
}
