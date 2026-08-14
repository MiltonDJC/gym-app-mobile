enum Environment { development, staging, production }

class EnvConfig {
  static const String currentEnv = String.fromEnvironment(
    'ENV',
    defaultValue: 'development',
  );

  static Environment get environment {
    switch (currentEnv) {
      case 'staging':
        return Environment.staging;
      case 'production':
        return Environment.production;
      case 'development':
      default:
        return Environment.development;
    }
  }

  static String get apiBaseUrl {
    switch (environment) {
      case Environment.staging:
        return 'https://staging-api.tudominio.com';
      case Environment.production:
        return 'https://api.tudominio.com';
      case Environment.development:
        return 'http://10.0.2.2:3000'; // Local IP for Android emulator
    }
  }
}

/*
 * If the API URL or any other environment data is needed, it is called as follows: final url = EnvConfig.apiBaseUrl
 * 
 * To run the app in your day-to-day workflow pointing the development environment:
 * -> flutter run --dart-define=ENV=development
 * 
 * To run or compile pointing the staging environment: -> flutter run --dart-define=ENV=staging
 * 
 * To run or compile pointing the production environment: -> flutter run --dart-define=ENV=production
 * (Or generate the production APK/App Bundle: -> flutter build apk --dart-define-=ENV=production)
 * 
*/
