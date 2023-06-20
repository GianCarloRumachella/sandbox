import 'package:flutter_modular/flutter_modular.dart';
import 'package:sandbox/app_routes.dart';
import 'package:sandbox/modules/home/presentation/controllers/home_controller.dart';
import 'package:sandbox/modules/home/presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<HomeController>((i) => HomeController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initialRoute,
          child: (context, args) => HomePage(),
        )
      ];
}
