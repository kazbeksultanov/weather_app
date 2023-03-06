import 'package:decimal/decimal.dart';
import 'package:drivers/show/money.dart';
import 'package:equatable/equatable.dart';

class CryptoCurrencyMeta extends Equatable {
  final int decimals;
  final int rounding;

  const CryptoCurrencyMeta({
    required this.decimals,
    required this.rounding,
  });

  @override
  List<Object?> get props => [decimals, rounding];
}

class CryptoCurrencyMoney extends Equatable {
  final CryptoCurrencyMeta currencyMeta;
  final BigInt _value;

  const CryptoCurrencyMoney(this.currencyMeta, this._value);

  static CryptoCurrencyMoney fromDouble(CryptoCurrencyMeta currencyMeta, double value) {
    final decimal = Decimal.parse(value.toString()) * _pow10(currencyMeta);
    final amount = BigInt.parse(decimal.round().toString());
    return CryptoCurrencyMoney(currencyMeta, amount);
  }

  static CryptoCurrencyMoney? tryParse(
    CryptoCurrencyMeta currencyMeta,
    String value,
  ) {
    final decimal = Decimal.parse(value) * _pow10(currencyMeta);
    final amount = BigInt.tryParse(decimal.round().toString());

    if (amount != null) {
      return CryptoCurrencyMoney(currencyMeta, amount);
    } else {
      return null;
    }
  }

  static CryptoCurrencyMoney fromInt(CryptoCurrencyMeta currencyMeta, int value) {
    final decimal = Decimal.fromInt(value) * _pow10(currencyMeta);
    final amount = BigInt.parse(decimal.round().toString());
    return CryptoCurrencyMoney(currencyMeta, amount);
  }

  static CryptoCurrencyMoney fromHex(CryptoCurrencyMeta currencyMeta, String hexValue) {
    final decimal = Decimal.fromBigInt(BigInt.parse(hexValue)) * _pow10(currencyMeta);
    final amount = BigInt.parse(decimal.round().toString());
    return CryptoCurrencyMoney(currencyMeta, amount);
  }

  static CryptoCurrencyMoney fromString(CryptoCurrencyMeta currencyMeta, String value) {
    final decimal = Decimal.parse(value) * _pow10(currencyMeta);
    final amount = BigInt.parse(decimal.round().toString());
    return CryptoCurrencyMoney(currencyMeta, amount);
  }

  static CryptoCurrencyMoney fromBalanceString(CryptoCurrencyMeta currencyMeta, String value) {
    return CryptoCurrencyMoney(currencyMeta, BigInt.parse(value));
  }

  static CryptoCurrencyMoney fromDecimal(CryptoCurrencyMeta currencyMeta, Decimal value) {
    final decimal = value * _pow10(currencyMeta);
    final amount = BigInt.parse(decimal.round().toString());
    return CryptoCurrencyMoney(currencyMeta, amount);
  }

  CryptoCurrencyMoney operator +(CryptoCurrencyMoney other) {
    return CryptoCurrencyMoney(currencyMeta, _value + other._value);
  }

  CryptoCurrencyMoney operator -(CryptoCurrencyMoney other) {
    return CryptoCurrencyMoney(currencyMeta, _value - other._value);
  }

  CryptoCurrencyMoney operator *(Object other) {
    if (other is Decimal) {
      return CryptoCurrencyMoney.fromDecimal(currencyMeta, toDecimal() * other);
    } else if (other is CryptoCurrencyMoney) {
      return CryptoCurrencyMoney.fromDecimal(currencyMeta, toDecimal() * other.toDecimal());
    } else {
      throw UnsupportedError('Unsupported type: ${other.runtimeType}');
    }
  }

  CryptoCurrencyMoney operator /(Object other) {
    if (other is Decimal) {
      return CryptoCurrencyMoney.fromDecimal(currencyMeta,
          (toDecimal() / other).toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding));
    } else if (other is CryptoCurrencyMoney) {
      return CryptoCurrencyMoney.fromDecimal(
          currencyMeta,
          (toDecimal() / other.toDecimal())
              .toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding));
    } else {
      throw UnsupportedError('Unsupported type: ${other.runtimeType}');
    }
  }

  bool operator >(CryptoCurrencyMoney other) {
    return _value > other._value;
  }

  bool operator <(CryptoCurrencyMoney other) {
    return _value < other._value;
  }

  bool operator >=(CryptoCurrencyMoney other) {
    return _value >= other._value;
  }

  bool operator <=(CryptoCurrencyMoney other) {
    return _value <= other._value;
  }

  static Decimal _pow10(CryptoCurrencyMeta currencyMeta) =>
      Decimal.fromInt(10).pow(currencyMeta.decimals);

  String toHex({bool prefix = true}) {
    final hex = _value.toRadixString(16);
    if (hex.length % 2 != 0) {
      return prefix ? '0x0$hex' : hex;
    }
    return prefix ? '0x$hex' : hex;
  }

  @override
  String toString() {
    final base = Decimal.fromInt(10).pow(currencyMeta.rounding);
    final rounded = (toDecimal() * base).round();
    return (rounded / base).toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding).toString();
  }

  String toStringNoRounding() {
    final base = Decimal.fromInt(10).pow(currencyMeta.decimals);
    final rounded = toDecimal() * base;
    return (rounded / base).toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding).toString();
  }

  String toStringFloor() {
    final base = Decimal.fromInt(10).pow(currencyMeta.rounding);
    final rounded = (toDecimal() * base).floor();
    return (rounded / base).toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding).toString();
  }

  String toStringStd6() {
    final base = Decimal.fromInt(10).pow(currencyMeta.decimals);
    final rounded = toDecimal() * base;

    return showMoneyInCurrency(
        (rounded / base).toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding).toDouble());
  }

  double toDouble() {
    return toDecimal().toDouble();
  }

  BigInt toBigInt() {
    return _value;
  }

  Decimal toDecimal() {
    final decimals = Decimal.parse(_value.toString()) / _pow10(currencyMeta);
    return decimals.toDecimal(scaleOnInfinitePrecision: currencyMeta.rounding);
  }

  @override
  List<Object> get props => [_value, currencyMeta];
}
