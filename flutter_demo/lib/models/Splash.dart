

class Splash{
  final String title;
  final String text;
  final String image;

  const   Splash({ required this.title,required this.text, required this.image});

  factory Splash.fromJson(Map<String, dynamic> json){
    return Splash(
        title: json['title'],
        text: json['text'],
        image: json['image']
    );
  }
}