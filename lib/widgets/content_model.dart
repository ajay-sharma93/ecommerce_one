class UnboardingContent{
  String image;
  String title;
  String description;
  


  UnboardingContent({required this.image,required this.title, required this.description, });
}

List<UnboardingContent> contents=[
  UnboardingContent(image: "assets/images/screen1.png", title: 'Select from our\n     Best menu', description: 'Pick your food from our menu\n       more than 35 times',),
  UnboardingContent(image: "assets/images/screen2.png", title: 'Quick Delivery', description: ' Get your food at your door!'),
  UnboardingContent(image: "assets/images/screen3.png", title: 'Order Your Food', description: 'Your Prefered Food is 25 min away\n                      order it now...'),
  
];