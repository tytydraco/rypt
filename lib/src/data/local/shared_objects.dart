import 'package:shared_objects/shared_objects.dart';

/// A container that holds objects that extend [SharedObjectBase].
class SharedObjects {
  /// The list of saved exercise names.
  final exercisesNames = SharedStringList('exercises_names');
}
