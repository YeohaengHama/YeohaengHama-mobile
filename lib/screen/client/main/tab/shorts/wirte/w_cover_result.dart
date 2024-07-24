//
// class CoverResultPopup extends StatefulWidget {
//   const CoverResultPopup({super.key, required this.cover});
//
//   final File cover;
//
//   @override
//   State<CoverResultPopup> createState() => _CoverResultPopupState();
// }
//
// class _CoverResultPopupState extends State<CoverResultPopup> {
//   late final Uint8List _imagebytes = widget.cover.readAsBytesSync();
//   Size? _fileDimension;
//   late String _fileMbSize;
//
//   @override
//   void initState() {
//     super.initState();
//     _getImageDimension(
//       widget.cover,
//       onResult: (d) => setState(() => _fileDimension = d),
//     );
//     _fileMbSize = _fileMBSize(widget.cover);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(30),
//       child: Center(
//         child: Stack(
//           children: [
//             Image.memory(_imagebytes),
//             Positioned(
//               bottom: 0,
//               child: FileDescription(
//                 description: {
//                   'Cover path': widget.cover.path,
//                   'Cover ratio': Fraction.fromDouble(_fileDimension?.aspectRatio ?? 0).reduce().toString(),
//                   'Cover dimension': _fileDimension.toString(),
//                   'Cover size': _fileMbSize,
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class FileDescription extends StatelessWidget {
//   const FileDescription({super.key, required this.description});
//
//   final Map<String, String> description;
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTextStyle(
//       style: const TextStyle(fontSize: 11),
//       child: Container(
//         width: MediaQuery.of(context).size.width - 60,
//         padding: const EdgeInsets.all(10),
//         color: Colors.black.withOpacity(0.5),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: description.entries
//               .map(
//                 (entry) => Text.rich(
//               TextSpan(
//                 children: [
//                   TextSpan(
//                     text: '${entry.key}: ',
//                     style: const TextStyle(fontSize: 11),
//                   ),
//                   TextSpan(
//                     text: entry.value,
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: Colors.white.withOpacity(0.8),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//               .toList(),
//         ),
//       ),
//     );
//   }
// }
