import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mike_project/src/core/data/hotel_model.dart';
import 'package:mike_project/src/core/providers/all_hotels_providers.dart';
import 'package:mike_project/src/core/repos/hotel_repo.dart';
import 'package:mike_project/src/core/utils/app_assets.dart';
import 'package:mike_project/src/core/utils/app_colors.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      
      backgroundColor: AppColors.blue,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(
                top: size.height * 0.25,
              ),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _HeaderSection(),
                  25.h.verticalSpace,
                  Text(
                    'Welcome back 👋',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  25.h.verticalSpace,
                  const _SearchCardWidget(),
                  const _NearbyHotels(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _NearbyHotels extends ConsumerWidget {
  const _NearbyHotels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Nearby',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'See all',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        hotels.when(
          data: (data) {
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return HotelCard(
                  hotel: data[index],
                );
              },
            );
          },
          error: (error, stackTrace) => Text('Erro: $error'),
          loading: () {
            return Center(child: CircularProgressIndicator());
          },
        )
      ],
    );
  }
}

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: AppColors.lightGrey.withAlpha(50),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.asset(
                AppAssets.hotelImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotel.hotelName,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    ),
                    5.h.verticalSpace,
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.location),
                        5.w.horizontalSpace,
                        Text(
                          hotel.location,
                        )
                      ],
                    ),
                    5.h.verticalSpace,
                    CustomRating(ratingScore: hotel.ratingScore),
                    5.h.verticalSpace,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '₦${hotel.price}',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  )),TextSpan(
                          text: ' /night',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ))
                    ]))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key,
    required this.ratingScore,
    this.totalReviews = 0,
    this.showReviews = false,
  });

  final double ratingScore;
  final int totalReviews;
  final bool showReviews;

  @override
  Widget build(BuildContext context) {
    const size = 15.0;
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Container(
            margin: const EdgeInsets.all(1),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: i <= ratingScore ? AppColors.yellow : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.yellow, width: 2),
            ),
          ),
        5.w.horizontalSpace,
        Text(ratingScore.toString())
      ],
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(AppAssets.photo),
            ),
            CustomIconButton(
              icon: SvgPicture.asset(AppAssets.notifications),
            )
          ],
        )
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.size = 50,
    this.onPressed,
  });

  final Widget icon;

  final Function()? onPressed;

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}

class _SearchCardWidget extends StatelessWidget {
  const _SearchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final locationTextCtrl = TextEditingController();
    final dateFromCtrl = TextEditingController();
    final dateToCtrl = TextEditingController();

    locationTextCtrl.text = 'Lagos';

    dateFromCtrl.text =
        dateToCtrl.text = DateFormat('dd MMM yyyy').format(DateTime.now());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(
          color: AppColors.lightGrey.withAlpha(50),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.location,
                colorFilter: const ColorFilter.mode(
                  AppColors.blue,
                  BlendMode.srcIn,
                ),
              ),
              20.w.horizontalSpace,
              Flexible(
                  child: CustomTextField(
                label: 'Where',
                controller: locationTextCtrl,
              ))
            ],
          ),
          const Divider(),
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.calendar,
                colorFilter: const ColorFilter.mode(
                  AppColors.blue,
                  BlendMode.srcIn,
                ),
              ),
              20.w.horizontalSpace,
              Flexible(
                  child: CustomTextField(
                label: 'From',
                controller: dateFromCtrl,
              )),
              Flexible(
                  child: CustomTextField(
                label: 'To',
                controller: dateToCtrl,
              ))
            ],
          ),
          20.h.verticalSpace,
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(AppColors.yellow),
                elevation: const MaterialStatePropertyAll(0),
                minimumSize: const MaterialStatePropertyAll(Size(200, 50)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Search',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ))
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            )),
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ));
  }
}
