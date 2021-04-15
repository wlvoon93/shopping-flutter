import 'package:flutter/material.dart';
import 'package:shopping/carousel.dart';
import 'package:shopping/shoe.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key, this.shoeItem}) : super(key: key);

  final Shoe shoeItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Detail Page"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ImageCarousel(),
            Text(
              "${shoeItem.itemBrand} ${shoeItem.itemModel}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Price: RM ${shoeItem.Price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            _row("Item Code: ", shoeItem.itemCode),
            _row("Description: ", shoeItem.Description),
            _row("Item Group: ", shoeItem.itemGroup),
            _row("Item Type: ", shoeItem.itemType),
            _row("Stock Control: ", shoeItem.stockControl),
            _row("Tax Type", shoeItem.taxType),
            _row("Item Brand: ", shoeItem.itemBrand),
            _row("Item Model: ", shoeItem.itemModel),
            _row("Variation Name: ", shoeItem.variationName),
            _row("Group Name: ", shoeItem.groupName),
            _row("Category Name: ", shoeItem.categoryName),
            _row("Created Time: ", shoeItem.createdTime),
          ],
        ),
      ),
    );
  }

  Widget _row(String title, String value) {
    return Row(
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}
