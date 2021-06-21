import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:lapasar_flutter/api.dart';
import 'package:lapasar_flutter/controller.dart';
import 'package:transparent_image/transparent_image.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MainController _controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        child: Obx(
          () => _controller.product.length == 0
              ? Container(
                  child: Center(child: CircularProgressIndicator()),
                  padding: EdgeInsets.all(50),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: _controller.product.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: Api.apiPrefix +
                                    "products/${_controller.product[index].sId}/${_controller.product[index].images[0]}",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${_controller.product[index].name}',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Text("RM${_controller.product[index].price}"),
                        ],
                      ),
                    );
                  }

                  // new StaggeredGridView.countBuilder(
                  //     crossAxisCount: 2,
                  //     crossAxisSpacing: 12,
                  //     mainAxisSpacing: 12,
                  //     itemCount: _controller.product.length,
                  //     itemBuilder: (context, index) {
                  //       return Container(
                  //         decoration: BoxDecoration(
                  //             color: Colors.transparent,
                  //             borderRadius: BorderRadius.all(Radius.circular(12))),
                  //         child: Column(
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.all(Radius.circular(12)),
                  //               child: Column(
                  //                 children: [
                  //                   FadeInImage.memoryNetwork(
                  //                     placeholder: kTransparentImage,
                  //                     image: Api.apiPrefix +
                  //                         "products/${_controller.product[index].sId}/${_controller.product[index].images[0]}",
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                   Text('${_controller.product[index].name}'),
                  //                   Text("RM${_controller.product[index].price}"),
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //     staggeredTileBuilder: (index) {
                  //       return new StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                  //     }),
                  ),
        ),
      ),
    );
  }
}
