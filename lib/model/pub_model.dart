class PubModel{
  final String image,name,address;
  final double rating;
  final bool isfoodavailable;

  PubModel({ required this.image,required this.name,required this.address,required this.rating,required this.isfoodavailable});
  
  static List<PubModel> pubmodel=[
    PubModel(image: 'assets/image1.jpeg', name: 'Sollicitudin', address: 'Maiden, Kolkata', rating: 3.5, isfoodavailable: true),
    PubModel(image: 'assets/image2.jpeg', name: 'Molestie', address: 'Belur, West Bengal', rating: 4, isfoodavailable: false),
    PubModel(image: 'assets/image3.jpeg', name: 'Park Hyatt', address: 'Maiden, Kolkata', rating: 2.5, isfoodavailable: false),
    PubModel(image: 'assets/image4.jpeg', name: 'Crowne Plaza', address: 'Belur, West Bengal', rating: 4.5, isfoodavailable: true),
    PubModel(image: 'assets/image5.jpeg', name: 'Holly House', address: 'Maiden, Kolkata', rating: 2.5, isfoodavailable: false),
    PubModel(image: 'assets/image6.jpeg', name: 'Beachwalk Resort', address: 'Belur, West Bengal', rating: 3, isfoodavailable: true),
    PubModel(image: 'assets/image7.jpeg', name: 'Cosmopolitan', address: 'Maiden, Kolkata', rating: 3, isfoodavailable: false),
    PubModel(image: 'assets/image8.jpeg', name: 'Peninsula', address: 'Maiden, Kolkata', rating: 3.5, isfoodavailable: true),
    PubModel(image: 'assets/image2.jpeg', name: 'FeetZing', address: 'Belur, West Bengal', rating: 2.5, isfoodavailable: false),
    PubModel(image: 'assets/image5.jpeg', name: 'Sebastian', address: 'Maiden, Kolkata', rating: 3, isfoodavailable: true),
  ];
}