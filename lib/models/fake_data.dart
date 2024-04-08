import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/data_models.dart';

Map mainScreenTopBannerMap = {
  "imageAsset": Assets.images.topBanner.path,
  "writer": "Reza Javanmaqul",
  "view": "3981",
  "title": "Flutter for beginners",
  "date": "2 days before"
};

List<HashTagsModel> tagList = [
  HashTagsModel(title: "Python"),
  HashTagsModel(title: "php"),
  HashTagsModel(title: "Java"),
  HashTagsModel(title: "C#.net"),
  HashTagsModel(title: "Flutter"),
];
List<HashTagsModel> tagListAdded = [];

List<BlogModel> blogList = [
  BlogModel(
      id: 1,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/c363ae23a2_599a1c1defc80f581ebc68eaf71e0375_thumb.jpg",
      title: "What is the Flutter?",
      writer: "Reza Javan",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "1 Month before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
  BlogModel(
      id: 2,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/7ae215184c_cbedaef229fc1a0037957f90ae47361b.jpg",
      title: "Where can I get some?",
      writer: "Ali Ahmadi",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "2 Monthes before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
  BlogModel(
      id: 3,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/ef0e77ece8_9b0e6b7af5dbd708ef8b6b306d418fd6_thumb.jpg",
      title: "Why do we use it?",
      writer: "Mohammad",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "2 hours before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
  BlogModel(
      id: 4,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/abf858ac6c_d604192d072a1feec7a4a272202254f2_thumb.jpg",
      title: "Where does it come from?",
      writer: "Saeid",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "3 hours before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
];

List<PodcastModel> podcastList = [
  PodcastModel(
      id: 1,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/abf858ac6c_d604192d072a1feec7a4a272202254f2_thumb.jpg",
      title: "What is the programming?",
      writer: "Reza Javan",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "1 Month before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
  PodcastModel(
      id: 2,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/ef0e77ece8_9b0e6b7af5dbd708ef8b6b306d418fd6_thumb.jpg",
      title: "Where can I get some data?",
      writer: "Fariba",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "2 Monthes before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
  PodcastModel(
      id: 3,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/c363ae23a2_599a1c1defc80f581ebc68eaf71e0375_thumb.jpg",
      title: "Why do we use it?",
      writer: "Mohammad",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "2 hours before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
  PodcastModel(
      id: 4,
      imageUrl:
          "https://cdnmrtehran.ir/media/mp3s/01/abf858ac6c_d604192d072a1feec7a4a272202254f2_thumb.jpg",
      title: "Where does it come from?",
      writer: "Saeid",
      writerImageUrl:
          "https://files.virgool.io/upload/users/53502/avatar…HR.png?x-img=v1/resize,h_120,w_120/optimize,q_100",
      date: "3 hours before",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""",
      views: "36353"),
];
