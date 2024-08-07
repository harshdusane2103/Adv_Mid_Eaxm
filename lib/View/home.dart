import 'package:adv_mid_eaxm/Modal/modal.dart';
import 'package:adv_mid_eaxm/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductProvider productProviderTrue =
        Provider.of<ProductProvider>(context, listen: true);
    ProductProvider productProviderFalse =
        Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      body: FutureBuilder(
        future: productProviderFalse.productMap(),
        builder: (context,sanpshot) {
          if (sanpshot.hasData) {
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/image/logo.png'),
                    )
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //   image: NetworkImage(productProviderTrue
                      //       .productModal!.product.first.image),
                      // )
                      ),
                      child: Column(
                        children: [
                          Text('${productProviderTrue.productModal!.product[index].title}')
                        ],
                      ),
                    ),
                    itemCount: productProviderTrue.productModal!.product.length,
                  ),
                ),
              ],
            );
          }
          // else if (sanpshot.hasError) {
          //   return Center(
          //     child: Text('${sanpshot.hasError}'),
          //   );
          // }
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
