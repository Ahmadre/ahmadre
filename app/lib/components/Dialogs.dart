import 'dart:ui' as prefix0;
import 'package:app/services/i18n/MatakuLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// Provides templates of dialogs with which one can create dynamic dialogs
class CustomDialogs {
  /// Sets the standard Dialog shape (here rounded dialogs)
  ShapeBorder standardShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));

  /// Is used for Dialogs which calles API-Services directly
  GlobalKey<FormState> formKey = new GlobalKey();

  /// Holds the user-text for the form submition
  TextEditingController inputText = new TextEditingController();

  /// Holds the user-confirm-text for the form submition
  TextEditingController inputConfirmText = new TextEditingController();

  /// Clears the user inputs in dialogs where a form is used
  void clearInputText() {
    inputText.clear();
    inputConfirmText.clear();
  }

  /// Shows a dialog where the user is prompted to fill out a form
  Future showInputDialog(
      BuildContext context,
      String title,
      String content,
      String hintText,
      String confirmText,
      String cancelText,
      Function onConfirmClick,
      bool dismissible,
      {String inputType,
      bool obscureInputFields = false,
      bool isAuthScreen = false,
      String confirmHintText = ''}) async {
    inputType = inputType ?? 'text';
    inputText.clear();
    inputConfirmText.clear();
    await showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: standardShape,
          contentPadding: EdgeInsets.zero,
          content: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 25,
                      right: 25,
                    ),
                    child: new Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    child: Text(content),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Theme(
                          data: ThemeData().copyWith(
                            textTheme: Theme.of(context).textTheme,
                            platform: TargetPlatform.android,
                          ),
                          child: TextFormField(
                              validator: (String val) {
                                if (val.isEmpty) {
                                  return 'Feld darf nicht leer sein';
                                }
                                if (inputType == 'confirm' && !isAuthScreen) {
                                  if (inputText.text != inputConfirmText.text)
                                    return 'Eingaben stimmen nicht überein';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Theme.of(context).hintColor),
                                  filled: false,
                                  hintText: hintText),
                              maxLines: 1,
                              obscureText: obscureInputFields && !isAuthScreen,
                              controller: inputText))),
                  if (inputType == 'confirm')
                    Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Theme(
                            data: ThemeData().copyWith(
                              textTheme: Theme.of(context).textTheme,
                              platform: TargetPlatform.android,
                            ),
                            child: TextFormField(
                                validator: (String val) {
                                  if (val.isEmpty) {
                                    return 'Feld darf nicht leer sein';
                                  }
                                  if (inputType == 'confirm' && !isAuthScreen) {
                                    if (inputText.text != inputConfirmText.text)
                                      return 'Eingaben stimmen nicht überein';
                                  }
                                  return null;
                                },
                                maxLines: 1,
                                obscureText: obscureInputFields,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Theme.of(context).hintColor),
                                    filled: false,
                                    hintText: confirmHintText),
                                controller: inputConfirmText)))
                  else
                    Container(),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                              child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.resolveWith(
                                (states) => const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              confirmText,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).accentColor,
                                  fontSize: 18),
                            ),
                            onPressed: () => {
                              if (formKey.currentState.validate())
                                {
                                  onConfirmClick(
                                      inputText.text, inputConfirmText.text),
                                  Navigator.pop(context)
                                }
                            },
                          )),
                          Expanded(
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith(
                                  (states) => const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              child: Text(
                                cancelText,
                                style: TextStyle(
                                    color: Theme.of(context).errorColor,
                                    fontSize: 18),
                              ),
                              onPressed: () {
                                this.clearInputText();
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Asks the user to confirm the requested actions
  void showConfirmDialog(
    BuildContext context,
    String title,
    String content,
    String confirmText,
    String cancelText,
    Function onConfirmClick,
    Function onCancelClick, {
    Widget option,
    bool dismissible = false,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: prefix0.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: AlertDialog(
            shape: standardShape,
            contentPadding: EdgeInsets.zero,
            content: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 25,
                      right: 25,
                    ),
                    child: new Text(
                      title,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      content,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.84),
                      ),
                    ),
                  ),
                  if (option != null) option,
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                              child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.resolveWith(
                                (states) => const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              confirmText,
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: onConfirmClick,
                          )),
                          Expanded(
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith(
                                  (states) => const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              child: Text(
                                cancelText,
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: onCancelClick,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Shows an alert dialog which informs the user
  void showAlertDialog(
    BuildContext context,
    String title,
    String content,
    String confirmText, {
    Function onConfirmClick,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: prefix0.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: AlertDialog(
            shape: standardShape,
            contentPadding: EdgeInsets.zero,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 25,
                    right: 25,
                  ),
                  child: new Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: new Text(
                    content,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontFamily: 'LatoRegular'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith(
                          (states) => const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      child: Text(
                        confirmText,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: onConfirmClick ??
                          () {
                            Navigator.of(context).pop();
                          },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Shows a dialog with informations about the app
  void showAbout(BuildContext context, String title, String appVersion,
      String applicationLegalese, String content, String confirmText) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: prefix0.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: AlertDialog(
            shape: standardShape,
            contentPadding: EdgeInsets.zero,
            content: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                        right: 10,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: const ExactAssetImage(
                                    'assets/img/mataku_logo.png') ??
                                const FlutterLogo(),
                            backgroundColor: Colors.white),
                        title: new Text(title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20)),
                        subtitle: new Text(
                            applicationLegalese + '\n\n' + appVersion,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12)),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    child: new Text(
                      content,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.84),
                        fontFamily: 'LatoRegular',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.resolveWith(
                            (states) => const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          confirmText,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Shows a loading dialog while async calls are processed
  void showLoadingDialog(
      BuildContext context, Widget loadingWidget, bool dismissible) async {
    await showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: prefix0.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: AlertDialog(
            shape: standardShape,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 30,
                      maxWidth: 30,
                    ),
                    child: const CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: loadingWidget,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  ///
  /// Bottom-Sheet
  ///
  /// Shows a Cupertino Action-Sheet (on iOS) or a Material Bottom-Sheet which pops up from bottom
  void showActionSheet(
    BuildContext context, {
    Widget title,
    Widget message,
    List<Widget> actions,
    bool showCloseButton = true,
  }) async {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      await showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: title ?? null,
            message: message ?? null,
            cancelButton: showCloseButton
                ? CupertinoActionSheetAction(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      MatakuLocalizations.of(context).translate('CLOSE_LABEL'),
                    ),
                  )
                : null,
            actions: actions ?? [],
          );
        },
      );
    } else {
      await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(14),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                if (title != null)
                  ListTile(
                    title: title,
                  )
                else
                  Container(),
                if (message != null) ListTile(title: message) else Container(),
                if (actions != null) const Divider() else Container(),
                ...actions ?? [Container()],
                if (showCloseButton)
                  ListTile(
                    onTap: () => Navigator.of(context).pop(),
                    leading: Icon(Icons.arrow_downward),
                    title: Text(
                      MatakuLocalizations.of(context).translate('CLOSE_LABEL'),
                    ),
                  )
                else
                  Container()
              ],
            ),
          );
        },
      );
    }
  }
}
