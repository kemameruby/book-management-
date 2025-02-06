String getBooks = """
query Books {
 books{
   price
  totalRatings
    title
    _id
    category
  }
 
}
""";
String getAuthors = """"
query Books {
 books{
   price
  totalRatings
    title
    _id
  category
  
  }

}

query Authors{
  authors{
    _id
    name
    biography
    birthDate
    nationality
    books{
      isbn
      title
      description
      publishedYear
      pageCount
      category
      status
      price
    }
    awards
    websiteURL
  }
}
""";
