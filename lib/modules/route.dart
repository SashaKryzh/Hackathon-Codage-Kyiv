import 'package:hackathon/modules/list_item.dart';
import 'package:hackathon/modules/place.dart';

class Route implements ListItem {
  String title;
  String description;
  String duration;
  List<Place> places;

  Route({
    this.title,
    this.description,
    this.duration,
    this.places,
  });

  static List<Route> routes = [
    Route(
      title: 'Слідами Франції',
      description: 'Це унікальна екскурсія в якій Вам не потрібен екскурсовод! Прогулянка по архітектурним пам\'яткам в супроводі електронного гіда і нової квест-програми. Ніяких нудних монологів, тільки інтерактив, соковиті кадри і приємні бонуси. Екскурсія познайомить Вас з цікавими історіями і міськими легендами, а також дозволить заробити бали для програми лояльності \"Франція в серці\" *. Отже, вперед до знижок і вражень!',
      duration: 'Тривалість 3 години',
      places: Place.places,
    ),
    Route(
      title: 'Un air de France',
      description: 'C\'est un tour unique dans lequel vous n\'avez pas besoin d\'un guide! Une promenade à travers les monuments architecturaux, accompagnée d\'un guide électronique et d\'un nouveau questionnaire. Pas de monologues ennuyeux, seulement l\’interactif, des lieux splendides à prendre en photo et des сadeaux sympas. La visite vous fera découvrir des histoires intéressantes et des légendes urbaines, ainsi que gagner des points pour le programme de récompense «France au cœur» *. Alors, allez à des réductions et des impressions!',
      duration: 'La durée 3 heures',
      places: Place.placesFr,
    ),
  ];
}