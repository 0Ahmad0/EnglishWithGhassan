
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectController extends GetxController {
  var whatsapp =
      'whatsapp://send?phone=962796102920&text=${Uri.parse('Hello Mr.Ghassan')}';
  var facebook = "http://facebook.com/ghassan.nakdali";
  var youtube = 'https://www.youtube.com/channel/UCPuAZHlOFy7zMmf8ZnmpD9A';
  var instagram =
      'https://www.instagram.com/english_with_ghassan?utm_medium=copy_link';
  var telegram = "https://t.me/Ghassan_Nakdali";

  void contactSoshial(url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        universalLinksOnly: true,
      );
    } else {
      Get.snackbar('There was a problem Are You have This APP?', url);
      throw 'There was a problem to open the url: $url';
    }
  }
}

