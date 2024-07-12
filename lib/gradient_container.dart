import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  // or : super(key: key); //2nd key is the key {key} this one

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    //metadata object
    //must return a widget as it is the return type of build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  } //function added to a  class which is called by flutter automatically
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//   // or : super(key: key); //2nd key is the key {key} this one

//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     //metadata object
//     //must return a widget as it is the return type of build
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   } //function added to a  class which is called by flutter automatically
// }
