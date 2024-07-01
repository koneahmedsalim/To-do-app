import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_tabBar.dart';

class MySilverAppbar extends StatefulWidget {
  final Widget title;
  final Widget child;
  final Widget leading;

  MySilverAppbar({
    Key? key,
    required this.title,
    required this.child,
    required this.leading, required TabController tabController,
  }) : super(key: key);

  @override
  _MySilverAppbarState createState() => _MySilverAppbarState();
}

class _MySilverAppbarState extends State<MySilverAppbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      title: widget.title,
      pinned: true,
      leading: widget.leading,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: widget.child,
        ),
        title: MyTabbar(tabController: _tabController),
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
