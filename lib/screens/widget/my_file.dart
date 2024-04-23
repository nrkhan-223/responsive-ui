import 'package:flutter/material.dart';
import 'package:responsive_design/controllers/responsive.dart';
import 'package:responsive_design/screens/widget/recent_file.dart';
import '../../consts/constants.dart';
import '../../models/MyFiles.dart';
import 'file_info_card.dart';

Widget myFile(context) {
  final Size size = MediaQuery.of(context).size;
  return Column(
    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            "My Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: primaryColor.withOpacity(0.5),
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding)),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: const Text(
              "Add New",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      const SizedBox(
        height: defaultPadding,
      ),
      Responsive(
          mobile: FileCardView(
            crossAxisCount: size.width < 650 ? 2 : 4,
            childAspectRatio: size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileCardView(),
          desktop: FileCardView(
            childAspectRatio: size.width < 1400 ? 1.1 : 1.4,
          )),
      const SizedBox(
        height: defaultPadding,
      ),
      Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: recentFile(),
      ),
    ],
  );
}

class FileCardView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const FileCardView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiels.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          crossAxisCount: crossAxisCount),
      itemBuilder: (context, index) => fileInfoCard(info: demoMyFiels[index]),
    );
  }
}
