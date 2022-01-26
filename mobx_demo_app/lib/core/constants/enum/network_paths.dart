enum MapNetworkPaths {
  BASE_URL,
  MAP_DATA 
}

extension MapEndPointExtension on MapNetworkPaths {
  String get path {
    switch (this) {
      case MapNetworkPaths.BASE_URL:
        return "https://fluttertr-ead5c.firebaseio.com";
      case MapNetworkPaths.MAP_DATA:
      return "/maps.json";
 
    }
  }
}