import 'dart:io';

export 'theme/color/abs_theme_colors.dart';
export 'theme/shadows/abs_theme_shadows.dart';

const jtServer ='http://172.16.111.225:8080';
const basePath = 'assets/image';
const serverUrl = 'http://43.202.208.22:8080/api';
// const serverUrl = 'http://172.16.111.103:8080/api';
// const serverUrl = 'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';
const chatServerUrl = 'http://43.202.208.22:8080';
final int portNumber = int.parse(Platform.environment['APP_PORT'] ?? '443');
const  socketUrl = 'wss://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app:433';
