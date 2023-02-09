class Pair<F, S> {
  F _a;
  S _b;

  Pair(this._a, this._b);

  F get first => _a;

  S get second => _b;


  void setFirst(F value){
    _a = value;
  }

  void setSecond(S value){
    _b = value;
  }

}
