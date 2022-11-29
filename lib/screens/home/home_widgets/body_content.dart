part of '../home_base.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, color: AppColors.dullWhite,
    
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: const [
          ResponsiveVisibility(
              hiddenWhen: [Condition.smallerThan(breakpoint: 1000)],
              child: BrandAdBar()),
          BrandProductGrid(),
        ],
      ),
    );
  }
}
