import 'package:senior_flutter_challenge/api/api.dart';
import 'package:senior_flutter_challenge/api/queries/adventures/constants.dart';
import 'package:senior_flutter_challenge/api/queries/adventures/model.dart';

Future<AdventuresResponse> getAdventures(int page) async {
  final response = await adventuresApi.get(
    "/adventures",
    queryParameters: {
      "limit": pageSize,
      "offset": page * pageSize,
    },
  ).timeout(
    const Duration(seconds: 5),
  );
  return AdventuresResponse.fromJson(response.data);
}
