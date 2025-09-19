class BangPack {
  final String title;
  final String price;
  final String description;
  final String bangAmount;
  final String? bonus;
  final String? tag;

  BangPack({
    required this.title,
    required this.price,
    required this.description,
    required this.bangAmount,
    this.bonus,
    this.tag,
  });
}

List<BangPack> getBangPacks() {
  return [
    BangPack(
      title: "Bang Pack- 01",
      price: "\$100",
      description: "Get 500 Bangs to boost your chart climbing power. Each Bang costs \$100.",
      bangAmount: "500",
      bonus: "(+3 Bonus)",
      tag: "Popular",
    ),
    BangPack(
      title: "Bang Pack- 02",
      price: "\$50",
      description: "Get 250 Bangs to boost your chart climbing power. Each Bang costs \$50.",
      bangAmount: "250",
      bonus: "(+2 Bonus)",
      tag: "Best Value",
    ),
    BangPack(
      title: "Bang Pack- 03",
      price: "\$75",
      description: "Get 375 Bangs to boost your chart climbing power. Each Bang costs \$75.",
      bangAmount: "375",
    ),
    BangPack(
      title: "Bang Pack- 04",
      price: "\$125",
      description: "Get 625 Bangs to boost your chart climbing power. Each Bang costs \$125.",
      bangAmount: "625",

    ),
    BangPack(
      title: "Bang Pack- 05",
      price: "\$30",
      description: "Get 150 Bangs to boost your chart climbing power. Each Bang costs \$30.",
      bangAmount: "150",

    ),
    BangPack(
      title: "Bang Pack- 06",
      price: "\$200",
      description: "Get 1000 Bangs to boost your chart climbing power. Each Bang costs \$200.",
      bangAmount: "1000",

    ),
  ];
}

