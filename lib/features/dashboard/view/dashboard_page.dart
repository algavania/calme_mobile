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
      routes: const [
        HomeRoute(),
        MeditationRoute(),
        ArticleRoute(),
        JournalRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(UniconsLine.estate),
              label: AppLocalizations.of(context).home,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.headphones_alt),
              label: AppLocalizations.of(context).meditation,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.newspaper),
              label: AppLocalizations.of(context).article,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.file_alt),
              label: AppLocalizations.of(context).journal,
            ),
            NavigationDestination(
              icon: const Icon(UniconsLine.user),
              label: AppLocalizations.of(context).profile,
            ),
          ],
        );
      },
    );
  }
}
