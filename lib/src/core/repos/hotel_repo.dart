import 'package:mike_project/src/core/data/hotel_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hotel_repo.g.dart';

@riverpod
HotelRepository hotelRepository(HotelRepositoryRef ref) => HotelRepository();

class HotelRepository {
  Future<List<Hotel>> getHotels() async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return Hotel.sampleHotels;
    });
  }

  Future<Hotel> getHotel(String id) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return Hotel.sampleHotels.where((element) => element.id == id).first;
    });
  }
}
