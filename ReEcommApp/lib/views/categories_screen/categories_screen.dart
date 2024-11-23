
import 'package:maamedicos/common_widgets/bg_widget.dart';
import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/constants/list.dart';
import 'package:maamedicos/views/categories_screen/category_details.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),         
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, 
              mainAxisSpacing: 9, 
              crossAxisSpacing: 8,
              mainAxisExtent: 200),
            itemBuilder: (context, index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          categoriesImages[index],
                          height: 120,
                          width: 200,
                          fit: BoxFit.cover,),
                          10.heightBox,
                          categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
                      ],
              ).box.white.roundedSM.clip(Clip.antiAlias).outerShadowSm.make().onTap((){
                Get.to(() => CategoryDetails(title: categoriesList[index],));
              });
            }),
        ),
      )
    );
  }
}