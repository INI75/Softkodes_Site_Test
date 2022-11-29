part of '../home_base.dart';

class SearchBar extends StatefulWidget {
 const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String dropdownvalue = 'category';

  

  var items = [
    'category',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        width: 510,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 73,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search_outlined),
            widthSpace(10),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              height: 100,
              width: 290,
              alignment: Alignment.topCenter,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for a product',
                ),
              ),
            ),
            const VerticalDivider(
              thickness: 1,
              color: AppColors.black,
            ),
            DropdownButton(
              underline: Container(),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}


///////////////////////////

class SearchBarPhone extends StatefulWidget {
 const SearchBarPhone({super.key});

  @override
  State<SearchBarPhone> createState() => _SearchBarPhoneState();
}

class _SearchBarPhoneState extends State<SearchBarPhone> {
  String dropdownvalue = 'category';

  // should be from provider
  
  var items = [
    'category',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        width: 368,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 73,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search_outlined),
            widthSpace(10),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              height: 100,
              width: 190,
              alignment: Alignment.topCenter,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for a product',
                ),
              ),
            ),
            const VerticalDivider(
              thickness: 1,
              color: AppColors.black,
            ),
            DropdownButton(
              underline: Container(),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

