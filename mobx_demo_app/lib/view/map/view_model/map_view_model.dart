import 'package:mobx/mobx.dart';
import 'package:mobx_demo_app/view/map/model/map_model.dart';
import 'package:mobx_demo_app/view/map/service/IMap_service.dart';

part 'map_view_model.g.dart';

class MapViewModel = _MapViewModelBase with _$MapViewModel;

abstract class _MapViewModelBase with Store {
  final IMapService mapService;

  _MapViewModelBase(this.mapService);
  @observable
  bool isLoading = false;
  
  @observable
  List<MapModel> mapModelItems = <MapModel>[];
  
  @action
  Future<void> fetchAllMaps() async {
    _changeLoading();
    final response = await mapService.fetchMapData();
    mapModelItems = response ?? [];
    _changeLoading();
  }
  
  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }
}
