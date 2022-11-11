import 'package:flutter/material.dart';

class NewPages extends StatefulWidget {
  const NewPages({Key? key}) : super(key: key);

  @override
  State<NewPages> createState() => _NewPagesState();
}

class _NewPagesState extends State<NewPages> {
  List images = [
    "assets/images/apple1.jpg",
    "assets/images/apple2.jpg",
    "assets/images/apple3.jpg",
    "assets/images/apple4.jpg",
    "assets/images/apple5.jpg",
    "assets/images/apple6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.cyan[400],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.white,
                size: 30,
              )),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: const TextField(
                decoration: InputDecoration(
              hintText: "What are you looking for?",
              suffixIcon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.cyan,
              ),
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.cyan,
              ),
            )),
          ),
        ),
        title: const Image(
            width: 100,
            height: 50,
            image: AssetImage("assets/images/amazon.png")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Deliver to Korea,Respublic of",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  height: 145,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "We ship 45 million\nproducts",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Color(0xFF30BFDA),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          bottomLeft: Radius.circular(70),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage("assets/images/Amazon.webp"))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign in for the best experience",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.black,fontSize: 20),
                        )),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                           ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Deal of the Day",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image(
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/apple.webp")),
                      SizedBox(height: 8,),
                  Text(
                    "Up to 31% off APC UPS Battery Back\n\$10.99-\$79.9",
                    style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 71, 71, 71)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Best sellers in Electronics",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 400,
                    child: GridView.count(
                      mainAxisSpacing: 8,
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      children: List.generate(
                          images.length,
                          (index) => Image(
                              fit: BoxFit.cover,
                              width: 300,
                              height: 200,
                              image: AssetImage(images[index]))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
