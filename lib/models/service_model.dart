class BaseServiceModel {
  final String? _id;

  String? get id => _id;
  
  BaseServiceModel(this._id);
  
  Map<String, dynamic> toJSON() {
    return {
      "_id": _id,
    };
  }
}