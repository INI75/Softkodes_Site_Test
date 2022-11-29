part of '../home_base.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: 1440,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 71,
                  color: AppColors.dullPink,
                ),
                Container(
                  width: double.infinity,
                  height: 218,  //d
                  color: AppColors.white,
                  child: const SelectionBar(),
                ),
                Container(
                  color: AppColors.dullWhite,
                  child: const BodyContent(),
                )
              ],
            ),
          const  ResponsiveVisibility(
                hiddenWhen: [Condition.largerThan(breakpoint: 800)],
                child: Positioned(top: 40, child: SearchBarPhone())),
           const ResponsiveVisibility(
                hiddenWhen: [Condition.smallerThan(breakpoint: 800)],
                child: Positioned(top: 40, child:   SearchBar()))
          ],
        ),
      ),
    ));
  }
}
