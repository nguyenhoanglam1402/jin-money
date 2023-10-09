import 'package:jin_app/models/service_model.dart';

class CreateOrUpdateEarningSourceModel extends BaseServiceModel {
  double amount;
  String sourceName;
  String colorHexCode;

  CreateOrUpdateEarningSourceModel(super._id, this.amount, this.colorHexCode, this.sourceName);

  @override
  Map<String, dynamic> toJSON() => {
    "amount": amount,
    "sourceName": sourceName,
    "colorHexCode": colorHexCode
  };
}

class GetEarningSourceModel extends BaseServiceModel {
  final double _amount;
  final String _sourceName;
  final String _colorHexCode;

  double get amount => _amount;
  String get sourceName => _sourceName;
  String get colorHexCode => _colorHexCode;

  GetEarningSourceModel(super._id, this._amount, this._sourceName, this._colorHexCode);

  @override
  Map<String, dynamic> toJSON() => {
    "id": id,
    "amount": _amount,
    "sourceName": _sourceName,
    "colorHexCode": _colorHexCode
  };
}