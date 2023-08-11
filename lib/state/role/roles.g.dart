// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getRoleHash() => r'9e4de0c320fcf642d398de88512feaff1638840d';

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

typedef GetRoleRef = AutoDisposeFutureProviderRef<Role>;

/// See also [getRole].
@ProviderFor(getRole)
const getRoleProvider = GetRoleFamily();

/// See also [getRole].
class GetRoleFamily extends Family<AsyncValue<Role>> {
  /// See also [getRole].
  const GetRoleFamily();

  /// See also [getRole].
  GetRoleProvider call(
    int roleId,
  ) {
    return GetRoleProvider(
      roleId,
    );
  }

  @override
  GetRoleProvider getProviderOverride(
    covariant GetRoleProvider provider,
  ) {
    return call(
      provider.roleId,
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
  String? get name => r'getRoleProvider';
}

/// See also [getRole].
class GetRoleProvider extends AutoDisposeFutureProvider<Role> {
  /// See also [getRole].
  GetRoleProvider(
    this.roleId,
  ) : super.internal(
          (ref) => getRole(
            ref,
            roleId,
          ),
          from: getRoleProvider,
          name: r'getRoleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getRoleHash,
          dependencies: GetRoleFamily._dependencies,
          allTransitiveDependencies: GetRoleFamily._allTransitiveDependencies,
        );

  final int roleId;

  @override
  bool operator ==(Object other) {
    return other is GetRoleProvider && other.roleId == roleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$rolesHash() => r'a5beada7816e2743dcf30ee9e31fa8717dd60e4b';

/// See also [roles].
@ProviderFor(roles)
final rolesProvider = AutoDisposeFutureProvider<List<Role>>.internal(
  roles,
  name: r'rolesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$rolesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RolesRef = AutoDisposeFutureProviderRef<List<Role>>;
String _$createRoleHash() => r'df71fbb19f475a3431563d9a213f0d4c42d4e5e9';
typedef CreateRoleRef = AutoDisposeFutureProviderRef<int>;

/// See also [createRole].
@ProviderFor(createRole)
const createRoleProvider = CreateRoleFamily();

/// See also [createRole].
class CreateRoleFamily extends Family<AsyncValue<int>> {
  /// See also [createRole].
  const CreateRoleFamily();

  /// See also [createRole].
  CreateRoleProvider call(
    String name,
  ) {
    return CreateRoleProvider(
      name,
    );
  }

  @override
  CreateRoleProvider getProviderOverride(
    covariant CreateRoleProvider provider,
  ) {
    return call(
      provider.name,
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
  String? get name => r'createRoleProvider';
}

/// See also [createRole].
class CreateRoleProvider extends AutoDisposeFutureProvider<int> {
  /// See also [createRole].
  CreateRoleProvider(
    this.name,
  ) : super.internal(
          (ref) => createRole(
            ref,
            name,
          ),
          from: createRoleProvider,
          name: r'createRoleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createRoleHash,
          dependencies: CreateRoleFamily._dependencies,
          allTransitiveDependencies:
              CreateRoleFamily._allTransitiveDependencies,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is CreateRoleProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$updateRoleHash() => r'ec65f6588caa51cdca1e2bc7b6011a457d10cf16';
typedef UpdateRoleRef = AutoDisposeFutureProviderRef<bool>;

/// See also [updateRole].
@ProviderFor(updateRole)
const updateRoleProvider = UpdateRoleFamily();

/// See also [updateRole].
class UpdateRoleFamily extends Family<AsyncValue<bool>> {
  /// See also [updateRole].
  const UpdateRoleFamily();

  /// See also [updateRole].
  UpdateRoleProvider call(
    UpdateRoleRequest dto,
  ) {
    return UpdateRoleProvider(
      dto,
    );
  }

  @override
  UpdateRoleProvider getProviderOverride(
    covariant UpdateRoleProvider provider,
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
  String? get name => r'updateRoleProvider';
}

/// See also [updateRole].
class UpdateRoleProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [updateRole].
  UpdateRoleProvider(
    this.dto,
  ) : super.internal(
          (ref) => updateRole(
            ref,
            dto,
          ),
          from: updateRoleProvider,
          name: r'updateRoleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateRoleHash,
          dependencies: UpdateRoleFamily._dependencies,
          allTransitiveDependencies:
              UpdateRoleFamily._allTransitiveDependencies,
        );

  final UpdateRoleRequest dto;

  @override
  bool operator ==(Object other) {
    return other is UpdateRoleProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$deleteRoleHash() => r'64f8d6a60eb5095c7cad643fb43ee33080501eec';
typedef DeleteRoleRef = AutoDisposeFutureProviderRef<bool>;

/// See also [deleteRole].
@ProviderFor(deleteRole)
const deleteRoleProvider = DeleteRoleFamily();

/// See also [deleteRole].
class DeleteRoleFamily extends Family<AsyncValue<bool>> {
  /// See also [deleteRole].
  const DeleteRoleFamily();

  /// See also [deleteRole].
  DeleteRoleProvider call(
    int roleId,
  ) {
    return DeleteRoleProvider(
      roleId,
    );
  }

  @override
  DeleteRoleProvider getProviderOverride(
    covariant DeleteRoleProvider provider,
  ) {
    return call(
      provider.roleId,
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
  String? get name => r'deleteRoleProvider';
}

/// See also [deleteRole].
class DeleteRoleProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [deleteRole].
  DeleteRoleProvider(
    this.roleId,
  ) : super.internal(
          (ref) => deleteRole(
            ref,
            roleId,
          ),
          from: deleteRoleProvider,
          name: r'deleteRoleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteRoleHash,
          dependencies: DeleteRoleFamily._dependencies,
          allTransitiveDependencies:
              DeleteRoleFamily._allTransitiveDependencies,
        );

  final int roleId;

  @override
  bool operator ==(Object other) {
    return other is DeleteRoleProvider && other.roleId == roleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$addRoleToUserHash() => r'1e550c61decd01958d80b9a0e29fb585987f763a';
typedef AddRoleToUserRef = AutoDisposeFutureProviderRef<bool>;

/// See also [addRoleToUser].
@ProviderFor(addRoleToUser)
const addRoleToUserProvider = AddRoleToUserFamily();

/// See also [addRoleToUser].
class AddRoleToUserFamily extends Family<AsyncValue<bool>> {
  /// See also [addRoleToUser].
  const AddRoleToUserFamily();

  /// See also [addRoleToUser].
  AddRoleToUserProvider call(
    AddRoleToUserRequest dto,
  ) {
    return AddRoleToUserProvider(
      dto,
    );
  }

  @override
  AddRoleToUserProvider getProviderOverride(
    covariant AddRoleToUserProvider provider,
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
  String? get name => r'addRoleToUserProvider';
}

/// See also [addRoleToUser].
class AddRoleToUserProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [addRoleToUser].
  AddRoleToUserProvider(
    this.dto,
  ) : super.internal(
          (ref) => addRoleToUser(
            ref,
            dto,
          ),
          from: addRoleToUserProvider,
          name: r'addRoleToUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addRoleToUserHash,
          dependencies: AddRoleToUserFamily._dependencies,
          allTransitiveDependencies:
              AddRoleToUserFamily._allTransitiveDependencies,
        );

  final AddRoleToUserRequest dto;

  @override
  bool operator ==(Object other) {
    return other is AddRoleToUserProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$removeRoleFromUserHash() =>
    r'363f963e2e53d3c1ad94c2720a207885a67a8cdb';
typedef RemoveRoleFromUserRef = AutoDisposeFutureProviderRef<bool>;

/// See also [removeRoleFromUser].
@ProviderFor(removeRoleFromUser)
const removeRoleFromUserProvider = RemoveRoleFromUserFamily();

/// See also [removeRoleFromUser].
class RemoveRoleFromUserFamily extends Family<AsyncValue<bool>> {
  /// See also [removeRoleFromUser].
  const RemoveRoleFromUserFamily();

  /// See also [removeRoleFromUser].
  RemoveRoleFromUserProvider call(
    RemoveRoleFromUserRequest dto,
  ) {
    return RemoveRoleFromUserProvider(
      dto,
    );
  }

  @override
  RemoveRoleFromUserProvider getProviderOverride(
    covariant RemoveRoleFromUserProvider provider,
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
  String? get name => r'removeRoleFromUserProvider';
}

/// See also [removeRoleFromUser].
class RemoveRoleFromUserProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [removeRoleFromUser].
  RemoveRoleFromUserProvider(
    this.dto,
  ) : super.internal(
          (ref) => removeRoleFromUser(
            ref,
            dto,
          ),
          from: removeRoleFromUserProvider,
          name: r'removeRoleFromUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$removeRoleFromUserHash,
          dependencies: RemoveRoleFromUserFamily._dependencies,
          allTransitiveDependencies:
              RemoveRoleFromUserFamily._allTransitiveDependencies,
        );

  final RemoveRoleFromUserRequest dto;

  @override
  bool operator ==(Object other) {
    return other is RemoveRoleFromUserProvider && other.dto == dto;
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
