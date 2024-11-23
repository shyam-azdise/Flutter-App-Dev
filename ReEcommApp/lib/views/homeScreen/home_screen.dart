import 'package:maamedicos/common_widgets/home_buttons.dart';
import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/constants/list.dart';
import 'package:maamedicos/views/homeScreen/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: search,
                  hintStyle: TextStyle(
                    color: textfieldGrey                  )
                ),
              ),
              ),
              10.heightBox,

              // Image Swiper to  show hot deals and brands
              // Scrollable Screen
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliderList.length, 
                    itemBuilder: (context, index){
                        return Image.asset(
                          sliderList[index],
                          fit: BoxFit.fill, 
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
                  25.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(2, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 2.5,
                      icon: index == 0? icTodaysDeal : icFlashDeal,
                      title: index == 0? todayDeal : flashSale,
                  
                  
                    )),
                      
                  ),
                  20.heightBox,
                  // 2nd Slider 
                  VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliderList2.length, 
                    itemBuilder: (context, index){
                        return Image.asset(
                          sliderList2[index],
                          fit: BoxFit.fill, 
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  }),
                  10.heightBox,
                  Row(
                     
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => homeButtons(
                      height: context.screenHeight * 0.13,
                      width: context.screenWidth / 3.5,
                      icon: index == 0? icTopCategories : index == 1? icBrands : icTopSeller,
                      title: index == 0? topcategories : index == 1? brands : topseller,
                    
                    )
                    )
                    ),
                    // Featured Category
                    10.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredcat.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                      20.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(
                              3, 
                              (index) => Column(
                                children: [
                                  featuredButton(icon: featuredImages1[index], title: featuredTitles1[index]),
                                  10.heightBox,
                                  featuredButton(icon: featuredImages2[index], title: featuredTitles2[index])
                                ])).toList(),
                          ),
                      ),

                      // Featured Products
                      20.heightBox,
                      Container(
                        // width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(color: redColor,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [featuredProducts.text.white.fontFamily(bold).size(18).make(),
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
                        20.heightBox,

                        // 3rd Swipper
                         VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliderList2.length, 
                    itemBuilder: (context, index){
                        return Image.asset(
                          sliderList2[index],
                          fit: BoxFit.fill, 
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  }),
                  20.heightBox,

                  // all Product Section
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 300,
                      crossAxisCount: 2, 
                      mainAxisSpacing: 8, 
                      crossAxisSpacing: 8), 
                      itemBuilder: (context, index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                           width: 200, 
                           height: 200,
                           fit: BoxFit.fill,),
                           const Spacer(),
                           "Laptop 32/64 GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                           10.heightBox,
                           "\$600".text.color(redColor).fontFamily(bold).size(16).center.make(),
                           10.heightBox,

                      ],
                    ).box.white.roundedSM.make();
                  })
  
                      
                    ],
                  ),
                ),
              )
              ],
        ),
        ),

      );
  }
}