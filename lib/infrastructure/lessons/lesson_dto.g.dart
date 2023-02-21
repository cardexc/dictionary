// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetLessonDtoCollection on Isar {
  IsarCollection<LessonDto> get lessonDtos => this.collection();
}

const LessonDtoSchema = CollectionSchema(
  name: r'LessonDto',
  id: 1679558238089234781,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.object,
      target: r'UniqueId',
    ),
    r'title': PropertySchema(
      id: 1,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _lessonDtoEstimateSize,
  serialize: _lessonDtoSerialize,
  deserialize: _lessonDtoDeserialize,
  deserializeProp: _lessonDtoDeserializeProp,
  idName: r'databaseId',
  indexes: {},
  links: {
    r'words': LinkSchema(
      id: 161607368204522834,
      name: r'words',
      target: r'WordDto',
      single: false,
    )
  },
  embeddedSchemas: {r'UniqueId': UniqueIdSchema},
  getId: _lessonDtoGetId,
  getLinks: _lessonDtoGetLinks,
  attach: _lessonDtoAttach,
  version: '3.0.5',
);

int _lessonDtoEstimateSize(
  LessonDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 +
          UniqueIdSchema.estimateSize(value, allOffsets[UniqueId]!, allOffsets);
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _lessonDtoSerialize(
  LessonDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<UniqueId>(
    offsets[0],
    allOffsets,
    UniqueIdSchema.serialize,
    object.id,
  );
  writer.writeString(offsets[1], object.title);
}

LessonDto _lessonDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LessonDto(
    databaseId: id,
    id: reader.readObjectOrNull<UniqueId>(
      offsets[0],
      UniqueIdSchema.deserialize,
      allOffsets,
    ),
    title: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _lessonDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<UniqueId>(
        offset,
        UniqueIdSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _lessonDtoGetId(LessonDto object) {
  return object.databaseId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _lessonDtoGetLinks(LessonDto object) {
  return [object.words];
}

void _lessonDtoAttach(IsarCollection<dynamic> col, Id id, LessonDto object) {
  object.databaseId = id;
  object.words.attach(col, col.isar.collection<WordDto>(), r'words', id);
}

extension LessonDtoQueryWhereSort
    on QueryBuilder<LessonDto, LessonDto, QWhere> {
  QueryBuilder<LessonDto, LessonDto, QAfterWhere> anyDatabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LessonDtoQueryWhere
    on QueryBuilder<LessonDto, LessonDto, QWhereClause> {
  QueryBuilder<LessonDto, LessonDto, QAfterWhereClause> databaseIdEqualTo(
      Id databaseId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: databaseId,
        upper: databaseId,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterWhereClause> databaseIdNotEqualTo(
      Id databaseId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: databaseId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: databaseId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: databaseId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: databaseId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterWhereClause> databaseIdGreaterThan(
      Id databaseId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: databaseId, includeLower: include),
      );
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterWhereClause> databaseIdLessThan(
      Id databaseId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: databaseId, includeUpper: include),
      );
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterWhereClause> databaseIdBetween(
    Id lowerDatabaseId,
    Id upperDatabaseId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerDatabaseId,
        includeLower: includeLower,
        upper: upperDatabaseId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LessonDtoQueryFilter
    on QueryBuilder<LessonDto, LessonDto, QFilterCondition> {
  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> databaseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'databaseId',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition>
      databaseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'databaseId',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> databaseIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'databaseId',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition>
      databaseIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'databaseId',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> databaseIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'databaseId',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> databaseIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'databaseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension LessonDtoQueryObject
    on QueryBuilder<LessonDto, LessonDto, QFilterCondition> {
  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> id(
      FilterQuery<UniqueId> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'id');
    });
  }
}

extension LessonDtoQueryLinks
    on QueryBuilder<LessonDto, LessonDto, QFilterCondition> {
  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> words(
      FilterQuery<WordDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'words');
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> wordsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'words', length, true, length, true);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> wordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'words', 0, true, 0, true);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> wordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'words', 0, false, 999999, true);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> wordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'words', 0, true, length, include);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition>
      wordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'words', length, include, 999999, true);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterFilterCondition> wordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'words', lower, includeLower, upper, includeUpper);
    });
  }
}

extension LessonDtoQuerySortBy on QueryBuilder<LessonDto, LessonDto, QSortBy> {
  QueryBuilder<LessonDto, LessonDto, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension LessonDtoQuerySortThenBy
    on QueryBuilder<LessonDto, LessonDto, QSortThenBy> {
  QueryBuilder<LessonDto, LessonDto, QAfterSortBy> thenByDatabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseId', Sort.asc);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterSortBy> thenByDatabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseId', Sort.desc);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<LessonDto, LessonDto, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension LessonDtoQueryWhereDistinct
    on QueryBuilder<LessonDto, LessonDto, QDistinct> {
  QueryBuilder<LessonDto, LessonDto, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension LessonDtoQueryProperty
    on QueryBuilder<LessonDto, LessonDto, QQueryProperty> {
  QueryBuilder<LessonDto, int, QQueryOperations> databaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'databaseId');
    });
  }

  QueryBuilder<LessonDto, UniqueId?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LessonDto, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
