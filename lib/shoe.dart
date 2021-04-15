class Shoe {
  final String itemCode;
  final String userMemberNo;
  // final  UID;
  final String Image;
  final String Image1;
  final String Image2;
  final String Image3;
  final String Image4;
  final String Description;
  final String Description2;
  final String itemGroup;
  final String itemType;
  final String stockControl;
  final String taxType;
  final String createdTime;
  final String isActive;
  final String itemBrand;
  final String itemModel;
  final String variationName;
  final String groupName;
  final String categoryName;
  final String Price;

  Shoe(
      {this.itemCode,
      this.userMemberNo,
      // this.UID,
      this.Image,
      this.Image1,
      this.Image2,
      this.Image3,
      this.Image4,
      this.Description,
      this.Description2,
      this.itemGroup,
      this.itemType,
      this.stockControl,
      this.taxType,
      this.createdTime,
      this.isActive,
      this.itemBrand,
      this.itemModel,
      this.variationName,
      this.groupName,
      this.categoryName,
      this.Price});

  factory Shoe.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    return Shoe(
        itemCode: json['ItemCode'],
        userMemberNo: json['UserMememberNo'],
        // UID: json['UID'],
        Image: json['Image'],
        Image1: json['Image1'],
        Image2: json['Image2'],
        Image3: json['Image3'],
        Image4: json['Image4'],
        Description: json['Description'],
        Description2: json['Description02'],
        itemGroup: json['ItemGroup'],
        itemType: json['ItemType'],
        stockControl: json['StockControl'],
        taxType: json['TaxType'],
        createdTime: json['CreatedTime'],
        isActive: json['IsActive'],
        itemBrand: json['ItemBrand'],
        itemModel: json['ItemModel'],
        variationName: json['VariationName'],
        groupName: json['GroupName'],
        categoryName: json['CategoryName'],
        Price: json['Price']);
  }

  static List<Shoe> listFromJson(List json) {
    print('thejson');
    if (json == null) return null;
    print('thejson22');
    List<Shoe> list = List<Shoe>();
    var length = json.length;
    print("injson $length");
    // for (var item in json) {
    //   print('theitem' + item);
    //   // list.add(Shoe.fromJson(item));
    // }
    //
    for (int x = 0; x < json.length - 1; x++) {
      print("itemo" + json[x]);
    }
    return list;
  }
}

class ShoeListing {
  final bool status;
  final List<Shoe> result;
  final int iFilterTotal;

  ShoeListing({this.status, this.result, this.iFilterTotal});

  factory ShoeListing.fromJson(List<dynamic> json) {
    if (json == null) return null;
    return ShoeListing(
      // status: json['status'],
      result: Shoe.listFromJson(json),
      // iFilterTotal: json['iFilterTotal'],
    );
  }
}
