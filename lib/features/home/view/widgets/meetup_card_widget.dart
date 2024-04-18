import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_app/core/theme/app_theme.dart';

class MeetupCard extends ConsumerWidget {
  const MeetupCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 170,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(children: [
              Card(
                color: Colors.white,
                margin: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: AppTheme.text),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: 270,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 4, top: 4),
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn0aHczOvjGX7OGJqUGFp0l5GCe6DKSvJF7nrXA-D1EKiUS_UcdYPVbiXOFg3sVsoPU7w&usqp=CAU'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Author',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppTheme.text,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('1,028 Meetups',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 8,
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              height: 24,
                              width: 8 * 10,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 8 * 3.125,
                                  width: 8 * 10,
                                  decoration: BoxDecoration(
                                    color: AppTheme.button,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    'See more',
                                    style: TextStyle(
                                      color: AppTheme.text,
                                      fontSize: 8 * 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                  top: 8 * 9.75,
                  left: 8 * 2.5,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJS0mc7rt_X4WwhvitXOUNf8ulSM9JdLLVw&usqp=CAU'),
                  )),
              const Positioned(
                  top: 8 * 9.75,
                  left: 8 * 6.25,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://wallpapers.com/images/hd/instagram-profile-pictures-kx8z30go1u5u0q31.jpg'),
                  )),
              const Positioned(
                  top: 8 * 9.75,
                  left: 8 * 10,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJS0mc7rt_X4WwhvitXOUNf8ulSM9JdLLVw&usqp=CAU'),
                  )),
              const Positioned(
                  top: 8 * 9.75,
                  left: 8 * 13.75,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg'),
                  )),
              const Positioned(
                  top: 8 * 9.75,
                  left: 8 * 17.5,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyJS0mc7rt_X4WwhvitXOUNf8ulSM9JdLLVw&usqp=CAU'),
                  )),
            ]);
          },
        ),
      ),
    );
  }
}
