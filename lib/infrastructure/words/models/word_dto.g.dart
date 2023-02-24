// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetWordDtoCollection on Isar {
  IsarCollection<WordDto> get wordDtos => this.collection();
}

const WordDtoSchema = CollectionSchema(
  name: r'WordDto',
  id: -7790229370918348502,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.object,
      target: r'UniqueId',
    ),
    r'lessonId': PropertySchema(
      id: 1,
      name: r'lessonId',
      type: IsarType.object,
      target: r'UniqueId',
    ),
    r'pl': PropertySchema(
      id: 2,
      name: r'pl',
      type: IsarType.string,
    ),
    r'ru': PropertySchema(
      id: 3,
      name: r'ru',
      type: IsarType.string,
    ),
    r'sentence': PropertySchema(
      id: 4,
      name: r'sentence',
      type: IsarType.bool,
    ),
    r'uk': PropertySchema(
      id: 5,
      name: r'uk',
      type: IsarType.string,
    )
  },
  estimateSize: _wordDtoEstimateSize,
  serialize: _wordDtoSerialize,
  deserialize: _wordDtoDeserialize,
  deserializeProp: _wordDtoDeserializeProp,
  idName: r'databaseId',
  indexes: {},
  links: {
    r'lesson': LinkSchema(
      id: 8025135718747353392,
      name: r'lesson',
      target: r'LessonDto',
      single: true,
      linkName: r'words',
    )
  },
  embeddedSchemas: {r'UniqueId': UniqueIdSchema},
  getId: _wordDtoGetId,
  getLinks: _wordDtoGetLinks,
  attach: _wordDtoAttach,
  version: '3.0.5',
);

int _wordDtoEstimateSize(
  WordDto object,
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
    final value = object.lessonId;
    if (value != null) {
      bytesCount += 3 +
          UniqueIdSchema.estimateSize(value, allOffsets[UniqueId]!, allOffsets);
    }
  }
  {
    final value = object.pl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ru;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uk;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _wordDtoSerialize(
  WordDto object,
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
  writer.writeObject<UniqueId>(
    offsets[1],
    allOffsets,
    UniqueIdSchema.serialize,
    object.lessonId,
  );
  writer.writeString(offsets[2], object.pl);
  writer.writeString(offsets[3], object.ru);
  writer.writeBool(offsets[4], object.sentence);
  writer.writeString(offsets[5], object.uk);
}

WordDto _wordDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WordDto(
    databaseId: id,
    id: reader.readObjectOrNull<UniqueId>(
      offsets[0],
      UniqueIdSchema.deserialize,
      allOffsets,
    ),
    lessonId: reader.readObjectOrNull<UniqueId>(
      offsets[1],
      UniqueIdSchema.deserialize,
      allOffsets,
    ),
    pl: reader.readStringOrNull(offsets[2]),
    ru: reader.readStringOrNull(offsets[3]),
    sentence: reader.readBoolOrNull(offsets[4]),
    uk: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _wordDtoDeserializeProp<P>(
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
      return (reader.readObjectOrNull<UniqueId>(
        offset,
        UniqueIdSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wordDtoGetId(WordDto object) {
  return object.databaseId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _wordDtoGetLinks(WordDto object) {
  return [object.lesson];
}

void _wordDtoAttach(IsarCollection<dynamic> col, Id id, WordDto object) {
  object.databaseId = id;
  object.lesson.attach(col, col.isar.collection<LessonDto>(), r'lesson', id);
}

extension WordDtoQueryWhereSort on QueryBuilder<WordDto, WordDto, QWhere> {
  QueryBuilder<WordDto, WordDto, QAfterWhere> anyDatabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WordDtoQueryWhere on QueryBuilder<WordDto, WordDto, QWhereClause> {
  QueryBuilder<WordDto, WordDto, QAfterWhereClause> databaseIdEqualTo(
      Id databaseId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: databaseId,
        upper: databaseId,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterWhereClause> databaseIdNotEqualTo(
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

  QueryBuilder<WordDto, WordDto, QAfterWhereClause> databaseIdGreaterThan(
      Id databaseId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: databaseId, includeLower: include),
      );
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterWhereClause> databaseIdLessThan(
      Id databaseId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: databaseId, includeUpper: include),
      );
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterWhereClause> databaseIdBetween(
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

extension WordDtoQueryFilter
    on QueryBuilder<WordDto, WordDto, QFilterCondition> {
  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> databaseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'databaseId',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> databaseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'databaseId',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> databaseIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'databaseId',
        value: value,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> databaseIdGreaterThan(
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

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> databaseIdLessThan(
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

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> databaseIdBetween(
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

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> lessonIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lessonId',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> lessonIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lessonId',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pl',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pl',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pl',
        value: '',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> plIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pl',
        value: '',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ru',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ru',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ru',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ru',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ru',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ru',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ru',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ru',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ru',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ru',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ru',
        value: '',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ruIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ru',
        value: '',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> sentenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sentence',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> sentenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sentence',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> sentenceEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentence',
        value: value,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uk',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uk',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uk',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uk',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uk',
        value: '',
      ));
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> ukIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uk',
        value: '',
      ));
    });
  }
}

extension WordDtoQueryObject
    on QueryBuilder<WordDto, WordDto, QFilterCondition> {
  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> id(
      FilterQuery<UniqueId> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'id');
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> lessonId(
      FilterQuery<UniqueId> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lessonId');
    });
  }
}

extension WordDtoQueryLinks
    on QueryBuilder<WordDto, WordDto, QFilterCondition> {
  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> lesson(
      FilterQuery<LessonDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'lesson');
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterFilterCondition> lessonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'lesson', 0, true, 0, true);
    });
  }
}

extension WordDtoQuerySortBy on QueryBuilder<WordDto, WordDto, QSortBy> {
  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortByPl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pl', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortByPlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pl', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortByRu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ru', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortByRuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ru', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortBySentenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortByUk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uk', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> sortByUkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uk', Sort.desc);
    });
  }
}

extension WordDtoQuerySortThenBy
    on QueryBuilder<WordDto, WordDto, QSortThenBy> {
  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByDatabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseId', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByDatabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseId', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByPl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pl', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByPlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pl', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByRu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ru', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByRuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ru', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenBySentenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.desc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByUk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uk', Sort.asc);
    });
  }

  QueryBuilder<WordDto, WordDto, QAfterSortBy> thenByUkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uk', Sort.desc);
    });
  }
}

extension WordDtoQueryWhereDistinct
    on QueryBuilder<WordDto, WordDto, QDistinct> {
  QueryBuilder<WordDto, WordDto, QDistinct> distinctByPl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WordDto, WordDto, QDistinct> distinctByRu(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ru', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WordDto, WordDto, QDistinct> distinctBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sentence');
    });
  }

  QueryBuilder<WordDto, WordDto, QDistinct> distinctByUk(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uk', caseSensitive: caseSensitive);
    });
  }
}

extension WordDtoQueryProperty
    on QueryBuilder<WordDto, WordDto, QQueryProperty> {
  QueryBuilder<WordDto, int, QQueryOperations> databaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'databaseId');
    });
  }

  QueryBuilder<WordDto, UniqueId?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WordDto, UniqueId?, QQueryOperations> lessonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lessonId');
    });
  }

  QueryBuilder<WordDto, String?, QQueryOperations> plProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pl');
    });
  }

  QueryBuilder<WordDto, String?, QQueryOperations> ruProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ru');
    });
  }

  QueryBuilder<WordDto, bool?, QQueryOperations> sentenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sentence');
    });
  }

  QueryBuilder<WordDto, String?, QQueryOperations> ukProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uk');
    });
  }
}
