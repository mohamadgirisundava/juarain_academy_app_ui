# juarain_academy_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

  CarouselSlider.builder(
                options: CarouselOptions(
                  height: 141,
                  autoPlay: true,
                  viewportFraction: 0.8, // Shrinks each image slightly
                  enlargeCenterPage:
                      true, // Adds effect to enlarge center image
                ),
                itemCount: imgList.length,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ), // Horizontal margin of 5 on each side
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        imgList[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),


final List<String> imgList = [
  IMAGE.imgDashboardSlider,
  IMAGE.imgDashboardWorkshop1,
];

GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Jumlah item per row
          crossAxisSpacing: 8, // Jarak horizontal antar item
          mainAxisSpacing: 8,  // Jarak vertikal antar item
        ),
        itemCount: 20, // Jumlah total item
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              "Item $index",
              style: TextStyle(color: Colors.white),
            ),
          );
        },
        padding: EdgeInsets.all(8), // Padding di sekitar grid
      ),
    );
