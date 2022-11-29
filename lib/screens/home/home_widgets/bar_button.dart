part of '../home_base.dart';

class BarButton extends StatelessWidget {
  const BarButton({super.key, required this.title, required this.function});

  final String title;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: function,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          alignment: Alignment.center,
          height: 51,
          width: 178,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.black, width: 1)),
          child: Text(
            title,
            style: Fonts.bodyText,
          ),
        ),
      ),
    );
  }
}
