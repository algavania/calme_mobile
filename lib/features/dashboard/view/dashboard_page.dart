import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        const MeditationRoute(),
        const ArticleRoute(),
        const JournalRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(UniconsLine.estate),
              label: context.l10n.home,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.headphones_alt),
              label: context.l10n.meditation,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.newspaper),
              label: context.l10n.article,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.file_alt),
              label: context.l10n.journal,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.user),
              label: context.l10n.profile,
            ),
          ],
        );
      },
    );
  }
}
