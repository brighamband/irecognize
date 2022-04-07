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

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.network(
        imageUrl ?? DEFAULT_IMG_URL,
        errorBuilder: (context, error, stackTrace) => Icon(Icons.account_circle,
            color: colorScheme.primary, size: getSize()),
        width: getSize(),
        height: getSize(),
      ),
      borderRadius: BorderRadius.circular(CIRCLE_BORDER_RADIUS),
    );
  }
}
