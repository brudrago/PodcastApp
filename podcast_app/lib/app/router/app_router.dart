import 'package:go_router/go_router.dart';
import 'package:podcast_app/features/details/screen/episode_details_screen.dart';
import 'package:podcast_app/features/favorites/screen/favorites_screen.dart';
import 'package:podcast_app/features/presentation/screens/home_screen.dart';
import 'package:podcast_app/features/presentation/screens/profile_screen.dart';
import 'package:podcast_app/features/sections/screen/sections_screen.dart';
import '../navigation/main_shell.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) {
                return const HomeScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/sections',
              builder: (context, state) {
                return const SectionsScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) {
                return const FavoritesScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) {
                return const ProfileScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/episode-details',
              builder: (context, state) {
                final id = state.uri.queryParameters['id'] ?? '';
                return EpisodeDetailsScreen(id: id);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
