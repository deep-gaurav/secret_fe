// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUser$Query$User$Secret _$GetUser$Query$User$SecretFromJson(
        Map<String, dynamic> json) =>
    GetUser$Query$User$Secret()
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..creatorId = json['creatorId'] as String
      ..creator = SecretFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..limitNumber = json['limitNumber'] as int?
      ..messages = SecretFieldsMixin$SecretMessages.fromJson(
          json['messages'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUser$Query$User$SecretToJson(
        GetUser$Query$User$Secret instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'creatorId': instance.creatorId,
      'creator': instance.creator.toJson(),
      'limitNumber': instance.limitNumber,
      'messages': instance.messages.toJson(),
    };

GetUser$Query$User _$GetUser$Query$UserFromJson(Map<String, dynamic> json) =>
    GetUser$Query$User()
      ..name = json['name'] as String
      ..id = json['id'] as String
      ..secrets = (json['secrets'] as List<dynamic>)
          .map((e) =>
              GetUser$Query$User$Secret.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetUser$Query$UserToJson(GetUser$Query$User instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'secrets': instance.secrets.map((e) => e.toJson()).toList(),
    };

GetUser$Query _$GetUser$QueryFromJson(Map<String, dynamic> json) =>
    GetUser$Query()
      ..user = json['user'] == null
          ? null
          : GetUser$Query$User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$GetUser$QueryToJson(GetUser$Query instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

SecretFieldsMixin$User _$SecretFieldsMixin$UserFromJson(
        Map<String, dynamic> json) =>
    SecretFieldsMixin$User()
      ..name = json['name'] as String
      ..id = json['id'] as String;

Map<String, dynamic> _$SecretFieldsMixin$UserToJson(
        SecretFieldsMixin$User instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

SecretFieldsMixin$SecretMessages$LockedMessages
    _$SecretFieldsMixin$SecretMessages$LockedMessagesFromJson(
            Map<String, dynamic> json) =>
        SecretFieldsMixin$SecretMessages$LockedMessages()
          ..$$typename = json['__typename'] as String?
          ..reason = json['reason'] as String;

Map<String, dynamic> _$SecretFieldsMixin$SecretMessages$LockedMessagesToJson(
        SecretFieldsMixin$SecretMessages$LockedMessages instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'reason': instance.reason,
    };

SecretFieldsMixin$SecretMessages$UnlockedMessages$Message
    _$SecretFieldsMixin$SecretMessages$UnlockedMessages$MessageFromJson(
            Map<String, dynamic> json) =>
        SecretFieldsMixin$SecretMessages$UnlockedMessages$Message()
          ..id = json['id'] as String
          ..creatorId = json['creatorId'] as String
          ..secretId = json['secretId'] as String
          ..message = json['message'] as String
          ..creator = MessageFieldsMixin$User.fromJson(
              json['creator'] as Map<String, dynamic>);

Map<String,
    dynamic> _$SecretFieldsMixin$SecretMessages$UnlockedMessages$MessageToJson(
        SecretFieldsMixin$SecretMessages$UnlockedMessages$Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'secretId': instance.secretId,
      'message': instance.message,
      'creator': instance.creator.toJson(),
    };

SecretFieldsMixin$SecretMessages$UnlockedMessages
    _$SecretFieldsMixin$SecretMessages$UnlockedMessagesFromJson(
            Map<String, dynamic> json) =>
        SecretFieldsMixin$SecretMessages$UnlockedMessages()
          ..$$typename = json['__typename'] as String?
          ..messages = (json['messages'] as List<dynamic>)
              .map((e) =>
                  SecretFieldsMixin$SecretMessages$UnlockedMessages$Message
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$SecretFieldsMixin$SecretMessages$UnlockedMessagesToJson(
        SecretFieldsMixin$SecretMessages$UnlockedMessages instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };

SecretFieldsMixin$SecretMessages _$SecretFieldsMixin$SecretMessagesFromJson(
        Map<String, dynamic> json) =>
    SecretFieldsMixin$SecretMessages()
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$SecretFieldsMixin$SecretMessagesToJson(
        SecretFieldsMixin$SecretMessages instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

MessageFieldsMixin$User _$MessageFieldsMixin$UserFromJson(
        Map<String, dynamic> json) =>
    MessageFieldsMixin$User()
      ..name = json['name'] as String
      ..id = json['id'] as String;

Map<String, dynamic> _$MessageFieldsMixin$UserToJson(
        MessageFieldsMixin$User instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

GetSecret$Query$Secret _$GetSecret$Query$SecretFromJson(
        Map<String, dynamic> json) =>
    GetSecret$Query$Secret()
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..creatorId = json['creatorId'] as String
      ..creator = SecretFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..limitNumber = json['limitNumber'] as int?
      ..messages = SecretFieldsMixin$SecretMessages.fromJson(
          json['messages'] as Map<String, dynamic>);

Map<String, dynamic> _$GetSecret$Query$SecretToJson(
        GetSecret$Query$Secret instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'creatorId': instance.creatorId,
      'creator': instance.creator.toJson(),
      'limitNumber': instance.limitNumber,
      'messages': instance.messages.toJson(),
    };

GetSecret$Query _$GetSecret$QueryFromJson(Map<String, dynamic> json) =>
    GetSecret$Query()
      ..secret = GetSecret$Query$Secret.fromJson(
          json['secret'] as Map<String, dynamic>);

Map<String, dynamic> _$GetSecret$QueryToJson(GetSecret$Query instance) =>
    <String, dynamic>{
      'secret': instance.secret.toJson(),
    };

SignUp$Mutation$User _$SignUp$Mutation$UserFromJson(
        Map<String, dynamic> json) =>
    SignUp$Mutation$User()
      ..name = json['name'] as String
      ..id = json['id'] as String;

Map<String, dynamic> _$SignUp$Mutation$UserToJson(
        SignUp$Mutation$User instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

SignUp$Mutation _$SignUp$MutationFromJson(Map<String, dynamic> json) =>
    SignUp$Mutation()
      ..signup =
          SignUp$Mutation$User.fromJson(json['signup'] as Map<String, dynamic>);

Map<String, dynamic> _$SignUp$MutationToJson(SignUp$Mutation instance) =>
    <String, dynamic>{
      'signup': instance.signup.toJson(),
    };

CreateSecret$Mutation$Secret _$CreateSecret$Mutation$SecretFromJson(
        Map<String, dynamic> json) =>
    CreateSecret$Mutation$Secret()
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..creatorId = json['creatorId'] as String
      ..creator = SecretFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>)
      ..limitNumber = json['limitNumber'] as int?
      ..messages = SecretFieldsMixin$SecretMessages.fromJson(
          json['messages'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateSecret$Mutation$SecretToJson(
        CreateSecret$Mutation$Secret instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'creatorId': instance.creatorId,
      'creator': instance.creator.toJson(),
      'limitNumber': instance.limitNumber,
      'messages': instance.messages.toJson(),
    };

CreateSecret$Mutation _$CreateSecret$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateSecret$Mutation()
      ..createSecret = CreateSecret$Mutation$Secret.fromJson(
          json['createSecret'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateSecret$MutationToJson(
        CreateSecret$Mutation instance) =>
    <String, dynamic>{
      'createSecret': instance.createSecret.toJson(),
    };

CreateMessage$Mutation$Message _$CreateMessage$Mutation$MessageFromJson(
        Map<String, dynamic> json) =>
    CreateMessage$Mutation$Message()
      ..id = json['id'] as String
      ..creatorId = json['creatorId'] as String
      ..secretId = json['secretId'] as String
      ..message = json['message'] as String
      ..creator = MessageFieldsMixin$User.fromJson(
          json['creator'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateMessage$Mutation$MessageToJson(
        CreateMessage$Mutation$Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'secretId': instance.secretId,
      'message': instance.message,
      'creator': instance.creator.toJson(),
    };

CreateMessage$Mutation _$CreateMessage$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateMessage$Mutation()
      ..createMessage = CreateMessage$Mutation$Message.fromJson(
          json['createMessage'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateMessage$MutationToJson(
        CreateMessage$Mutation instance) =>
    <String, dynamic>{
      'createMessage': instance.createMessage.toJson(),
    };

SetNotificationToken$Mutation _$SetNotificationToken$MutationFromJson(
        Map<String, dynamic> json) =>
    SetNotificationToken$Mutation()
      ..setNotificationToken = json['setNotificationToken'] as String;

Map<String, dynamic> _$SetNotificationToken$MutationToJson(
        SetNotificationToken$Mutation instance) =>
    <String, dynamic>{
      'setNotificationToken': instance.setNotificationToken,
    };

GetSecretArguments _$GetSecretArgumentsFromJson(Map<String, dynamic> json) =>
    GetSecretArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetSecretArgumentsToJson(GetSecretArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SignUpArguments _$SignUpArgumentsFromJson(Map<String, dynamic> json) =>
    SignUpArguments(
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignUpArgumentsToJson(SignUpArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

CreateSecretArguments _$CreateSecretArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateSecretArguments(
      title: json['title'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$CreateSecretArgumentsToJson(
        CreateSecretArguments instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
    };

CreateMessageArguments _$CreateMessageArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateMessageArguments(
      secretId: json['secretId'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$CreateMessageArgumentsToJson(
        CreateMessageArguments instance) =>
    <String, dynamic>{
      'secretId': instance.secretId,
      'message': instance.message,
    };

SetNotificationTokenArguments _$SetNotificationTokenArgumentsFromJson(
        Map<String, dynamic> json) =>
    SetNotificationTokenArguments(
      token: json['token'] as String,
    );

Map<String, dynamic> _$SetNotificationTokenArgumentsToJson(
        SetNotificationTokenArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
