import 'package:hackathon/modules/list_item.dart';

class Place implements ListItem {
  String title;
  String description;
  String shortDescription;
  String address; //
  String creationDate;
  String creator;
  double lat;
  double lng;
  String image;

  Place({
    this.title,
    this.description,
    this.shortDescription,
    this.address,
    this.creationDate,
    this.creator,
    this.lat,
    this.lng,
    this.image,
  })  : assert(title != null),
        assert(address != null);

  static List<Place> places = [
    Place(
        title: 'Скульптура \"Грифон\"',
        address: 'вулиця Гоголя, 1',
        shortDescription: 'Чавунний грифон художнього лиття.',
        description: 'Скульптура міфічної тварини була перенесена в цей сквер у 1960-70-і рр. з Старобазарного (нині Кіровського) скверу. Туди ж він потрапив з знищеного Першого християнського цвинтаря, або з якогось санаторію, який до революції був приватної дачею. Коли - то на місці Кіровського скверу був базар, чотири входи якого охороняли вісім грифонів. З восьми скульптур збереглася лише одна. Однак, краєзнавці стверджують, що встановити точну біографію цієї міфічної істоти вже не представляється можливим.Дана скульптура регулярно піддається актам вандалізму, натхненними міськими легендами і, потім, реставрується владою, внаслідок чого, відбиток мануфактури практично не проглядається.',
        creator: 'мануфактура "Ж.Ж. Дюкель и син"',
      image: 'assets/places/21.jpg'
    ),
    Place(
      title: 'Будинок Коклена',
      address: 'провулок Некрасова, 7'
    ),
    Place(
        title: 'Будинок Оттона',
        address: 'вулиця  Гоголя, 8'
    ),
    Place(
        title: 'Пам\'ятник Дюку Де Рішельє',
        address: 'Приморський бульвар, 1'
    ),
    Place(
        title: 'Підпірні Стіни',
        address: 'Приморський бульвар'
    ),
    Place(
        title: 'Готель \"Лондонська\"',
        address: 'Приморський бульвар, 11'
    ),
    Place(
        title: 'Палац Гагаріних',
        address: 'вулиця Ланжиронівська, 2'
    ),
    Place(
        title: 'Скульптура-Фонтан \"Молодість\"',
        address: 'вулиця Ланжиронівська, 4'
    ),
    Place(
        title: 'Перший міський театр',
        address: 'провулок Чайковського'
    ),
    Place(
        title: 'Комплекс Пале-Рояль',
        address: 'вулиця Катерининська, 5-13'
    ),
    Place(
        title: 'Будинок Лантье',
        address: 'вулиця Катерининська, 9'
    ),
    Place(
        title: 'Рішельєвський ліцей',
        address: 'вулиця Деребасівська, 16'
    ),
    Place(
        title: 'Будинок Жуль\'єна',
        address: 'вулиця Деребасівська, 19'
    ),
    Place(
        title: 'Будинок Жана Рено',
        address: 'вулиця Рішел\'євська, 3'
    ),
    Place(
        title: 'Будинок Г. Г. Маразлі',
        address: 'вулиця Пушкінська, 4'
    ),
    Place(
        title: 'Палац Абази',
        address: 'вулиця Пушкінська, 9'
    ),
    Place(
        title: 'Готель \"Дю Норд\"',
        address: 'вулиця Пушкінська, 13'
    ),
    Place(
        title: 'Готель Бристоль',
        address: 'вулиця Пушкінська, 15'
    ),
    Place(
        title: 'Прибутковий Дім',
        address: 'вулиця Пушкінська, 16'
    ),
    Place(
        title: 'Міст Новікова',
        address: 'вулиця Жуковського'
    ),
    Place(
        title: 'Арка Дачі Ланжерона',
        address: 'Ланжеронівська площа'
    ),
  ];
}
