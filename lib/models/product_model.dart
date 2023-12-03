// class Products {
//   String? id;
//   String? name;
//   String? categoryId;
//   String? description;
//   int? price;
//   int? quantity;
//
//   Products(
//       {this.id,
//         this.name,
//         this.categoryId,
//         this.description,
//         this.price,
//         this.quantity});
//
//   Products.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     categoryId = json['categoryId'];
//     description = json['description'];
//     price = json['price'];
//     quantity = json['quantity'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['categoryId'] = this.categoryId;
//     data['description'] = this.description;
//     data['price'] = this.price;
//     data['quantity'] = this.quantity;
//     return data;
//   }
// }