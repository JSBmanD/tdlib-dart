import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the supergroup is a forum; requires owner privileges in
/// the supergroup
/// Returns [Ok]
@immutable
class ToggleSupergroupIsForum extends TdFunction {
  const ToggleSupergroupIsForum({
    required this.supergroupId,
    required this.isForum,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [isForum] New value of is_forum. A supergroup can be converted to a forum,
  /// only if it has at least getOption("forum_member_count_min") members
  final bool isForum;

  static const String constructor = 'toggleSupergroupIsForum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'is_forum': isForum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
