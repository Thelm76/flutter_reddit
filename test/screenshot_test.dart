import 'dart:io';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:flutter_reddit/view/home_page/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test2', (tester) async {
    await tester.pumpWidget(
      const HomeScreen(),
    );
    await tester.pump();

    final view = tester.binding.renderView;
    final layer = view.debugLayer as OffsetLayer;
    final image = await layer.toImage(const Rect.fromLTRB(0, 0, 3000, 2000));
    final bytes = await image.toByteData(format: ImageByteFormat.png);
    if (bytes != null) {
      final File file = File('test.png');
      file.openSync(mode: FileMode.write)
        ..writeFromSync(bytes.buffer.asUint8List())
        ..close();
    }
  });
}
