import 'package:mike_project/src/core/repos/hotel_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/hotel_model.dart';

part 'all_hotels_providers.g.dart';

@riverpod
Future<List<Hotel>> allHotels(AllHotelsRef ref) async {
  final HotelRepository hotelRepository = ref.watch(hotelRepositoryProvider);

  return hotelRepository.getHotels();
  
}
