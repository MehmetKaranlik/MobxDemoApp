import 'package:mobx_demo_app/view/map/model/map_model.dart';
import 'package:vexana/vexana.dart';

abstract class IMapService {
  final INetworkManager networkManager;

  IMapService(this.networkManager);
  Future<List<MapModel>?> fetchMapData();
}