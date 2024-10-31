class OnBoardModel {
  final String title, disc, imagePath;

  OnBoardModel(
      {required this.title, required this.disc, required this.imagePath});
}

final List<OnBoardModel> onBoardData = [
  OnBoardModel(
      title: 'Online Supermarket',
      disc:
          'Get fresh grocery & essentials food at your service in within less time',
      imagePath: 'assets/images/onboard_1.jpg'),
  OnBoardModel(
      title: 'Ship at your home',
      disc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu est a enim imperdiet laoreet. Mauris eu sapien vestibulum,',
      imagePath: 'assets/images/onboard_2.jpg'),
  OnBoardModel(
      title: 'Get any package delivered',
      disc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu est a enim imperdiet laoreet.',
      imagePath: 'assets/images/onboard_3.jpg'),
];
