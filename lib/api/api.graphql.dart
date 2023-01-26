// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin SecretFieldsMixin {
  late String id;
  late String title;
  late String creatorId;
  late SecretFieldsMixin$User creator;
  int? limitNumber;
  late List<SecretFieldsMixin$Message> messages;
}
mixin UserFieldsMixin {
  late String name;
  late String id;
}
mixin MessageFieldsMixin {
  late String id;
  late String creatorId;
  late String secretId;
  late String message;
  late MessageFieldsMixin$User creator;
}

@JsonSerializable(explicitToJson: true)
class GetUser$Query$User$Secret extends JsonSerializable
    with EquatableMixin, SecretFieldsMixin {
  GetUser$Query$User$Secret();

  factory GetUser$Query$User$Secret.fromJson(Map<String, dynamic> json) =>
      _$GetUser$Query$User$SecretFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, creatorId, creator, limitNumber, messages];
  @override
  Map<String, dynamic> toJson() => _$GetUser$Query$User$SecretToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUser$Query$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  GetUser$Query$User();

  factory GetUser$Query$User.fromJson(Map<String, dynamic> json) =>
      _$GetUser$Query$UserFromJson(json);

  late List<GetUser$Query$User$Secret> secrets;

  @override
  List<Object?> get props => [name, id, secrets];
  @override
  Map<String, dynamic> toJson() => _$GetUser$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetUser$Query extends JsonSerializable with EquatableMixin {
  GetUser$Query();

  factory GetUser$Query.fromJson(Map<String, dynamic> json) =>
      _$GetUser$QueryFromJson(json);

  GetUser$Query$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$GetUser$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SecretFieldsMixin$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  SecretFieldsMixin$User();

  factory SecretFieldsMixin$User.fromJson(Map<String, dynamic> json) =>
      _$SecretFieldsMixin$UserFromJson(json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() => _$SecretFieldsMixin$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SecretFieldsMixin$Message extends JsonSerializable
    with EquatableMixin, MessageFieldsMixin {
  SecretFieldsMixin$Message();

  factory SecretFieldsMixin$Message.fromJson(Map<String, dynamic> json) =>
      _$SecretFieldsMixin$MessageFromJson(json);

  @override
  List<Object?> get props => [id, creatorId, secretId, message, creator];
  @override
  Map<String, dynamic> toJson() => _$SecretFieldsMixin$MessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MessageFieldsMixin$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  MessageFieldsMixin$User();

  factory MessageFieldsMixin$User.fromJson(Map<String, dynamic> json) =>
      _$MessageFieldsMixin$UserFromJson(json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() => _$MessageFieldsMixin$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSecret$Query$Secret extends JsonSerializable
    with EquatableMixin, SecretFieldsMixin {
  GetSecret$Query$Secret();

  factory GetSecret$Query$Secret.fromJson(Map<String, dynamic> json) =>
      _$GetSecret$Query$SecretFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, creatorId, creator, limitNumber, messages];
  @override
  Map<String, dynamic> toJson() => _$GetSecret$Query$SecretToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSecret$Query extends JsonSerializable with EquatableMixin {
  GetSecret$Query();

  factory GetSecret$Query.fromJson(Map<String, dynamic> json) =>
      _$GetSecret$QueryFromJson(json);

  late GetSecret$Query$Secret secret;

  @override
  List<Object?> get props => [secret];
  @override
  Map<String, dynamic> toJson() => _$GetSecret$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignUp$Mutation$User extends JsonSerializable
    with EquatableMixin, UserFieldsMixin {
  SignUp$Mutation$User();

  factory SignUp$Mutation$User.fromJson(Map<String, dynamic> json) =>
      _$SignUp$Mutation$UserFromJson(json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() => _$SignUp$Mutation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignUp$Mutation extends JsonSerializable with EquatableMixin {
  SignUp$Mutation();

  factory SignUp$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SignUp$MutationFromJson(json);

  late SignUp$Mutation$User signup;

  @override
  List<Object?> get props => [signup];
  @override
  Map<String, dynamic> toJson() => _$SignUp$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateSecret$Mutation$Secret extends JsonSerializable
    with EquatableMixin, SecretFieldsMixin {
  CreateSecret$Mutation$Secret();

  factory CreateSecret$Mutation$Secret.fromJson(Map<String, dynamic> json) =>
      _$CreateSecret$Mutation$SecretFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, creatorId, creator, limitNumber, messages];
  @override
  Map<String, dynamic> toJson() => _$CreateSecret$Mutation$SecretToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateSecret$Mutation extends JsonSerializable with EquatableMixin {
  CreateSecret$Mutation();

  factory CreateSecret$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateSecret$MutationFromJson(json);

  late CreateSecret$Mutation$Secret createSecret;

  @override
  List<Object?> get props => [createSecret];
  @override
  Map<String, dynamic> toJson() => _$CreateSecret$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateMessage$Mutation$Message extends JsonSerializable
    with EquatableMixin, MessageFieldsMixin {
  CreateMessage$Mutation$Message();

  factory CreateMessage$Mutation$Message.fromJson(Map<String, dynamic> json) =>
      _$CreateMessage$Mutation$MessageFromJson(json);

  @override
  List<Object?> get props => [id, creatorId, secretId, message, creator];
  @override
  Map<String, dynamic> toJson() => _$CreateMessage$Mutation$MessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateMessage$Mutation extends JsonSerializable with EquatableMixin {
  CreateMessage$Mutation();

  factory CreateMessage$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateMessage$MutationFromJson(json);

  late CreateMessage$Mutation$Message createMessage;

  @override
  List<Object?> get props => [createMessage];
  @override
  Map<String, dynamic> toJson() => _$CreateMessage$MutationToJson(this);
}

final GET_USER_QUERY_DOCUMENT_OPERATION_NAME = 'getUser';
final GET_USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'secrets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SecretFields'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'SecretFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Secret'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'limitNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'messages'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MessageFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'MessageFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Message'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'secretId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'message'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
]);

class GetUserQuery extends GraphQLQuery<GetUser$Query, JsonSerializable> {
  GetUserQuery();

  @override
  final DocumentNode document = GET_USER_QUERY_DOCUMENT;

  @override
  final String operationName = GET_USER_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetUser$Query parse(Map<String, dynamic> json) =>
      GetUser$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetSecretArguments extends JsonSerializable with EquatableMixin {
  GetSecretArguments({required this.id});

  @override
  factory GetSecretArguments.fromJson(Map<String, dynamic> json) =>
      _$GetSecretArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetSecretArgumentsToJson(this);
}

final GET_SECRET_QUERY_DOCUMENT_OPERATION_NAME = 'getSecret';
final GET_SECRET_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getSecret'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'secret'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'secretId'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SecretFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'SecretFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Secret'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'limitNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'messages'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MessageFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'MessageFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Message'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'secretId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'message'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
]);

class GetSecretQuery extends GraphQLQuery<GetSecret$Query, GetSecretArguments> {
  GetSecretQuery({required this.variables});

  @override
  final DocumentNode document = GET_SECRET_QUERY_DOCUMENT;

  @override
  final String operationName = GET_SECRET_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetSecretArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetSecret$Query parse(Map<String, dynamic> json) =>
      GetSecret$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SignUpArguments extends JsonSerializable with EquatableMixin {
  SignUpArguments({required this.name});

  @override
  factory SignUpArguments.fromJson(Map<String, dynamic> json) =>
      _$SignUpArgumentsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$SignUpArgumentsToJson(this);
}

final SIGN_UP_MUTATION_DOCUMENT_OPERATION_NAME = 'signUp';
final SIGN_UP_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'signUp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signup'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class SignUpMutation extends GraphQLQuery<SignUp$Mutation, SignUpArguments> {
  SignUpMutation({required this.variables});

  @override
  final DocumentNode document = SIGN_UP_MUTATION_DOCUMENT;

  @override
  final String operationName = SIGN_UP_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SignUpArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SignUp$Mutation parse(Map<String, dynamic> json) =>
      SignUp$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateSecretArguments extends JsonSerializable with EquatableMixin {
  CreateSecretArguments({
    required this.title,
    required this.message,
  });

  @override
  factory CreateSecretArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateSecretArgumentsFromJson(json);

  late String title;

  late String message;

  @override
  List<Object?> get props => [title, message];
  @override
  Map<String, dynamic> toJson() => _$CreateSecretArgumentsToJson(this);
}

final CREATE_SECRET_MUTATION_DOCUMENT_OPERATION_NAME = 'createSecret';
final CREATE_SECRET_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createSecret'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createSecret'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'title'),
            value: VariableNode(name: NameNode(value: 'title')),
          ),
          ArgumentNode(
            name: NameNode(value: 'message'),
            value: VariableNode(name: NameNode(value: 'message')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SecretFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'SecretFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Secret'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'limitNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'messages'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MessageFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'MessageFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Message'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'secretId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'message'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
]);

class CreateSecretMutation
    extends GraphQLQuery<CreateSecret$Mutation, CreateSecretArguments> {
  CreateSecretMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_SECRET_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_SECRET_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateSecretArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateSecret$Mutation parse(Map<String, dynamic> json) =>
      CreateSecret$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateMessageArguments extends JsonSerializable with EquatableMixin {
  CreateMessageArguments({
    required this.secretId,
    required this.message,
  });

  @override
  factory CreateMessageArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateMessageArgumentsFromJson(json);

  late String secretId;

  late String message;

  @override
  List<Object?> get props => [secretId, message];
  @override
  Map<String, dynamic> toJson() => _$CreateMessageArgumentsToJson(this);
}

final CREATE_MESSAGE_MUTATION_DOCUMENT_OPERATION_NAME = 'createMessage';
final CREATE_MESSAGE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'secretId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'secretId'),
            value: VariableNode(name: NameNode(value: 'secretId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'message'),
            value: VariableNode(name: NameNode(value: 'message')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MessageFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'MessageFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Message'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creatorId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'secretId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'message'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'creator'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'UserFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'User'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class CreateMessageMutation
    extends GraphQLQuery<CreateMessage$Mutation, CreateMessageArguments> {
  CreateMessageMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_MESSAGE_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_MESSAGE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateMessageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateMessage$Mutation parse(Map<String, dynamic> json) =>
      CreateMessage$Mutation.fromJson(json);
}
