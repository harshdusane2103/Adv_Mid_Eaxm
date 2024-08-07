import 'package:adv_mid_eaxm/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductProvider productProviderTrue =
    Provider.of<ProductProvider>(context, listen: true);
    ProductProvider productProviderFalse =
    Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(future: productProviderTrue.productMap(), builder: (context,sanpshot){
            if(sanpshot.hasData)
              {
                return
                  Container(
                  height: 800,
                  width: 400,
                  child:Column(
                    children: [
                      Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(productProviderTrue.productModal!.product.first.image)
                            )
                        ),
                      )


                    ],
                  ),);

              }
            else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

          })




        ],
      ),
    );
  }
}
