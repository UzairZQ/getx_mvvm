import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_Us': {
          'email_hint': 'Enter Email',
          'password_hint': 'Enter Password',
          'internet_exception':
              'Unable to find results, \nPlease check your Internet connection',
          'general_exception':
              'Unable to process the request, \nPlease try again',
          'login': 'Login',
          'welcome': 'Welcome Again'
        },
        'ur_PK': {'email_hint': 'ای میل درج کریں۔'}
      };
}
