class Products {

  String _id ;
  String _name;
  String _price;
  String _image;
  String _description;

  Products(this._id, this._name, this._price, this._image, this._description);

  String get description => _description;

  String get image => _image;

  String get price => _price;

  String get name => _name;

  String get id => _id;

  set description(String value) {
    _description = value;
  }

  set image(String value) {
    _image = value;
  }

  set price(String value) {
    _price = value;
  }

  set name(String value) {
    _name = value;
  }

  set id(String value) {
    _id = value;
  }
}