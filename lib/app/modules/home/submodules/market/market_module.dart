import 'package:cadu_fifa/app/shared/players/player_repository.dart';

import 'market_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'market_page.dart';
import 'pages/second_page.dart';
import 'repositories/market_repository.dart';

class MarketModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MarketController,
        Bind((i) => PlayerRepository()),
        Bind((i) => MarketRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MarketPage()),
        ModularRouter("/second", child: (_, args) => SecondPage()),
      ];

  static Inject get to => Inject<MarketModule>.of();
}
