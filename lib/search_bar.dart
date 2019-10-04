import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino_store/styles.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  SearchBar({@required this.controller, @required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Styles.searchBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 8,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              CupertinoIcons.search,
              color: Styles.searchIconColor,
            ),
            Expanded(
              child: CupertinoTextField(
                controller: controller,
                focusNode: focusNode,
                style: Styles.searchText,
              ),
            ),
            GestureDetector(
              onTap: controller.clear,
              child: Icon(
                CupertinoIcons.clear_thick_circled,
                color: Styles.searchIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
