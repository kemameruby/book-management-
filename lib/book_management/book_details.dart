import 'package:book_management_system/app_screens.dart/categories.dart';
import 'package:book_management_system/componets/related_book_widget.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Book Details'),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoryScreen(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Book Title',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Author: John Doe',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text(
              'Genre: Fiction',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'This is the synopsis of the book. It provides a brief description of the story and what readers can expect.',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Rating: ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.star, color: Colors.blue),
                Icon(Icons.star_border, color: Colors.white),
              ],
            ),
            const SizedBox(height: 16),
            // Availability
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text('Borrow'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text('Reserve'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text('Purchase'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Related Books
            const Text(
              'Related Books',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 8),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RelatedWidget(title: 'Book 1'),
                  SizedBox(width: 8),
                  RelatedWidget(title: 'Book 2'),
                  SizedBox(width: 8),
                  RelatedWidget(title: 'Book 3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
