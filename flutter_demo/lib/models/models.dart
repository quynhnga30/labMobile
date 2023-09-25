class DataModel {
  final String title;
  final String imageName;
  final double price;
  DataModel(
      this.title,
      this.imageName,
      this.price,
      );
}

List<DataModel> dataList = [
  DataModel("Short Dress", "assets/images/hoa1.jpg", 300.8),
  DataModel("Office Formals", "assets/images/hoa2.jpg", 245.2),
  DataModel("Casual Jeans", "assets/images/hoa3.jpg", 168.2),
  DataModel("Jeans Skirt", "assets/images/hoa3.jpg", 136.7),
];