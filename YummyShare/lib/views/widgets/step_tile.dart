import 'package:flutter/material.dart';
import 'package:yummyshare/models/core/recipe.dart';

class StepTile extends StatelessWidget {
  final Instructions data;

  StepTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey[350] ?? Colors.grey))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.number,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'inter',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          (data.body != null)
              ? Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    data.body,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        height: 150 / 100),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}