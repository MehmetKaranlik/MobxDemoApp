import 'package:mobx_demo_app/core/constants/enum/network_paths.dart';
import 'package:mobx_demo_app/view/map/model/map_model.dart';
import 'package:mobx_demo_app/view/map/service/IMap_service.dart';
import 'package:vexana/vexana.dart';

class MapService extends IMapService {
  MapService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<MapModel>?> fetchMapData() async {
     final response = await  networkManager.send<MapModel, List<MapModel>>(
        MapNetworkPaths.BASE_URL.path + MapNetworkPaths.MAP_DATA.path,
        parseModel: MapModel(),
        method: RequestType.GET);

        if (response.data != null ) {
          return response.data;
        }
  }

  
}
