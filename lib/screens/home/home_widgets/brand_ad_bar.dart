part of '../home_base.dart';

class BrandAdBar extends StatelessWidget {
  const BrandAdBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 31),
      width: 1000,
      height: 124,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(41),
            child: Image.asset(AppImages.shoe1),
          ),
          widthSpace(context.widthPercent(0.02)),
          Text(
            'Adidda Sport wears',
            style: Fonts.titleText,
          ),
          widthSpace(context.widthPercent(0.1)),
          SizedBox(
            child: Row(
              children: [
                const ImageBox(image: AppImages.logo),
                const ImageBox(image: AppImages.logo),
                const ImageBox(image: AppImages.logo),
                const ImageBox(image: AppImages.logo),
                const ImageBox(image: AppImages.logo),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 9.5),
                  height: 65,
                  width: 65,
                  child: Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      AppImages.logo,
                      fit: BoxFit.contain,
                    ),
                    Opacity(
                      opacity: .7,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Text(
                      '+10',
                      style: Fonts.titleText.copyWith(
                        color: AppColors.white,
                      ),
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
