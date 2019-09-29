import 'package:hackathon/modules/list_item.dart';
import 'package:hackathon/modules/place.dart';

// TODO: make start point
class Route implements ListItem {
  String title;
  String description;
  String shortDescription;
  String duration;
  String image;
  List<Place> places;

  Route({
    this.title,
    this.description,
    this.shortDescription,
    this.duration,
    this.image,
    this.places,
  });

  static List<Route> routesUA = [
    Route(
      title: 'Слідами Франції',
      shortDescription: 'Це унікальна екскурсія в якій Вам не потрібен екскурсовод!',
      description: 'Це унікальна екскурсія в якій Вам не потрібен екскурсовод! Прогулянка по архітектурним пам\'яткам в супроводі електронного гіда і нової квест-програми. Ніяких нудних монологів, тільки інтерактив, соковиті кадри і приємні бонуси. Екскурсія познайомить Вас з цікавими історіями і міськими легендами, а також дозволить заробити бали для програми лояльності \"Франція в серці\" *. Отже, вперед до знижок і вражень!',
      duration: 'Тривалість 3 години.',
      image: 'assets/route.png',
      places: Place.placesUA,
    ),
  ];

  static List<Route> routesFr = [
    Route(
      title: 'Un air de France',
      shortDescription: 'C\'est un tour unique dans lequel vous n\'avez pas besoin d\'un guide!',
      description: 'C\'est un tour unique dans lequel vous n\'avez pas besoin d\'un guide! Une promenade à travers les monuments architecturaux, accompagnée d\'un guide électronique et d\'un nouveau questionnaire. Pas de monologues ennuyeux, seulement l\’interactif, des lieux splendides à prendre en photo et des сadeaux sympas. La visite vous fera découvrir des histoires intéressantes et des légendes urbaines, ainsi que gagner des points pour le programme de récompense «France au cœur» *. Alors, allez à des réductions et des impressions!',
      duration: 'La durée 3 heures.',
      image: 'assets/route.png',
      places: Place.placesFr,
    ),
  ];

  static var routes = [routesUA, routesFr];
}