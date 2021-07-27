/*
Categories: Grocery, Mobiles, Home, Fashion, Appliances, Travel, Beauty Toys and more

customer: phonenumber, emailaddress, name, password, address, dateofbirth,

Users:seller, customer, developers, customerCarePersons, sponsors, deliveryman

Sellers: name, shopname, contactnumber, sellerId, deliveredItems, Items, pendingItems,

Item: itemname, itemcategory, itemPrice, itemDescription, itemRating, itemPicture, itemCode, itemDiscount

paymentmode: bank, cardpayment, netbanking, cashondelivery

ShoppingCart: Item{itemName, itemPrice, itemDiscount}, promocode, discount, total


*/

class Item {
  String? Item_Name;
  String? Item_Category;
  double? Item_Price;
  int? Item_Quantity;

  Item({
    this.Item_Category,
    this.Item_Name,
    this.Item_Price,
    this.Item_Quantity
  });

  void Show_Details() {
    print("\n  Item Name : ${Item_Name}\n  Item Price : \u20B9 ${Item_Price}\n  Item Quantity : ${Item_Quantity}");
  }
}

class Category {
  String? Title;
  int? Number_of_Items;
  List<Item>? Items;

  Category({
    this.Title, 
    this.Number_of_Items,
    this.Items
  });

  void ShowItems() {
    print("\n\n"+"*" * 8 + "Category => ${Title}" + "*" * 8);
    Items!.forEach((Item) {
      Item.Show_Details();
    });
  }
}

class OnlineShopping {
  String? Name;
  String? Website;
  int? CustomerCare_num;
  int? No_of_Categories;
  List<Category>? Categories;

  OnlineShopping({
    this.Name,
    this.Website,
    this.CustomerCare_num,
    this.No_of_Categories,
    this.Categories
  });

  void Show_Categories() {
    print("Name of Shopping Website = ${Name}\nWebsite = ${Website}\nCustomer Care Number = ${CustomerCare_num}");
    Categories!.forEach((element) {
      element.ShowItems();
    });
  }
}

void main() {
  // Item item1 = Item(
  //     Item_Category: "Mobiles",
  //     Item_Name: "iphone",
  //     Item_Price: 110000,
  //     Item_Quantity: 2);
  // item1.Show_Details();

  OnlineShopping(
      Name: "Flipkart",
      Website: "https://www.flipkart.com/",
      CustomerCare_num: 9384743728,
      No_of_Categories: 2,
      Categories: [
        Category(Title: "SmartPhones", Number_of_Items: 2, Items: [
          Item(
              Item_Name: "iphone",
              Item_Category: "SmartPhones",
              Item_Price: 110000,
              Item_Quantity: 12),
          Item(
              Item_Name: "Mi 11 Ultra",
              Item_Category: "SmartPhones",
              Item_Price: 70000,
              Item_Quantity: 29)
        ]),
        Category(Title: "Laptops", Number_of_Items: 3, Items: [
          Item(
              Item_Name: "Dell Vostro 3350",
              Item_Category: "Laptops",
              Item_Price: 68000,
              Item_Quantity: 18),
          Item(
              Item_Name: "ASUS VivoBook Ultra 14",
              Item_Category: "Laptops",
              Item_Price: 43000,
              Item_Quantity: 22),
          Item(
              Item_Name: "Lenovo IdeaPad Gaming 3",
              Item_Category: "Laptops",
              Item_Price: 58000,
              Item_Quantity: 14),
        ])
      ]).Show_Categories();
}
