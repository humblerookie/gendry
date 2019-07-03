library serializers;

import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/api/entities/builds/build_log.dart';
import 'package:bitrise_client/api/entities/builds/builds_response.dart';
import 'package:bitrise_client/api/entities/builds/code_owner.dart';
import 'package:bitrise_client/api/entities/builds/code_repository.dart';
import 'package:bitrise_client/api/entities/builds/log_chunks.dart';
import 'package:bitrise_client/api/entities/builds/original_build_params.dart';
import 'package:bitrise_client/api/entities/paging.dart';
import 'package:bitrise_client/api/entities/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';

part 'package:bitrise_client/parse/serializers.g.dart';

@SerializersFor([UserResponse,User,Paging,AppBuild,BuildsResponse,CodeOwner,CodeRepository,OriginalBuildParams,BuildLog,LogChunks])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
