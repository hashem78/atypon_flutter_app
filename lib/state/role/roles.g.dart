// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
