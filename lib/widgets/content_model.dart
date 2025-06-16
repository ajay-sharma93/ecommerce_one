class UnbordingContent{
  String image;
  String title;
  String description;

  UnbordingContent({required this.image,required this.title, required this.description});
}

List<UnbordingContent> contents=[
  UnbordingContent(image: "images/screen1.png", title: 'Select from our\n Best menu', description: 'Pick your food from our menu\n  more than 35 times'),
  UnbordingContent(image: "images/screen2.png", title: 'Easy to Use', description: 'You can pay cash on delivery (COD)'),
  UnbordingContent(image: "images/screen3.png", title: 'Quick Delivery', description: ' Get your food at your door!')
  
];