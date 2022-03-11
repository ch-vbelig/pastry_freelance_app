class ImageAsset {
  int? typeId;
  int optionId;
  int? formId;
  String imagePath;

  ImageAsset({
    this.typeId,
    required this.optionId,
    this.formId,
    required this.imagePath,
  }) {}
}