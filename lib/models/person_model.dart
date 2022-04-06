class PersonModel {
  num id;
  String name;
  String tagline;
  String? imageUrl;

  PersonModel(this.id, this.name, this.tagline, this.imageUrl);

  PersonModel.noImage(this.id, this.name, this.tagline);
}
