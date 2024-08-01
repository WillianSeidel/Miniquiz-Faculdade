import 'package:flutter/material.dart';
import 'package:mini_quiz_uninter/Data/data.dart';
import 'package:mini_quiz_uninter/screens/category_set_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.indigo,
                  Colors.purple,
                ]),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.home_filled,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Evolua Sempre!',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Siga em frente',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white38,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Data.categories.length,
                  padding: EdgeInsets.all(15),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final category = Data.categories[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CategorySetScreen(category: category),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                category.image,
                                height: 100,
                                width: 100,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(category.name,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black.withOpacity(0.6),
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
