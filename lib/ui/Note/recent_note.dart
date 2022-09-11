import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/Note/components/recent_build_app_bar.dart';
import 'package:note_taking_app/ui/Note/components/recent_note_data.dart';

class RecentNoteView extends StatelessWidget {
  const RecentNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: buildReAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 25.0,
        ),
        child: GridView.builder(
          itemCount: recentNoteData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20.0,
              crossAxisCount: 2,
              childAspectRatio: 0.75),
          itemBuilder: (context, index) => Container(
            // height: 200,
            // width: 150,
            color: Colors.green,
            child: Text(
              recentNoteData[index],
            ),
          ),
        ),
      ),
    );
  }
}


// GridView.builder(
//             itemCount: recentNoteData.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               childAspectRatio: 0.75,
//               crossAxisCount: 2,
//               crossAxisSpacing: 20.0,
//               mainAxisSpacing: 20.0,
//             ),
//             itemBuilder: (context, index) => Container(
              
//                 decoration: BoxDecoration(
//               color: Colors.green,
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 child: Text(recentNoteData[index]),
//             ),
//           ),
//         ),