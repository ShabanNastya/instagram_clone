import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instagram_clone/presentation/post/core/post/post_bloc.dart';
import 'package:instagram_clone/presentation/post/ui/add_post_page.dart';
import 'package:instagram_clone/shared/app_themes.dart';
import 'package:instagram_clone/domain/models/user.dart';
import 'package:instagram_clone/presentation/login/core/auth/auth_bloc.dart';
import 'package:instagram_clone/presentation/login/ui/login_page.dart';
import 'package:instagram_clone/presentation/post/ui/post_page.dart';
import 'package:instagram_clone/presentation/profile/core/user/user_bloc.dart';
import 'package:instagram_clone/presentation/profile/core/user_detailed/user_detailed_bloc.dart';
import 'package:instagram_clone/presentation/profile/ui/profile_page.dart';
import 'package:instagram_clone/presentation/splash/splash_page.dart';
import 'package:instagram_clone/shared/core/blocs/app/app_bloc.dart';
import 'package:instagram_clone/shared/core/blocs/connection/connectivity_bloc.dart';
import 'package:instagram_clone/shared/core/blocs/theme/theme_bloc.dart';
import 'package:provider/provider.dart';
import 'data/repository/firebase_auth_repository.dart';
import 'data/repository/firebase_post_repository.dart';
import 'data/repository/user_repository_impl.dart';
import 'domain/repository/user_repository.dart';
import 'l10n/gen/app_localizations.dart';
import 'presentation/chat/chat_page.dart';
import 'presentation/login/ui/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initDependencies();
  runApp(const MyAppProvider());
}

Future<void> initDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAppAdapter());
  await Hive.openBox<UserApp>('users');
}

class MyAppProvider extends StatelessWidget {
  const MyAppProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthRepository firebaseAuthRepository =
        FirebaseAuthRepository(FirebaseAuth.instance);
    final UserRepository userRepositoryImpl =
        UserRepositoryImpl(Hive.box('users'));
    final FirebasePostRepository firebasePostRepository =
        FirebasePostRepository();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(firebaseAuthRepository)..checkAuth(),
        ),
        BlocProvider(
          create: (context) => UserBloc(userRepositoryImpl)..getInfo(),
        ),
        BlocProvider(
          create: (context) => UserDetailedBloc(userRepositoryImpl),
        ),
        BlocProvider(
          create: (context) => PostBloc(firebasePostRepository),
        ),
        BlocProvider(
          create: (context) => ConnectivityBloc(),
        ),
      ],
      child: RepositoryProvider.value(
        value: firebaseAuthRepository,

        ///Look at this moment
        //value: userRepositoryImpl,
        child: MyApp(),
      ),
    );
  }
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

NavigatorState get navigator => navigatorKey.currentState!;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocListener<ConnectivityBloc, ConnectivityState>(
          listener: (context, state) {
            ScaffoldMessengerState scaffoldMessengerState =
                ScaffoldMessenger.of(context);
            //final connectivityResult = context.read<ConnectivityBloc>();
            if (state == ConnectivityStatus.error) {
              scaffoldMessengerState.showSnackBar(const SnackBar(
                content: Text('error'),
              ));
            }
            if (state == ConnectivityStatus.success) {}
          },
          child: MaterialApp(
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: state.themeMode,
            navigatorKey: navigatorKey,
            useInheritedMediaQuery: kIsWeb,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''),
              Locale('ru', ''),
              Locale('fr', ''),
            ],
            home: const SplashPage(),
            builder: (ctx, child) {
              return BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state.authStatus == AuthStatus.auth) {
                    context.read<AppBloc>().onAuthSuccess(state.userApp!);
                    state.userApp;
                  } else if (state.authStatus == AuthStatus.unauth) {
                    context.read<AppBloc>().onUnauthenticated();
                  }
                },
                child: BlocListener<AppBloc, AppState>(
                  listener: (context, state) {
                    if (state.appStatus == AppStatus.auth) {
                      navigator.pushReplacement(MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                    } else if (state.appStatus == AppStatus.unauth) {
                      navigator.pushReplacement(MaterialPageRoute(
                          builder: (context) => const Login()));
                    } else {
                      (print("error"));
                    }
                  },
                  child: child,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectIndex = 0;
  bool _isThemeSwitch = true;

  static const List<Widget> _bottomItems = <Widget>[
    PostPage(),
    ChatPage(),
    AddPostPage(),
  ];

  void _select(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).colorScheme.primary),
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context)!.welcome +
                        " " +
                        FirebaseAuth.instance.currentUser!.email.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  trailing: IconButton(
                      color: Theme.of(context).colorScheme.onPrimary,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close)),
                )),
            ListTile(
              title: Text(AppLocalizations.of(context)!.username),
              subtitle:
                  Text(FirebaseAuth.instance.currentUser!.email.toString()),
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.themeMode),
              trailing: Switch(
                value: _isThemeSwitch,
                onChanged: (val) {
                  if (_isThemeSwitch) {
                    context.read<ThemeBloc>().switchToDark();
                  } else {
                    context.read<ThemeBloc>().switchToLight();
                  }
                  _isThemeSwitch = val;
                  setState(() {});
                },
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context)!.editYourProfile),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ProfilePage()));
                    },
                    child: Text(AppLocalizations.of(context)!.goToProfile),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text(
                  AppLocalizations.of(context)!.signOut,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Clone'),
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
      ),
      body: _bottomItems[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.post,
              icon: const Icon(Icons.post_add)),
          BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.chat,
              icon: const Icon(Icons.chat)),
          BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.post,
              icon: const Icon(Icons.add)),
        ],
        currentIndex: selectIndex,
        onTap: _select,
      ),
    );
  }
}
