

class Question{

  String _quest;
  bool _answer;

  Question(this._quest, this._answer);

  bool get answer => _answer;

  set answer(bool value) {
    _answer = value;
  }

  String get quest => _quest;

  set quest(String value) {
    _quest = value;
  }
}