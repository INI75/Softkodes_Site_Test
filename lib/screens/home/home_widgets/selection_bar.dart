part of '../home_base.dart';

class SelectionBar extends StatelessWidget {
  const SelectionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          heightSpace(context.heightPercent(.02) + 40),
          Text('My Products', style: Fonts.header1),
          heightSpace(30),
          ResponsiveVisibility(
            hiddenWhen: const [Condition.smallerThan(breakpoint: 1000)],
            child: SizedBox(
              width: 1188,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BarButton(title: 'Converse Shoes', function: () {}),
                    BarButton(title: 'Converse Shoes', function: () {}),
                    BarButton(title: 'Converse Shoes', function: () {}),
                    BarButton(title: 'Converse Shoes', function: () {}),
                    BarButton(title: 'Converse Shoes', function: () {}),
                    BarButton(title: 'Converse Shoes', function: () {}),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
