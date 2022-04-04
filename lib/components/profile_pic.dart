import 'package:flutter/material.dart';
import 'package:irecognize/utils/constants.dart';
import 'package:irecognize/utils/theme.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    this.small = false,
    this.imageUrl,
  }) : super(key: key);

  final bool small;
  final String? imageUrl;

  double getSize() {
    return !small ? PROFILE_PIC_DIMENS : PROFILE_PIC_DIMENS_SM;
  }

  Widget getCustomImage() {
    return ClipRRect(
      child: Image.network(
        imageUrl!,
        errorBuilder: (context, error, stackTrace) => getDefaultImage(),
        width: getSize(),
        height: getSize(),
      ),
      borderRadius: BorderRadius.circular(CIRCLE_BORDER_RADIUS),
    );
  }

  Widget getDefaultImage() {
    return FittedBox(
      child: Icon(Icons.account_circle,
          color: colorScheme.primary, size: getSize()),
    );
    // return Icon(Icons.account_circle,
    //     color: colorScheme.primary, size: getSize() + 10.0);
  }

  @override
  Widget build(BuildContext context) {
    return imageUrl != null ? getCustomImage() : getDefaultImage();
  }
}
