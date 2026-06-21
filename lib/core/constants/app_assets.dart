import 'package:flutter/foundation.dart' show kIsWeb;

abstract class AppAssets {
  static const baseIcon = kIsWeb ? 'icons' : 'assets/icons';
  static const baseImage = kIsWeb ? 'images' : 'assets/images';

  /*icons */
  static const add = '$baseIcon/add.png';
  static const arrowDown = '$baseIcon/arrow_down.png';
  static const arrowRight = '$baseIcon/arrow_right.png';
  static const arrowUp = '$baseIcon/arrow_up.png';
  static const at = '$baseIcon/at.png';
  static const bagBlue = '$baseIcon/bag_blue.png';
  static const bagOrange = '$baseIcon/bag_orange.png';
  static const camera = '$baseIcon/camera.png';
  static const cartMark = '$baseIcon/cart_mark.png';
  static const cart = '$baseIcon/cart.png';
  static const categories = '$baseIcon/categories.png';
  static const clock1 = '$baseIcon/clock (1).png';
  static const clock = '$baseIcon/clock.png';
  static const close = '$baseIcon/close.png';
  static const close1 = '$baseIcon/close1.png';
  static const delete = '$baseIcon/delete.png';
  static const eyeSlash = '$baseIcon/eye-slash.png';
  static const eye = '$baseIcon/eye.png';
  static const filterIcon = '$baseIcon/filter Icon.png';
  static const heartFilled = '$baseIcon/heart_filled.png';
  static const heartOutlinedMark = '$baseIcon/heart_outlined_mark.png';
  static const heartOutlined = '$baseIcon/heart_outlined.png';
  static const homeMark = '$baseIcon/home_mark.png';
  static const home = '$baseIcon/home.png';
  static const iconFeatherCheck = '$baseIcon/icon feather-check.png';
  static const iconIonicIosShareAlt = '$baseIcon/icon ionic-ios-share-alt.png';
  static const iconMaterialEdit = '$baseIcon/icon material-edit.png';
  static const imageIcon = '$baseIcon/image Icon.png';
  static const lockBlue = '$baseIcon/lock_blue.png';
  static const menuIcon = '$baseIcon/menu Icon.png';
  static const message = '$baseIcon/message.png';
  static const plus = '$baseIcon/plus.png';
  static const profile1 = '$baseIcon/profile (1).png';
  static const profileMark = '$baseIcon/profile_mark.png';
  static const profile = '$baseIcon/profile.png';
  static const settings = '$baseIcon/settings.png';
  static const starFull = '$baseIcon/star_full.png';
  static const star = '$baseIcon/star.png';
  static const subtract = '$baseIcon/subtract.png';
  static const voucher = '$baseIcon/voucher.png';

  /*images */
  static const artist = '$baseImage/artist.svg';
  static const bag = '$baseImage/bag.svg';
  static const bubble1 = '$baseImage/bubble1.svg';
  static const bubble2 = '$baseImage/bubble2.svg';
  static const bubble3 = '$baseImage/bubble3.svg';
}
