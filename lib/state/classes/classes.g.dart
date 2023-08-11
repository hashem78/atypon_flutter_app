// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUsersForClassHash() => r'6ed01a7b6a727c9622089af9d4525b1a45372af6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetUsersForClassRef = AutoDisposeFutureProviderRef<List<User>>;

/// See also [getUsersForClass].
@ProviderFor(getUsersForClass)
const getUsersForClassProvider = GetUsersForClassFamily();

/// See also [getUsersForClass].
class GetUsersForClassFamily extends Family<AsyncValue<List<User>>> {
  /// See also [getUsersForClass].
  const GetUsersForClassFamily();

  /// See also [getUsersForClass].
  GetUsersForClassProvider call(
    int classId,
  ) {
    return GetUsersForClassProvider(
      classId,
    );
  }

  @override
  GetUsersForClassProvider getProviderOverride(
    covariant GetUsersForClassProvider provider,
  ) {
    return call(
      provider.classId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUsersForClassProvider';
}

/// See also [getUsersForClass].
class GetUsersForClassProvider extends AutoDisposeFutureProvider<List<User>> {
  /// See also [getUsersForClass].
  GetUsersForClassProvider(
    this.classId,
  ) : super.internal(
          (ref) => getUsersForClass(
            ref,
            classId,
          ),
          from: getUsersForClassProvider,
          name: r'getUsersForClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUsersForClassHash,
          dependencies: GetUsersForClassFamily._dependencies,
          allTransitiveDependencies:
              GetUsersForClassFamily._allTransitiveDependencies,
        );

  final int classId;

  @override
  bool operator ==(Object other) {
    return other is GetUsersForClassProvider && other.classId == classId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, classId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$classesHash() => r'50c89f5fae998e006dad46e36b7bc2ee8b8d0a0e';

/// See also [classes].
@ProviderFor(classes)
final classesProvider = AutoDisposeFutureProvider<List<Class>>.internal(
  classes,
  name: r'classesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$classesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClassesRef = AutoDisposeFutureProviderRef<List<Class>>;
String _$classesForUserHash() => r'b0e9189fc2a9202dfd305c32579a2ca33df79ded';
typedef ClassesForUserRef = AutoDisposeFutureProviderRef<List<Class>>;

/// See also [classesForUser].
@ProviderFor(classesForUser)
const classesForUserProvider = ClassesForUserFamily();

/// See also [classesForUser].
class ClassesForUserFamily extends Family<AsyncValue<List<Class>>> {
  /// See also [classesForUser].
  const ClassesForUserFamily();

  /// See also [classesForUser].
  ClassesForUserProvider call(
    int id,
  ) {
    return ClassesForUserProvider(
      id,
    );
  }

  @override
  ClassesForUserProvider getProviderOverride(
    covariant ClassesForUserProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'classesForUserProvider';
}

/// See also [classesForUser].
class ClassesForUserProvider extends AutoDisposeFutureProvider<List<Class>> {
  /// See also [classesForUser].
  ClassesForUserProvider(
    this.id,
  ) : super.internal(
          (ref) => classesForUser(
            ref,
            id,
          ),
          from: classesForUserProvider,
          name: r'classesForUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$classesForUserHash,
          dependencies: ClassesForUserFamily._dependencies,
          allTransitiveDependencies:
              ClassesForUserFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is ClassesForUserProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$createClassHash() => r'fdfaaaf3c7e427b94c7934f274bff428b45503ac';
typedef CreateClassRef = AutoDisposeFutureProviderRef<int>;

/// See also [createClass].
@ProviderFor(createClass)
const createClassProvider = CreateClassFamily();

/// See also [createClass].
class CreateClassFamily extends Family<AsyncValue<int>> {
  /// See also [createClass].
  const CreateClassFamily();

  /// See also [createClass].
  CreateClassProvider call(
    CreateClassRequest dto,
  ) {
    return CreateClassProvider(
      dto,
    );
  }

  @override
  CreateClassProvider getProviderOverride(
    covariant CreateClassProvider provider,
  ) {
    return call(
      provider.dto,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createClassProvider';
}

/// See also [createClass].
class CreateClassProvider extends AutoDisposeFutureProvider<int> {
  /// See also [createClass].
  CreateClassProvider(
    this.dto,
  ) : super.internal(
          (ref) => createClass(
            ref,
            dto,
          ),
          from: createClassProvider,
          name: r'createClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createClassHash,
          dependencies: CreateClassFamily._dependencies,
          allTransitiveDependencies:
              CreateClassFamily._allTransitiveDependencies,
        );

  final CreateClassRequest dto;

  @override
  bool operator ==(Object other) {
    return other is CreateClassProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$updateClassHash() => r'f6d2550eb09240d908d53cf6c454c07a530fced1';
typedef UpdateClassRef = AutoDisposeFutureProviderRef<bool>;

/// See also [updateClass].
@ProviderFor(updateClass)
const updateClassProvider = UpdateClassFamily();

/// See also [updateClass].
class UpdateClassFamily extends Family<AsyncValue<bool>> {
  /// See also [updateClass].
  const UpdateClassFamily();

  /// See also [updateClass].
  UpdateClassProvider call(
    UpdateClassNameRequest dto,
  ) {
    return UpdateClassProvider(
      dto,
    );
  }

  @override
  UpdateClassProvider getProviderOverride(
    covariant UpdateClassProvider provider,
  ) {
    return call(
      provider.dto,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateClassProvider';
}

/// See also [updateClass].
class UpdateClassProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [updateClass].
  UpdateClassProvider(
    this.dto,
  ) : super.internal(
          (ref) => updateClass(
            ref,
            dto,
          ),
          from: updateClassProvider,
          name: r'updateClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateClassHash,
          dependencies: UpdateClassFamily._dependencies,
          allTransitiveDependencies:
              UpdateClassFamily._allTransitiveDependencies,
        );

  final UpdateClassNameRequest dto;

  @override
  bool operator ==(Object other) {
    return other is UpdateClassProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$deleteClassHash() => r'43ffbc4bdc3d292689523fabb173db79595dd772';
typedef DeleteClassRef = AutoDisposeFutureProviderRef<bool>;

/// See also [deleteClass].
@ProviderFor(deleteClass)
const deleteClassProvider = DeleteClassFamily();

/// See also [deleteClass].
class DeleteClassFamily extends Family<AsyncValue<bool>> {
  /// See also [deleteClass].
  const DeleteClassFamily();

  /// See also [deleteClass].
  DeleteClassProvider call(
    int classId,
  ) {
    return DeleteClassProvider(
      classId,
    );
  }

  @override
  DeleteClassProvider getProviderOverride(
    covariant DeleteClassProvider provider,
  ) {
    return call(
      provider.classId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteClassProvider';
}

/// See also [deleteClass].
class DeleteClassProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [deleteClass].
  DeleteClassProvider(
    this.classId,
  ) : super.internal(
          (ref) => deleteClass(
            ref,
            classId,
          ),
          from: deleteClassProvider,
          name: r'deleteClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteClassHash,
          dependencies: DeleteClassFamily._dependencies,
          allTransitiveDependencies:
              DeleteClassFamily._allTransitiveDependencies,
        );

  final int classId;

  @override
  bool operator ==(Object other) {
    return other is DeleteClassProvider && other.classId == classId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, classId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$addUserToClassHash() => r'dded0ecc236d2e551f026b45f8112b964a182d52';
typedef AddUserToClassRef = AutoDisposeFutureProviderRef<bool>;

/// See also [addUserToClass].
@ProviderFor(addUserToClass)
const addUserToClassProvider = AddUserToClassFamily();

/// See also [addUserToClass].
class AddUserToClassFamily extends Family<AsyncValue<bool>> {
  /// See also [addUserToClass].
  const AddUserToClassFamily();

  /// See also [addUserToClass].
  AddUserToClassProvider call(
    AddUserToClassRequest dto,
  ) {
    return AddUserToClassProvider(
      dto,
    );
  }

  @override
  AddUserToClassProvider getProviderOverride(
    covariant AddUserToClassProvider provider,
  ) {
    return call(
      provider.dto,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addUserToClassProvider';
}

/// See also [addUserToClass].
class AddUserToClassProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [addUserToClass].
  AddUserToClassProvider(
    this.dto,
  ) : super.internal(
          (ref) => addUserToClass(
            ref,
            dto,
          ),
          from: addUserToClassProvider,
          name: r'addUserToClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addUserToClassHash,
          dependencies: AddUserToClassFamily._dependencies,
          allTransitiveDependencies:
              AddUserToClassFamily._allTransitiveDependencies,
        );

  final AddUserToClassRequest dto;

  @override
  bool operator ==(Object other) {
    return other is AddUserToClassProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$removeUserFromClassHash() =>
    r'ed5903bbc30e92f187cca1166a789770c21c08a7';
typedef RemoveUserFromClassRef = AutoDisposeFutureProviderRef<bool>;

/// See also [removeUserFromClass].
@ProviderFor(removeUserFromClass)
const removeUserFromClassProvider = RemoveUserFromClassFamily();

/// See also [removeUserFromClass].
class RemoveUserFromClassFamily extends Family<AsyncValue<bool>> {
  /// See also [removeUserFromClass].
  const RemoveUserFromClassFamily();

  /// See also [removeUserFromClass].
  RemoveUserFromClassProvider call(
    RemoveUserFromClassRequest dto,
  ) {
    return RemoveUserFromClassProvider(
      dto,
    );
  }

  @override
  RemoveUserFromClassProvider getProviderOverride(
    covariant RemoveUserFromClassProvider provider,
  ) {
    return call(
      provider.dto,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'removeUserFromClassProvider';
}

/// See also [removeUserFromClass].
class RemoveUserFromClassProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [removeUserFromClass].
  RemoveUserFromClassProvider(
    this.dto,
  ) : super.internal(
          (ref) => removeUserFromClass(
            ref,
            dto,
          ),
          from: removeUserFromClassProvider,
          name: r'removeUserFromClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$removeUserFromClassHash,
          dependencies: RemoveUserFromClassFamily._dependencies,
          allTransitiveDependencies:
              RemoveUserFromClassFamily._allTransitiveDependencies,
        );

  final RemoveUserFromClassRequest dto;

  @override
  bool operator ==(Object other) {
    return other is RemoveUserFromClassProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
