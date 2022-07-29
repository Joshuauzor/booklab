import 'package:booklab/core/core.dart';
import 'package:flutter/cupertino.dart';

class BusyButton extends StatefulWidget {
  const BusyButton({
    Key? key,
    this.deactivate = false,
    required this.title,
    required this.onpress,
    this.width,
    this.height,
    this.loading = false,
    this.fontSize = 16,
  }) : super(key: key);
  final String title;
  final bool? deactivate;
  final bool loading;

  final VoidCallback onpress;
  final double? width;
  final double? height;
  final double fontSize;
  @override
  State<BusyButton> createState() => _BusyButtonState();
}

class _BusyButtonState extends State<BusyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.deactivate == true ? null : widget.onpress,
      child: Container(
        height: widget.height ?? 55,
        width: widget.width ?? double.infinity,
        decoration: BoxDecoration(
          color: widget.deactivate == true
              ? AppColors.deactivatedColor
              : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              blurRadius: 24,
              offset: Offset(4, 8),
              color: AppColors.twenntyFiveK,
            )
          ],
        ),
        child: Center(
          child: widget.loading
              ? const CupertinoActivityIndicator()
              : Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppFonts.urbanist,
                  ),
                ),
        ),
      ),
    );
  }
}

// class SecondaryBusyButton extends StatefulWidget {
//   const SecondaryBusyButton({
//     Key? key,
//     required this.title,
//     required this.onpress,
//     this.width,
//   }) : super(key: key);
//   final String title;

//   final VoidCallback onpress;
//   final double? width;
//   @override
//   State<SecondaryBusyButton> createState() => _SecondaryBusyButtonState();
// }

// class _SecondaryBusyButtonState extends State<SecondaryBusyButton> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onpress,
//       child: Container(
//         height: 58,
//         width: widget.width ?? double.infinity,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(
//             color: const Color(0xffEBEAED),
//           ),
//         ),
//         child: Center(
//           child: Text(
//             widget.title,
//             style: GoogleFonts.manrope(
//               fontSize: 16,
//               color: const Color(0xff25324b),
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
