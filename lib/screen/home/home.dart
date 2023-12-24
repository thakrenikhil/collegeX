import 'package:collegex/styles/icons.dart';
import 'package:collegex/theme/colors.dart';
import 'package:collegex/widgets/card.dart';
import 'package:collegex/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: xColors.black,
        elevation: 0,
        title: SvgPicture.asset(mainlogo),
        centerTitle: false,
        // leading: IconButton(icon: Icon(Icons.menu),onPressed:MainDrawer()),
        actions: [
          IconButton(
              icon: const Icon(
                  Icons.account_circle_outlined),
              onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              child: Column(
                children: [
                  const ImageSlider(),
                  StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: xCard(const Icon(
                                Icons
                                    .access_alarm))
                            .WithCircular(50),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: xCard(const Icon(
                                Icons
                                    .access_alarm))
                            .WithCircular(50),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: xCard(const Icon(
                                Icons
                                    .access_alarm))
                            .WithCircular(50),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: xCard(const Icon(
                                Icons
                                    .access_alarm))
                            .WithCircular(50),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: xCard(const Icon(
                            Icons.abc)),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: xCard(Icon(
                            Icons.account_tree)),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 4,
                        mainAxisCellCount: 2,
                        child: xCard(Icon(
                            Icons.account_tree)),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 3,
                        mainAxisCellCount: 1,
                        child: xCard(Icon(
                            Icons.account_tree)),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: xCard(Icon(
                          Icons.account_tree,
                          color: xColors.red,
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: xColors.black,
    );
  }
}
