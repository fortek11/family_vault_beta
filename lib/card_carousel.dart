import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int _currentIndex = 0;

  final List<Widget> _carouselItems = [
    CarouselItem(
      title: "If this is a credit card ad, why no picture of the",
      bankLogo: "assets/hdfc_rupay.png",
      description: "Because it works on UPI.",
      buttonText: "Apply now",
      image: "assets/phone_qr.png",
    ),
    CarouselItem(
      title: "Exclusive Rewards and Benefits",
      bankLogo: "assets/hdfc_rupay.png",
      description: "Earn points on every spend.",
      buttonText: "Explore more",
      image: "assets/rewards.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: _carouselItems,
          options: CarouselOptions(
            enableInfiniteScroll: true,
            height: 285.0,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _carouselItems.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => setState(() => _currentIndex = entry.key),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentIndex == entry.key ? Colors.purple : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  final String title;
  final String bankLogo;
  final String description;
  final String buttonText;
  final String image;

  const CarouselItem({
    super.key,
    required this.title,
    required this.bankLogo,
    required this.description,
    required this.buttonText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffbf5ae0), Color(0xffa811da)],
          stops: [0, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          // Image.asset(bankLogo, height: 40),
          const SizedBox(height: 24.0),
          // Image.asset(image, height: 150),
          const SizedBox(height: 24.0),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: () {},
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
