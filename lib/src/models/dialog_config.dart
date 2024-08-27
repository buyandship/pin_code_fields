part of pin_code_fields;

class DialogConfig {
  /// title of the [AlertDialog] while pasting the code. Default to [Paste Code]
  final String? dialogTitle;

  /// content of the [AlertDialog] while pasting the code. Default to ["Do you want to paste this code "]
  final String? dialogContent;

  /// Affirmative action text for the [AlertDialog]. Default to "Paste"
  final String? affirmativeText;

  /// Negative action text for the [AlertDialog]. Default to "Cancel"
  final String? negativeText;

  // Builds content inside the dialog
  final Widget? Function(String?)? contentBuilder;

  /// The default dialog theme, should it be iOS or other(including web and Android)
  final PinCodePlatform platform;
  DialogConfig._internal({
    this.dialogContent,
    this.dialogTitle,
    this.affirmativeText,
    this.negativeText,
    this.contentBuilder,
    this.platform = PinCodePlatform.other,
  });

  factory DialogConfig({
    String? affirmativeText,
    String? dialogContent,
    String? dialogTitle,
    String? negativeText,
    Widget? Function(String?)? contentBuilder,
    PinCodePlatform? platform,
  }) {
    return DialogConfig._internal(
      affirmativeText: affirmativeText ?? "Paste",
      dialogContent: dialogContent ?? "Do you want to paste this code ",
      dialogTitle: dialogTitle ?? "Paste Code",
      negativeText: negativeText ?? "Cancel",
      contentBuilder: contentBuilder ?? (p0) => SizedBox.shrink(),
      platform: platform ?? PinCodePlatform.other,
    );
  }
}
