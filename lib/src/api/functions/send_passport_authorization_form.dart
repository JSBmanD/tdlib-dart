import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a Telegram Passport authorization form, effectively sharing data
/// with the service. This method must be called after
/// getPassportAuthorizationFormAvailableElements if some previously available
/// elements are going to be reused
/// Returns [Ok]
@immutable
class SendPassportAuthorizationForm extends TdFunction {
  const SendPassportAuthorizationForm({
    required this.autorizationFormId,
    required this.types,
  });

  /// [autorizationFormId] Authorization form identifier
  final int autorizationFormId;

  /// [types] Types of Telegram Passport elements chosen by user to complete the
  /// authorization form
  final List<PassportElementType> types;

  static const String constructor = 'sendPassportAuthorizationForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'autorization_form_id': autorizationFormId,
        'types': types.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
