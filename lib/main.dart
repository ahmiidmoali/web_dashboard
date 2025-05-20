import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/dashboard_page.dart';
<<<<<<< HEAD
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/categories/categories_view/categories_view_cubit.dart';
=======
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/products/products_view_all_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'routes/on_generate_routes.dart';
import 'main_injection_container.dart' as di;

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await di.init();
  runApp(const MyApp());
}

//flutter run -d chrome --web-renderer html
//flutter build web --web-renderer html
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<ProductsViewAllCubit>(),
        ),
        BlocProvider(
          create: (context) => di.sl<CategoriesViewCubit>(),
        ),
      ],
=======
    return BlocProvider(
      create: (context) => di.sl<ProductsViewAllCubit>(),
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
      child: MaterialApp(
        onGenerateRoute: OnGenerateRoutes.route,
        routes: {
          "/": (context) => const DashboardPage(
                currentIndex: 0,
              ),
          // (BuildContext context) {
          //   if (sharedPreferences.getString(AppSharedKeys.id) != null) {
          //     return const HomeScreen();
          //   } else {
          //     return const LanguagePage();
          //   }
          // }
        },
      ),
    );
  }
}
