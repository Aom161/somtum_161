class ListProductType {
  int? value;
  String? name;

  ListProductType(this.value, this.name);

  static List<ListProductType> getListProductType() {
    return [
      ListProductType(1, 'เผ็ดน้อย'),
      ListProductType(2, 'เผ็ดปานกลาง'),
      ListProductType(3, 'เผ็ดมากกก'),
      ListProductType(4, '-'),
    ];
  }
}
