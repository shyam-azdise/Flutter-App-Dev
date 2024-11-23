
import 'package:maamedicos/common_widgets/bg_widget.dart';
import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/constants/list.dart';
import 'package:maamedicos/views/user_profile_screen/components/details_card.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        // backgroundColor: redColor,
       body: SafeArea(
        child:
          // color: redColor,
        // padding: const EdgeInsets.all(8),
        Column(
          children: [
            // Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.edit) , 
                  color: whiteColor,)
                  .onTap(() => {}),
                10.widthBox,
                const CloseButton(color: whiteColor,).box.alignCenterRight.make(),
              ],
            ),
            Row(
              children: [
                10.heightBox,
                Image.asset(imgProfile2, width: 80,
                fit: BoxFit.cover,)
                .box
                .roundedFull
                .clip(Clip.antiAlias)
                .make(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Chetan Gupta".text.color(whiteColor).fontFamily(bold).make(),
                      "chetan.gupta@maamedicos.com".text.color(whiteColor).make(),
                    ],
                  ),
                ),
                10.widthBox,
                OutlinedButton(onPressed: (){}, child: logout.text.color(const Color.fromARGB(255, 246, 232, 232, ),).make(),
                ),
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(width: context.screenWidth/3.5 , title: "In Your Cart", count: "00"),
                detailsCard(width: context.screenWidth/3.5 , title: "Your Wishlist", count: "12"),
                detailsCard(width: context.screenWidth/3.5 , title: "Total Orders", count: "106"),
              ],
            ),

            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.translate), color: const Color.fromARGB(255, 226, 213, 213),),
                    "Language".text.color(whiteColor).make(),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.edit), color: const Color.fromARGB(255, 226, 213, 213),),
                    "Edit Profile".text.color(whiteColor).make(),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.location_pin), color: const Color.fromARGB(255, 226, 213, 213),),
                    "Change Location".text.color(whiteColor).make(),
                  ],
                )
              ],
            ).box.padding(const EdgeInsets.only(top: 0,bottom: 20)).color(redColor).make()
          , // Button Section

          // 10.heightBox,
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index){
                return const Divider(
                  color: lightGrey,
                  thickness: 3,
                );
              }, 
              itemCount: profileButtonTitle.length,
              itemBuilder: (context, index){
                return ListTile(
                  leading: Image.asset(profileButtonsIconList[index], width: 20,), 
                  title: Text(profileButtonTitle[index]),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
              ).box
              .white
              .shadowSm
              .rounded
              .margin(const EdgeInsets.only(top:12, left: 20, right: 20, bottom: 0.0))
              .padding(const EdgeInsets.symmetric(horizontal: 16)).make().box.color(redColor).make(),
          
          ],
        
       ),
      ),
    ),
   );
  }
}