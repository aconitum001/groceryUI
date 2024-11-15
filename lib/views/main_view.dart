import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';
import 'package:gorcery/views/calender_view.dart';
import 'package:gorcery/views/home_view.dart';
import 'package:gorcery/views/products_view.dart';
import 'package:gorcery/views/profile_view.dart';
import 'package:gorcery/widgets/home_view_body.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentTab = 0;

  final List<Widget> screens = [
    const HomeView(),
    const ProductsView(),
    const CalenderView(),
    const ProfileView(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 44,
            width: 44,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).colorScheme.primary,
              shape: const CircleBorder(),
              child: SvgPicture.asset(
                Assets.assetsImagesCart,
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            left: 13,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "4",
                  style: AppStyles.style14medium(
                    context,
                    Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.surface,
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const HomeView();
                    currentTab = 0;
                  });
                },
                child: SvgPicture.asset(
                  Assets.assetsImagesHome,
                  colorFilter: ColorFilter.mode(
                    currentTab == 0
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onSecondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const ProductsView();
                    currentTab = 1;
                  });
                },
                child: SvgPicture.asset(
                  Assets.assetsImagesCat,
                  colorFilter: ColorFilter.mode(
                    currentTab == 1
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onSecondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const CalenderView();
                    currentTab = 2;
                  });
                },
                child: SvgPicture.asset(
                  Assets.assetsImagesCalenderIcon,
                  colorFilter: ColorFilter.mode(
                    currentTab == 2
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onSecondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const ProfileView();
                    currentTab = 3;
                  });
                },
                child: SvgPicture.asset(
                  Assets.assetsImagesPersonIcon,
                  colorFilter: ColorFilter.mode(
                    currentTab == 3
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onSecondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
