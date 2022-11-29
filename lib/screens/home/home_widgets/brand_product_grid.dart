part of '../home_base.dart';

class BrandProductGrid extends StatelessWidget {
  const BrandProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider =
        Provider.of<ProductCardProvider>(context, listen: true);

    return Column(
      children: [
        ResponsiveVisibility(
          hiddenWhen: const[Condition.smallerThan(breakpoint: 800)],
          child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 40),
            width: 1000,
            child: Wrap(
              children: productProvider.products
                  .map(
                    (e) => ProductCardTile(
                      title: e.title,
                      image: e.image,
                      price: e.price,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        ResponsiveVisibility(
          hiddenWhen:const [Condition.largerThan(breakpoint: 800)],
          child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 40),
            child: Wrap(
              children: productProvider.products
                  .map(
                    (e) => ProductCardPhoneTile(
                      title: e.title,
                      image: e.image,
                      price: e.price,
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}



// productProvider.products
//               .map(
//                 (e) => ProductCardTile(
//                   title: e.title,
//                   image: e.image,
//                   price: e.price,
//                 ),
//               )
//               .toList(),



//////////////////////
///
///child: LayoutBuilder(
      //   builder: (context, constrant) {
      //     return GridView.builder(
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 4,
      //           crossAxisSpacing: 24,
      //           mainAxisSpacing: 25.5,
      //           childAspectRatio: .82),
      //       // childAspectRatio: constrant.maxWidth > 700 ? 4 : 1),
      //       itemCount: productProvider.productList.length,
      //       itemBuilder: (context, index) {
      //         return ProductCardTile(
      //             title: productProvider.products[index].title,
      //             image: productProvider.products[index].image,
      //             price: productProvider.products[index].price);
      //       },
      //     );
      //   },
      // ),