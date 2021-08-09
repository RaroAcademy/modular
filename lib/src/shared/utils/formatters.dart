class Formatters {
  String doubleToCurrency(double? value) {
    if (value != null)
      return "R\$ ${value.toStringAsFixed(2).replaceAll(".", ",")}";
    return "R\$ 0,00";
  }
}