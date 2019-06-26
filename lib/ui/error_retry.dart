import 'package:bitrise_client/res/colors.dart';
import 'package:bitrise_client/res/dimensions.dart';
import 'package:bitrise_client/res/images.dart';
import 'package:flutter/material.dart';

class ErrorRetryWidget extends StatelessWidget {
  final String action;
  final String message;
  final Function listener;

  const ErrorRetryWidget({Key key, this.action, this.message, this.listener})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(Dimens.keyline_main, Dimens.space_xxxlarge,
            Dimens.keyline_main, Dimens.keyline_main),
        decoration: BoxDecoration(color: AppColors.getPrimaryColor()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Images.error,
              height: Dimens.image_small,
            ),
            SizedBox(
              height: Dimens.space_xxlarge,
            ),
            Text(
              message,
              style: TextStyle(
                  fontSize: Dimens.text_normal, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Dimens.space_xxlarge,
            ),
            Container(
              height: Dimens.button_height,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0)),
                      padding: EdgeInsets.all(Dimens.keyline_main),
                      child: Text(
                        action.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: Dimens.text_medium,
                            fontWeight: FontWeight.w700),
                      ),
                      color: AppColors.accentColor,
                      onPressed: () {
                        if (listener != null) {
                          listener();
                        }
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
