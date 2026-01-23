/**
 * Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
 */


void main(){
  
  Map<String, String?> env = {
  'app_name': 'MyService',
  'mode': null,       
  'region': 'me',     
  'debug': 'false',
  };

  String appName = env['app_name'] ?? 'UnknownApp';
  String mode = env['mode'] ?? 'dev';
  String region = env['region'] ?? 'global';
  String debugStr = env['debug'] ?? 'true';

  print('APP_NAME: ${appName.toUpperCase()}');
  print('MODE: ${mode.toUpperCase()}');
  print('REGION: ${region.toUpperCase()}');
  print('DEBUG: ${debugStr.toUpperCase()}');

  bool isProd = mode.toLowerCase() == 'prod';
  bool debugOff = debugStr.toLowerCase() == 'false';

  if (isProd && debugOff) {
    print('Prod ready');
  } else {
    print('Non-prod');
  }

}