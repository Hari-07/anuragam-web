import 'package:anuragam_website/views/homepage.dart';
import 'package:anuragam_website/views/message_viewer.dart';
import 'package:anuragam_website/views/submission_page.dart';
import 'package:go_router/go_router.dart';

class ANRRouter {
  static final GoRouter _router = GoRouter(
    routes: _routes,
    initialLocation: '/',
  );

  static final List<GoRoute> _routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/give',
      builder: (context, state) => const SubmissionPage(),
    ),
    GoRoute(
      path: '/receive',
      builder: (context, state) => const MessageViewer(),
    ),
  ];

  static get routes => _routes;
  static get router => _router;
}
