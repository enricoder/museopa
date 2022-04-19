import 'package:latlong2/latlong.dart';


class MapMarker {
  const MapMarker({
    required this.image,
    required this.title,
    required this.address,
    required this.location,
    required this.schedule,
  });
  final String image;
  final String title;
  final String address;   
  final LatLng location;
  final String schedule;
}

final _locations = [
  LatLng(-13.516,-71.976), // 12 angulos
  LatLng(-13.516,-71.978), // catedral
  LatLng(-13.517,-71.978), //paraninfo
  LatLng(-13.518,-71.981), //plaza san francisco  
];

final mapMarkers = [
  MapMarker(
    image:'assets/images/12angulos.png',
    title: 'Piedra de 12 ángulos',
    address: 'Calle Hatunrumiyoq',
    location: _locations[0],
    schedule: 'Lunes a Viernes de 8am a 6pm'
  ),
  MapMarker(
    image:'assets/images/catedral.png',
    title: 'Catedral Mayor',
    address: 'Plaza de Armas S/N',
    location: _locations[1],
    schedule: 'Lunes a Viernes de 8am a 6pm'

  ),
  MapMarker(
    image:'assets/images/paraninfo.png',
    title: 'Paraninfo Universitario',
    address: 'Plaza de Armas S/N',
    location: _locations[2],
    schedule: 'Lunes a Viernes de 8am a 6pm'

  ),
  MapMarker(
    image:'assets/images/sanfrancisco.png',
    title: 'Plaza San Francisco',
    address: 'Plaza San Francisco S/N',
    location: _locations[3],
    schedule: 'Lunes a Viernes de 8am a 6pm'

  ),
];