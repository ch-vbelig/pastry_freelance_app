class ImageAsset {
  int? typeId;
  int optionId;
  int? formId;
  int? tasteId;
  String imagePath;

  ImageAsset({
    this.typeId,
    required this.optionId,
    this.formId,
    this.tasteId,
    required this.imagePath,
  }) {}
}