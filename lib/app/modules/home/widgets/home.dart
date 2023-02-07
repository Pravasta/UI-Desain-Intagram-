import 'package:flutter/material.dart';

class HomeePage extends StatelessWidget {
  const HomeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          // App bar home
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_box_outlined),
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Profile in home
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                // Profile User
                Container(
                  width: 95,
                  height: 95,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.amber,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Container(
                        width: 87,
                        height: 87,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey[300],
                          image: const DecorationImage(
                            image:
                                NetworkImage('https://picsum.photos/536/354'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.white, width: 4),
                        ),
                      ),
                    ],
                  ),
                ),
                // Followers
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    InfoProfile(total: '21', title: 'Posts'),
                    InfoProfile(total: '25K', title: 'Followers'),
                    InfoProfile(total: '100', title: 'Followings'),
                  ],
                )),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // Username
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'UserName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 7),
          // Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    'Hallo Perkenalkan nama saya Pravasta Rama Fitrayana, Saya sedang belajar tentang menjadi Flutter Developer',
                style: TextStyle(color: Colors.grey[700]),
                children: const [
                  TextSpan(
                    text: ' #hastag\n\n',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: 'Link Goes Here',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Button edit profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
          ),
          const SizedBox(height: 5),
          // Stories
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 71,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[800],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://picsum.photos/id/${index + 544}/500/500'))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text('Story ${index + 1}'),
                ],
              ),
            ),
          ),
          // Row icon
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.grid_on),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_pin_sharp),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          // List Picture
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 21,
            itemBuilder: (context, index) =>
                Image.network('https://picsum.photos/id/${64 + index}/500/500'),
          ),
        ],
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({
    super.key,
    required this.title,
    required this.total,
  });

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        Text(title),
      ],
    );
  }
}
