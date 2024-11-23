
// import 'package:maamedicos/common_widgets/button.dart';

import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/constants/list.dart';

import '../../common_widgets/button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline),
          )
        ],
        ),
           body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // Swipper
                          VxSwiper.builder(
                            autoPlay: true,
                            height: 350,
                            aspectRatio: 16/9,
                            itemCount: 3, 
                            itemBuilder: (context, index){
                              return Image.asset(imgFc5, 
                              width: double.infinity,
                              fit: BoxFit.cover,
                              );
                          }),

                          10.heightBox,
                          // Product title and details
                          title!.text.size(18).fontFamily(semibold).color(darkFontGrey).make(),
                      
                          // Rating 
                          VxRating(onRatingUpdate: (value){}, 
                          normalColor: textfieldGrey, 
                          selectionColor: const Color.fromRGBO(242, 197, 14, 1), 
                          count: 5, 
                          size: 25,
                          stepInt: true,
                          ),
                      
                          10.heightBox,
                          "\$30,000".text.color(redColor).fontFamily(bold).size(18).make(),
                      
                          10.heightBox,
                      
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    "Seller".text.white.fontFamily(semibold).make(),
                                    5.heightBox,
                                    "In House Brands ".text.fontFamily(semibold).color(darkFontGrey).size(16).make()
                                    ],
                      
                                )),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.message_rounded, color: darkFontGrey,),
                                )
                            ],
                          ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                      
                          // color variant section
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Color:".text.color(textfieldGrey).make(),
                                  ),
                                  Row(
                                    children: List.generate(3, 
                                    (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                                    .make()
                                    ),
                                  ),
                      
                                ],
                                )
                                ],
                              ).box.padding(const EdgeInsets.all(8)).make(),
                      
                              // Quantity Section
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Quantity".text.color(textfieldGrey).make(),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                                      "0".text.fontFamily(semibold).color(darkFontGrey).make(),
                                      IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                      
                                      10.widthBox,
                                      "(0 Available)".text.color(textfieldGrey).make(),
                                    ],
                                  ),
                      
                                ],
                              ).box.padding(const EdgeInsets.all(8)).make(),
                      
                              // Total Section
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Total".text.color(textfieldGrey).make(),
                                  ),
                                  10.widthBox,
                                  "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),
                                ],
                              ).box.padding(const EdgeInsets.all(8)).make(),
                            
                            ],
                          ).box.white.shadowSm.make(),

                           // Description Section
                           10.heightBox,
                           "Description :".text.color(darkFontGrey).fontFamily(bold).make(),
                           10.heightBox,
                           "This is a Dummy item and this is a description...  .  ".text.color(darkFontGrey).make(),
                          10.heightBox,

                           // button Section
                           ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: List.generate(
                              itemDetailsButtonList.length, 
                              (index) => ListTile(
                              title: itemDetailsButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                              trailing: const Icon(Icons.arrow_forward),
                            )
                          ),
                        ),
                        20.heightBox,
                        productsYouMayLike.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                        20.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(6, (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(imgP1, width:150, fit: BoxFit.cover,),
                                  10.heightBox,
                                  "Laptop 32/64 GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                  10.heightBox,
                                  "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                            
                                ],
                              ).box.roundedSM.white.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(8)).make(),),
                            ),
                          ),
                    ],
                  ),

                     


                  ),
                ),
              ),
                
              SizedBox(
                width: double.infinity,
                child: button(
                  color: redColor,
                  onPress: (){},
                  textColor: whiteColor,
                  title: "Add to Cart"
                ),

              )
          ],
    ),
     
    );
  }
}