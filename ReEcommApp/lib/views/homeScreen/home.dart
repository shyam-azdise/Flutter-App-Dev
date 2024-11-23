import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/controllers/home_controller.dart';
import 'package:maamedicos/views/cart_screen/cart_screen.dart';
import 'package:maamedicos/views/categories_screen/categories_screen.dart';
import 'package:maamedicos/views/homeScreen/home_screen.dart';
import 'package:maamedicos/views/user_profile_screen/user_profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    // Init controller
    var controller = Get.put(HomeController());

    var navBarItemList = [
      BottomNavigationBarItem(icon: Image.asset(icHome , width: 25), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories , width: 25,), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart , width: 25,), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile , width: 25,), label: account)
    ];

    var navbody = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const UserProfile(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
             child: navbody.elementAt(controller.currentNavIndex.value)
             ),
          ),
        ]
      ),
          bottomNavigationBar: Obx(() =>
            BottomNavigationBar(
              currentIndex: controller.currentNavIndex.value,
              items: navBarItemList,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              selectedItemColor: redColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold , color: redColor),
              onTap: (value){
                  controller.currentNavIndex.value = value ;
              },
              ),
          ),
    );
  }
}