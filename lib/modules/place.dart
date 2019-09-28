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
        description:
            'Скульптура міфічної тварини була перенесена в цей сквер у 1960-70-і рр. з Старобазарного (нині Кіровського) скверу. Туди ж він потрапив з знищеного Першого християнського цвинтаря, або з якогось санаторію, який до революції був приватної дачею. Коли - то на місці Кіровського скверу був базар, чотири входи якого охороняли вісім грифонів. З восьми скульптур збереглася лише одна. Однак, краєзнавці стверджують, що встановити точну біографію цієї міфічної істоти вже не представляється можливим.Дана скульптура регулярно піддається актам вандалізму, натхненними міськими легендами і, потім, реставрується владою, внаслідок чого, відбиток мануфактури практично не проглядається.',
        creator: 'мануфактура "Ж.Ж. Дюкель и син"',
        image: 'assets/places/3.jpg',
        lat: 46.490223,
        lng: 30.735547),
    Place(
        title: 'Перший міський театр',
        address: 'провулок Чайковського',
        image: 'assets/places/9.jpg',
        lat: 46.4844979,
        lng: 30.7304077),
    Place(
        title: 'Комплекс Пале-Рояль',
        address: 'вулиця Катерининська, 5-13',
        image: 'assets/places/10,\ 11.jpg',
        lat: 46.4844979,
        lng: 30.7304077),
    Place(
        title: 'Рішельєвський ліцей',
        address: 'вулиця Деребасівська, 16',
        image: 'assets/places/12.jpg'),
    Place(
        title: 'Арка Дачі Ланжерона',
        address: 'Ланжеронівська площа',
        image: 'assets/places/21.jpg'),
    Place(
        title: 'Будинок Коклена',
        address: 'провулок Некрасова, 7',
        image: 'assets/places/1.jpg',
        lat: 46.488982,
        lng: 30.733927),
    Place(
      title: 'Пам\'ятник Дюку Де Рішельє',
      address: 'Приморський бульвар, 1',
      image: 'assets/places/4.jpg',
      lat: 46.489506,
      lng: 30.739506,
    ),
    Place(
      title: 'Підпірні Стіни',
      address: 'Приморський бульвар',
      image: 'assets/places/5.jpg',
      lat: 46.488251,
      lng: 30.740858,
    ),
    Place(
      title: 'Готель \"Лондонська\"',
      address: 'Приморський бульвар, 11',
      image: 'assets/places/6.jpg',
    ),
    Place(
        title: 'Палац Гагаріних',
        address: 'вулиця Ланжиронівська, 2',
        image: 'assets/places/7.jpg',
        lat: 46.484853,
        lng: 30.744087),
    Place(
        title: 'Скульптура-Фонтан \"Молодість\"',
        address: 'вулиця Ланжиронівська, 4',
        image: 'assets/places/8.jpg'),
    Place(
        title: 'Будинок Лантье',
        address: 'вулиця Катерининська, 9',
        image: 'assets/places/10,\ 11.jpg'),
    Place(
        title: 'Будинок Жуль\'єна',
        address: 'вулиця Деребасівська, 19',
        image: 'assets/places/13.jpg'),
    Place(
        title: 'Будинок Жана Рено',
        address: 'вулиця Рішел\'євська, 3',
        image: 'assets/places/14.jpg'),
    Place(
        title: 'Будинок Г. Г. Маразлі',
        address: 'вулиця Пушкінська, 4',
        image: 'assets/places/15.jpg'),
    Place(
        title: 'Палац Абази',
        address: 'вулиця Пушкінська, 9',
        image: 'assets/places/16.jpg'),
    Place(
        title: 'Готель \"Дю Норд\"',
        address: 'вулиця Пушкінська, 13',
        image: 'assets/places/17.jpg'),
    Place(
        title: 'Готель Бристоль',
        address: 'вулиця Пушкінська, 15',
        image: 'assets/places/18.jpg'),
    Place(
        title: 'Прибутковий Дім',
        address: 'вулиця Пушкінська, 16',
        image: 'assets/places/19.jpg'),
    Place(
        title: 'Міст Новікова',
        address: 'вулиця Жуковського',
        image: 'assets/places/20.jpg'),
    Place(
        title: 'Будинок Оттона',
        address: 'вулиця  Гоголя, 8',
        image: 'assets/places/2.jpg',
        lat: 46.489514,
        lng: 30.735548),
  ];

  static List<Place> placesFr = [
    Place(title: '', address: 'провулок Некрасова, 7'),
    Place(title: 'Будинок Оттона', address: 'вулиця  Гоголя, 8'),
    Place(
        title: 'Скульптура \"Грифон\"',
        address: 'вулиця Гоголя, 1',
        shortDescription: 'Чавунний грифон художнього лиття.',
        description:
            'Скульптура міфічної тварини була перенесена в цей сквер у 1960-70-і рр. з Старобазарного (нині Кіровського) скверу. Туди ж він потрапив з знищеного Першого християнського цвинтаря, або з якогось санаторію, який до революції був приватної дачею. Коли - то на місці Кіровського скверу був базар, чотири входи якого охороняли вісім грифонів. З восьми скульптур збереглася лише одна. Однак, краєзнавці стверджують, що встановити точну біографію цієї міфічної істоти вже не представляється можливим.Дана скульптура регулярно піддається актам вандалізму, натхненними міськими легендами і, потім, реставрується владою, внаслідок чого, відбиток мануфактури практично не проглядається.',
        creator: 'мануфактура "Ж.Ж. Дюкель и син"'),
    Place(
        title: 'Пам\'ятник Дюку Де Рішельє', address: 'Приморський бульвар, 1'),
    Place(title: 'Підпірні Стіни', address: 'Приморський бульвар'),
    Place(title: 'Готель \"Лондонська\"', address: 'Приморський бульвар, 11'),
    Place(title: 'Палац Гагаріних', address: 'вулиця Ланжиронівська, 2'),
    Place(
        title: 'Скульптура-Фонтан \"Молодість\"',
        address: 'вулиця Ланжиронівська, 4'),
    Place(title: 'Перший міський театр', address: 'провулок Чайковського'),
    Place(title: 'Комплекс Пале-Рояль', address: 'вулиця Катерининська, 5-13'),
    Place(title: 'Будинок Лантье', address: 'вулиця Катерининська, 9'),
    Place(title: 'Рішельєвський ліцей', address: 'вулиця Деребасівська, 16'),
    Place(title: 'Будинок Жуль\'єна', address: 'вулиця Деребасівська, 19'),
    Place(title: 'Будинок Жана Рено', address: 'вулиця Рішел\'євська, 3'),
    Place(title: 'Будинок Г. Г. Маразлі', address: 'вулиця Пушкінська, 4'),
    Place(title: 'Палац Абази', address: 'вулиця Пушкінська, 9'),
    Place(title: 'Готель \"Дю Норд\"', address: 'вулиця Пушкінська, 13'),
    Place(title: 'Готель Бристоль', address: 'вулиця Пушкінська, 15'),
    Place(title: 'Прибутковий Дім', address: 'вулиця Пушкінська, 16'),
    Place(title: 'Міст Новікова', address: 'вулиця Жуковського'),
    Place(title: 'Арка Дачі Ланжерона', address: 'Ланжеронівська площа'),
  ];
}
