class UserModel {
  final String name;
  final String description;
  final String avatarUrl;
  final String postUrl;

  UserModel(
      {required this.name,
      required this.description,
      required this.avatarUrl,
      required this.postUrl,});
}

List<UserModel> userData = [
  UserModel(
    name: "Tassio Gustavo",
    description: " Hoje é dia de TBT",
    avatarUrl:
    "https://avatars.githubusercontent.com/u/70405308?v=4",
    postUrl: "https://media-cdn.tripadvisor.com/media/photo-s/1b/f4/64/09/aerial-view.jpg",
  ),
  UserModel(
    name: "Billie Eilish",
    description: " Minha primeira viagem",
    avatarUrl:
        "https://s2.glbimg.com/AH3jMC-tpdxOOuAQgciytQro8To=/top/smart/e.glbimg.com/og/ed/f/original/2021/03/17/whatsapp_image_2021-03-17_at_14.22.55.jpeg",
    postUrl: "https://istoe.com.br/wp-content/uploads/sites/14/2022/02/36-3-418x235.jpg",
  ),
  UserModel(
    name: "Faker",
    description: " Sdds ganhar mundial",
    avatarUrl:
        "https://s2.glbimg.com/4oP5fCQaE1GDydFO3YDMPcjXC48=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/2/w/eORJw3TuOmAfaA7Bh73g/faker-worlds.jpg",
    postUrl: "https://liquipedia.net/commons/images/1/1a/T1_Faker_Summer_2021.jpg",
  ),
  UserModel(
    name: "Lebron",
    description: " Curry ganha tudo",
    avatarUrl:
        "https://s2.glbimg.com/nyYIH1AlSuBx0uRagOCeRuyAMiA=/0x0:3792x2528/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/e/S/8J72QMQPad67mD5CW5Ug/2021-11-22t005120z-1968685482-mt1usatoday17209252-rtrmadp-3-nba-los-angeles-lakers-at-detroit-pistons.jpg",
    postUrl: "https://sportbuzz.uol.com.br/media/_versions/nba-lebron-james-diz-novamente-que-gostaria-de-jogar-no-warriors_widemd.jpg",
  ),
  UserModel(
    name: "Messi",
    description: " Ala Madrid",
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg",
    postUrl: "https://i0.wp.com/trivela.com.br/wp-content/uploads/2022/06/Messi-Argentina.jpg?fit=1920%2C1080&ssl=1",
  ),
  UserModel(
    name: "Ney Ney",
    description: " Ferrei meu pé de novo",
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg",
    postUrl: "https://images.psg.media/media/184662/neymar-jr.jpeg?anchor=center&mode=crop&width=800&height=450&quality=60",
  ),
  UserModel(
    name: "Elon Musk",
    description: " Vou fazer um foguete",
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg",
    postUrl: "https://classic.exame.com/wp-content/uploads/2021/05/elon-musk.jpg?quality=70&strip=info&w=1024",
  ),
  UserModel(
    name: "Will Smith",
    description: " Keep my wif's name out yout fucking mouth",
    avatarUrl:
        "https://br.web.img2.acsta.net/pictures/17/02/08/16/50/452749.jpg",
    postUrl: "https://uploads.metropoles.com/wp-content/uploads/2022/03/28124351/GettyImages-1388090285-600x400.jpg",
  ),
];
