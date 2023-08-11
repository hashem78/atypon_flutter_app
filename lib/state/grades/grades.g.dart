// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grades.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gradesForUserInClassHash() =>
    r'bbd6e45a3fda543917f245a67efcec6793071fe7';

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

typedef GradesForUserInClassRef = AutoDisposeFutureProviderRef<List<Grade>>;

/// See also [gradesForUserInClass].
@ProviderFor(gradesForUserInClass)
const gradesForUserInClassProvider = GradesForUserInClassFamily();

/// See also [gradesForUserInClass].
class GradesForUserInClassFamily extends Family<AsyncValue<List<Grade>>> {
  /// See also [gradesForUserInClass].
  const GradesForUserInClassFamily();

  /// See also [gradesForUserInClass].
  GradesForUserInClassProvider call(
    int classId,
    int userId,
  ) {
    return GradesForUserInClassProvider(
      classId,
      userId,
    );
  }

  @override
  GradesForUserInClassProvider getProviderOverride(
    covariant GradesForUserInClassProvider provider,
  ) {
    return call(
      provider.classId,
      provider.userId,
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
  String? get name => r'gradesForUserInClassProvider';
}

/// See also [gradesForUserInClass].
class GradesForUserInClassProvider
    extends AutoDisposeFutureProvider<List<Grade>> {
  /// See also [gradesForUserInClass].
  GradesForUserInClassProvider(
    this.classId,
    this.userId,
  ) : super.internal(
          (ref) => gradesForUserInClass(
            ref,
            classId,
            userId,
          ),
          from: gradesForUserInClassProvider,
          name: r'gradesForUserInClassProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gradesForUserInClassHash,
          dependencies: GradesForUserInClassFamily._dependencies,
          allTransitiveDependencies:
              GradesForUserInClassFamily._allTransitiveDependencies,
        );

  final int classId;
  final int userId;

  @override
  bool operator ==(Object other) {
    return other is GradesForUserInClassProvider &&
        other.classId == classId &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, classId.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$deleteGradeHash() => r'7f553d6e264cf0e11aa208647dd65d4149a714dd';
typedef DeleteGradeRef = AutoDisposeFutureProviderRef<bool>;

/// See also [deleteGrade].
@ProviderFor(deleteGrade)
const deleteGradeProvider = DeleteGradeFamily();

/// See also [deleteGrade].
class DeleteGradeFamily extends Family<AsyncValue<bool>> {
  /// See also [deleteGrade].
  const DeleteGradeFamily();

  /// See also [deleteGrade].
  DeleteGradeProvider call(
    DeleteGradeRequest dto,
  ) {
    return DeleteGradeProvider(
      dto,
    );
  }

  @override
  DeleteGradeProvider getProviderOverride(
    covariant DeleteGradeProvider provider,
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
  String? get name => r'deleteGradeProvider';
}

/// See also [deleteGrade].
class DeleteGradeProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [deleteGrade].
  DeleteGradeProvider(
    this.dto,
  ) : super.internal(
          (ref) => deleteGrade(
            ref,
            dto,
          ),
          from: deleteGradeProvider,
          name: r'deleteGradeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteGradeHash,
          dependencies: DeleteGradeFamily._dependencies,
          allTransitiveDependencies:
              DeleteGradeFamily._allTransitiveDependencies,
        );

  final DeleteGradeRequest dto;

  @override
  bool operator ==(Object other) {
    return other is DeleteGradeProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$updateGradeHash() => r'321f0dfe34b3e5fc8096a1d4fb152628e8f702ae';
typedef UpdateGradeRef = AutoDisposeFutureProviderRef<bool>;

/// See also [updateGrade].
@ProviderFor(updateGrade)
const updateGradeProvider = UpdateGradeFamily();

/// See also [updateGrade].
class UpdateGradeFamily extends Family<AsyncValue<bool>> {
  /// See also [updateGrade].
  const UpdateGradeFamily();

  /// See also [updateGrade].
  UpdateGradeProvider call(
    UpateGradeRequest dto,
  ) {
    return UpdateGradeProvider(
      dto,
    );
  }

  @override
  UpdateGradeProvider getProviderOverride(
    covariant UpdateGradeProvider provider,
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
  String? get name => r'updateGradeProvider';
}

/// See also [updateGrade].
class UpdateGradeProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [updateGrade].
  UpdateGradeProvider(
    this.dto,
  ) : super.internal(
          (ref) => updateGrade(
            ref,
            dto,
          ),
          from: updateGradeProvider,
          name: r'updateGradeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateGradeHash,
          dependencies: UpdateGradeFamily._dependencies,
          allTransitiveDependencies:
              UpdateGradeFamily._allTransitiveDependencies,
        );

  final UpateGradeRequest dto;

  @override
  bool operator ==(Object other) {
    return other is UpdateGradeProvider && other.dto == dto;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dto.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$createGradeHash() => r'a71361f3231f225a1fe8f327a6048138d80e1455';
typedef CreateGradeRef = AutoDisposeFutureProviderRef<bool>;

/// See also [createGrade].
@ProviderFor(createGrade)
const createGradeProvider = CreateGradeFamily();

/// See also [createGrade].
class CreateGradeFamily extends Family<AsyncValue<bool>> {
  /// See also [createGrade].
  const CreateGradeFamily();

  /// See also [createGrade].
  CreateGradeProvider call(
    CreateGradeRequest dto,
  ) {
    return CreateGradeProvider(
      dto,
    );
  }

  @override
  CreateGradeProvider getProviderOverride(
    covariant CreateGradeProvider provider,
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
  String? get name => r'createGradeProvider';
}

/// See also [createGrade].
class CreateGradeProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [createGrade].
  CreateGradeProvider(
    this.dto,
  ) : super.internal(
          (ref) => createGrade(
            ref,
            dto,
          ),
          from: createGradeProvider,
          name: r'createGradeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createGradeHash,
          dependencies: CreateGradeFamily._dependencies,
          allTransitiveDependencies:
              CreateGradeFamily._allTransitiveDependencies,
        );

  final CreateGradeRequest dto;

  @override
  bool operator ==(Object other) {
    return other is CreateGradeProvider && other.dto == dto;
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
