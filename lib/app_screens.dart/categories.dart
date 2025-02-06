import 'package:book_management_system/book_management/add_book.dart';
import 'package:book_management_system/book_management/book_details.dart';
import 'package:book_management_system/componets/categories_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: TextButton(
          onPressed: () {},
          child: const Text(
            "Back",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top tabs
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddBookScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Featured books",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Categories",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BookDetails(),
                            ),
                          );
                        },
                        child: const Text(
                          "Book Details",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Borrowed Books",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // Category Buttons
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    CategoryButton(
                      label: "History",
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    CategoryButton(
                      label: "Science",
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    CategoryButton(
                      label: "Arts",
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    CategoryButton(
                      label: "Commercials",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
