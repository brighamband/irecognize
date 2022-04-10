class AboutModel {
  String title;
  String info;
  bool isNew = false;

  AboutModel(this.title, this.info);

  AboutModel.newInfo(this.title, this.info, {this.isNew = true});
}
