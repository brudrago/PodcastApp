import 'package:flutter_test/flutter_test.dart';
import 'package:podcast_app/app/podcast_app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const PodcastApp());
  });
}
