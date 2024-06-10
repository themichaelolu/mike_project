class Hotel {
  final String id;
  final String hotelName;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagePaths;
  final int totalReview;
  final double ratingScore;
  final double price;

  Hotel({
    required this.id,
    required this.hotelName,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagePaths,
    this.totalReview = 0,
    this.ratingScore = 0,
    required this.price,
  });

  static List<Hotel> sampleHotels = [
    Hotel(
      id: '1',
      thumbnailPath: 'assets/image/thumbnail1.png',
      hotelName: 'D`Omah Hotel Yogya',
      location: 'Bantul Regency, Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'We are only a 10-minute drive from the Water Castle (Tamansari) and Yogyakarta Palace. An airport shuttle is provided for a surcharge (available 24 hours).',
      ratingScore: 4.25,
      price: 458,
      imagePaths: [
        'assets/image/gallery1.png',
        'assets/image/gallery2.png',
        'assets/image/gallery3.png',
      ],
      totalReview: 134,
    ),
    Hotel(
      id: '2',
      thumbnailPath: 'assets/image/thumbnail2.png',
      hotelName: 'Greenhost Boutique Hotel',
      location: 'Bantul Regency, Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'We are only a 10-minute drive from the Water Castle (Tamansari) and Yogyakarta Palace. An airport shuttle is provided for a surcharge (available 24 hours).',
      ratingScore: 3.6,
      price: 338,
      imagePaths: [
        'assets/image/gallery1.png',
        'assets/image/gallery2.png',
        'assets/image/gallery3.png',
      ],
      totalReview: 432,
    ),
    Hotel(
      id: '3',
      thumbnailPath: 'assets/image/thumbnail1.png',
      hotelName: 'Candi Tirta Raharjo',
      location: 'Bantul Regency, Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'We are only a 10-minute drive from the Water Castle (Tamansari) and Yogyakarta Palace. An airport shuttle is provided for a surcharge (available 24 hours).',
      ratingScore: 2.6,
      price: 698,
      imagePaths: [
        'assets/image/gallery1.png',
        'assets/image/gallery2.png',
        'assets/image/gallery3.png',
      ],
      totalReview: 99,
    ),
    Hotel(
      id: '4',
      thumbnailPath: 'assets/image/thumbnail2.png',
      hotelName: 'Alana Hotel',
      location: 'Bantul Regency, Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'We are only a 10-minute drive from the Water Castle (Tamansari) and Yogyakarta Palace. An airport shuttle is provided for a surcharge (available 24 hours).',
      ratingScore: 10,
      price: 123,
      imagePaths: [
        'assets/image/gallery1.png',
        'assets/image/gallery2.png',
        'assets/image/gallery3.png',
      ],
      totalReview: 5,
    ),
  ];
}
