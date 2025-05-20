import 'package:ecommerce_admin_panel/features/app_feature/global/services/network_services.dart';
import 'package:get_it/get_it.dart';
import 'features/products_feature/products_injection_container.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton<NetworkServices>(
    () => NetworkServicesImp(),
  );
  await productsInjectionContainer();
}
