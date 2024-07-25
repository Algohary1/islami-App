import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class radioTab extends StatelessWidget {
  const radioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radioo.png',width: 412,height: 222,),
          SizedBox(
            height: 20,
          ),
          Text('إذاعة القرأن الكريم', style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600
          ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/buttons.png', width: 194,height: 41,),
        ],
      ),
    );
  }
}
