class Category {
  final String title;
  final String imageAsset;

  Category({
    required this.title,
    required this.imageAsset,
  });
}

List<Category> category =
[
  Category(title: 'Restos near me', imageAsset: 'assets/icon/gofood.png'),
  Category(title: 'Best-seller in my area', imageAsset: 'assets/icon/gofood.png'),
];