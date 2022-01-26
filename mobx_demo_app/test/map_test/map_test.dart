import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_demo_app/view/map/model/map_model.dart';
import 'package:mobx_demo_app/view/map/service/IMap_service.dart';
import 'package:mobx_demo_app/view/map/service/map_service.dart';
import 'package:vexana/vexana.dart';



void main() {
  late final INetworkManager networkManager;
  late final IMapService mapService;
  setUp(() {
    networkManager = NetworkManager(options: BaseOptions(baseUrl: "https://fluttertr-ead5c.firebaseio.com"));
    mapService = MapService(networkManager);
  });

  test('Fetch All Map Datas', () async {
  final response = await networkManager.send<MapModel, List<MapModel>>("/maps.json", parseModel: MapModel(), method: RequestType.GET);
  expect(response.data, isNotNull);
  expect(response.data, isNotEmpty);
});

  test('Fetch MapDatas', () async {
   final response = await mapService.fetchMapData();
    expect(response, isNotNull);
    expect(response, isNotEmpty);
  });
}

