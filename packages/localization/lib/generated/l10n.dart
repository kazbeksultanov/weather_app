// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppString {
  AppString();

  static AppString? _current;

  static AppString get current {
    assert(_current != null,
        'No instance of AppString was loaded. Try to initialize the AppString delegate before accessing AppString.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppString> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppString();
      AppString._current = instance;

      return instance;
    });
  }

  static AppString of(BuildContext context) {
    final instance = AppString.maybeOf(context);
    assert(instance != null,
        'No instance of AppString present in the widget tree. Did you add AppString.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppString? maybeOf(BuildContext context) {
    return Localizations.of<AppString>(context, AppString);
  }

  /// `Weather App`
  String get title {
    return Intl.message(
      'Weather App',
      name: 'title',
      desc: 'The application title',
      args: [],
    );
  }

  /// `Ошибка запроса сервера`
  String get serverRequestError {
    return Intl.message(
      'Ошибка запроса сервера',
      name: 'serverRequestError',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка сервиса KeyWallet`
  String get keyWalletSdkError {
    return Intl.message(
      'Ошибка сервиса KeyWallet',
      name: 'keyWalletSdkError',
      desc: '',
      args: [],
    );
  }

  /// `Действие отменено`
  String get actionCanceled {
    return Intl.message(
      'Действие отменено',
      name: 'actionCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Города`
  String get cities {
    return Intl.message(
      'Города',
      name: 'cities',
      desc: '',
      args: [],
    );
  }

  /// `Поиск городов`
  String get searchCities {
    return Intl.message(
      'Поиск городов',
      name: 'searchCities',
      desc: '',
      args: [],
    );
  }

  /// `Начните вводить название города`
  String get startEnteringCityName {
    return Intl.message(
      'Начните вводить название города',
      name: 'startEnteringCityName',
      desc: '',
      args: [],
    );
  }

  /// `Пока нет выбранных городов. \nВыберите из страницы поиска`
  String get noSelectedCitiesYet {
    return Intl.message(
      'Пока нет выбранных городов. \nВыберите из страницы поиска',
      name: 'noSelectedCitiesYet',
      desc: '',
      args: [],
    );
  }

  /// `Повторите PIN-код`
  String get repeatPinCode {
    return Intl.message(
      'Повторите PIN-код',
      name: 'repeatPinCode',
      desc: '',
      args: [],
    );
  }

  /// `У меня уже есть кошелёк`
  String get alreadyHaveWallet {
    return Intl.message(
      'У меня уже есть кошелёк',
      name: 'alreadyHaveWallet',
      desc: '',
      args: [],
    );
  }

  /// `Создать кошелёк`
  String get createWallet {
    return Intl.message(
      'Создать кошелёк',
      name: 'createWallet',
      desc: '',
      args: [],
    );
  }

  /// `Приватные ключи`
  String get onboarding1Underline {
    return Intl.message(
      'Приватные ключи',
      name: 'onboarding1Underline',
      desc: '',
      args: [],
    );
  }

  /// `, которые никогда не покинут ваше устройство`
  String get onboarding1 {
    return Intl.message(
      ', которые никогда не покинут ваше устройство',
      name: 'onboarding1',
      desc: '',
      args: [],
    );
  }

  /// `Безопасное хранение`
  String get onboarding2Underline {
    return Intl.message(
      'Безопасное хранение',
      name: 'onboarding2Underline',
      desc: '',
      args: [],
    );
  }

  /// ` всей криптовалюты в одном месте`
  String get onboarding2 {
    return Intl.message(
      ' всей криптовалюты в одном месте',
      name: 'onboarding2',
      desc: '',
      args: [],
    );
  }

  /// `Быстрый и анонимный обмен`
  String get onboarding3Underline {
    return Intl.message(
      'Быстрый и анонимный обмен',
      name: 'onboarding3Underline',
      desc: '',
      args: [],
    );
  }

  /// ` криптовалюты`
  String get onboarding3 {
    return Intl.message(
      ' криптовалюты',
      name: 'onboarding3',
      desc: '',
      args: [],
    );
  }

  /// `Зарабатывайте, тратьте и торгуйте`
  String get onboarding4Underline {
    return Intl.message(
      'Зарабатывайте, тратьте и торгуйте',
      name: 'onboarding4Underline',
      desc: '',
      args: [],
    );
  }

  /// ` с доступом к децентрализованным приложениям`
  String get onboarding4 {
    return Intl.message(
      ' с доступом к децентрализованным приложениям',
      name: 'onboarding4',
      desc: '',
      args: [],
    );
  }

  /// `Правовая информация`
  String get legal {
    return Intl.message(
      'Правовая информация',
      name: 'legal',
      desc: '',
      args: [],
    );
  }

  /// `Для создания кошелька необходимо ознакомиться с Условиями обслуживания и Политикой конфиденциальности `
  String get legalHint {
    return Intl.message(
      'Для создания кошелька необходимо ознакомиться с Условиями обслуживания и Политикой конфиденциальности ',
      name: 'legalHint',
      desc: '',
      args: [],
    );
  }

  /// `Политика конфиденциальности`
  String get privacyPolicy {
    return Intl.message(
      'Политика конфиденциальности',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Условия обслуживания`
  String get termsOfUse {
    return Intl.message(
      'Условия обслуживания',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Я прочитал и принимаю Условия обслуживания и Политику конфиденциальности`
  String get haveReadLegal {
    return Intl.message(
      'Я прочитал и принимаю Условия обслуживания и Политику конфиденциальности',
      name: 'haveReadLegal',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get continueText {
    return Intl.message(
      'Продолжить',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Резервная копия вашего кошелька`
  String get backupCopy {
    return Intl.message(
      'Резервная копия вашего кошелька',
      name: 'backupCopy',
      desc: '',
      args: [],
    );
  }

  /// `Сейчас вы увидите 12 слов, которые позволят вам восстановить доступ к кошельку. Будьте готовы сохранить секретную фразу в безопасном месте.`
  String get backupCopyHint {
    return Intl.message(
      'Сейчас вы увидите 12 слов, которые позволят вам восстановить доступ к кошельку. Будьте готовы сохранить секретную фразу в безопасном месте.',
      name: 'backupCopyHint',
      desc: '',
      args: [],
    );
  }

  /// `Я понимаю, что если потеряю секретную фразу, то не смогу восстановить доступ к своему кошельку`
  String get backupCopyAgree {
    return Intl.message(
      'Я понимаю, что если потеряю секретную фразу, то не смогу восстановить доступ к своему кошельку',
      name: 'backupCopyAgree',
      desc: '',
      args: [],
    );
  }

  /// `Сгенерировать слова`
  String get generateMnemonic {
    return Intl.message(
      'Сгенерировать слова',
      name: 'generateMnemonic',
      desc: '',
      args: [],
    );
  }

  /// `Сгенерировать QR-code`
  String get generateQrCode {
    return Intl.message(
      'Сгенерировать QR-code',
      name: 'generateQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Ваша секретная фраза`
  String get yourSecretPhrase {
    return Intl.message(
      'Ваша секретная фраза',
      name: 'yourSecretPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Запишите и сохраните эти слова в правильном порядке. Храните фразу в надежном месте и никому ее не передавайте.`
  String get secretPhraseHint {
    return Intl.message(
      'Запишите и сохраните эти слова в правильном порядке. Храните фразу в надежном месте и никому ее не передавайте.',
      name: 'secretPhraseHint',
      desc: '',
      args: [],
    );
  }

  /// `Скопировать фразу`
  String get copyPhrase {
    return Intl.message(
      'Скопировать фразу',
      name: 'copyPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Показать QR-код`
  String get showQrCode {
    return Intl.message(
      'Показать QR-код',
      name: 'showQrCode',
      desc: '',
      args: [],
    );
  }

  /// `Я надежно сохранил фразу`
  String get haveSecurelySavedPhrase {
    return Intl.message(
      'Я надежно сохранил фразу',
      name: 'haveSecurelySavedPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердите фразу восстановления`
  String get verifyPhrase {
    return Intl.message(
      'Подтвердите фразу восстановления',
      name: 'verifyPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Нажимайте на слова в правильном порядке, чтобы создать кошелёк.`
  String get verifyPhraseHint {
    return Intl.message(
      'Нажимайте на слова в правильном порядке, чтобы создать кошелёк.',
      name: 'verifyPhraseHint',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get verify {
    return Intl.message(
      'Подтвердить',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Текущий баланс`
  String get currentBalance {
    return Intl.message(
      'Текущий баланс',
      name: 'currentBalance',
      desc: '',
      args: [],
    );
  }

  /// `Попробуйте снова`
  String get tryAgain {
    return Intl.message(
      'Попробуйте снова',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Подробнее об ошибке`
  String get errorDetails {
    return Intl.message(
      'Подробнее об ошибке',
      name: 'errorDetails',
      desc: '',
      args: [],
    );
  }

  /// `Фраза скопирована в буфер обмена`
  String get mnemonicHasCopied {
    return Intl.message(
      'Фраза скопирована в буфер обмена',
      name: 'mnemonicHasCopied',
      desc: '',
      args: [],
    );
  }

  /// `QR-код`
  String get qrCode {
    return Intl.message(
      'QR-код',
      name: 'qrCode',
      desc: '',
      args: [],
    );
  }

  /// `В этом QR-коде содержится ваша секретная фраза. Сохраните код в надежном месте и никому его не передавайте.`
  String get mnemonicQrCodeHint {
    return Intl.message(
      'В этом QR-коде содержится ваша секретная фраза. Сохраните код в надежном месте и никому его не передавайте.',
      name: 'mnemonicQrCodeHint',
      desc: '',
      args: [],
    );
  }

  /// `Отлично!`
  String get excellent {
    return Intl.message(
      'Отлично!',
      name: 'excellent',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get transfer {
    return Intl.message(
      'Отправить',
      name: 'transfer',
      desc: '',
      args: [],
    );
  }

  /// `Получить`
  String get receive {
    return Intl.message(
      'Получить',
      name: 'receive',
      desc: '',
      args: [],
    );
  }

  /// `Скопировать`
  String get copy {
    return Intl.message(
      'Скопировать',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Транзакции`
  String get transactions {
    return Intl.message(
      'Транзакции',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Здесь будут отображаться ваши будущие транзакции`
  String get noTransactions {
    return Intl.message(
      'Здесь будут отображаться ваши будущие транзакции',
      name: 'noTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Адрес скопирован`
  String get successfullyCopied {
    return Intl.message(
      'Адрес скопирован',
      name: 'successfullyCopied',
      desc: '',
      args: [],
    );
  }

  /// `Укажите сумму`
  String get setAmount {
    return Intl.message(
      'Укажите сумму',
      name: 'setAmount',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться`
  String get share {
    return Intl.message(
      'Поделиться',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Запросить валюту`
  String get requestCurrency {
    return Intl.message(
      'Запросить валюту',
      name: 'requestCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Запросить {currency}`
  String requestMoneyType(Object currency) {
    return Intl.message(
      'Запросить $currency',
      name: 'requestMoneyType',
      desc: '',
      args: [currency],
    );
  }

  /// `Введите сумму`
  String get enterAmount {
    return Intl.message(
      'Введите сумму',
      name: 'enterAmount',
      desc: '',
      args: [],
    );
  }

  /// `Запросить валюту`
  String get transferCurrency {
    return Intl.message(
      'Запросить валюту',
      name: 'transferCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Вставить`
  String get paste {
    return Intl.message(
      'Вставить',
      name: 'paste',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get verifyTransactionPageTile {
    return Intl.message(
      'Подтвердить',
      name: 'verifyTransactionPageTile',
      desc: '',
      args: [],
    );
  }

  /// `Адрес отправителя`
  String get senderAddress {
    return Intl.message(
      'Адрес отправителя',
      name: 'senderAddress',
      desc: '',
      args: [],
    );
  }

  /// `Адрес получателя`
  String get recipientAddress {
    return Intl.message(
      'Адрес получателя',
      name: 'recipientAddress',
      desc: '',
      args: [],
    );
  }

  /// `Комиссия за транзакцию в сети`
  String get networkFee {
    return Intl.message(
      'Комиссия за транзакцию в сети',
      name: 'networkFee',
      desc: '',
      args: [],
    );
  }

  /// `Отправить {total}`
  String sendMoney(Object total) {
    return Intl.message(
      'Отправить $total',
      name: 'sendMoney',
      desc: '',
      args: [total],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Кошелёк`
  String get wallet {
    return Intl.message(
      'Кошелёк',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Кошельки`
  String get wallets {
    return Intl.message(
      'Кошельки',
      name: 'wallets',
      desc: '',
      args: [],
    );
  }

  /// `Безопасность`
  String get security {
    return Intl.message(
      'Безопасность',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Сейчас на балансе`
  String get availableBalance {
    return Intl.message(
      'Сейчас на балансе',
      name: 'availableBalance',
      desc: '',
      args: [],
    );
  }

  /// `PIN-код`
  String get pinCode {
    return Intl.message(
      'PIN-код',
      name: 'pinCode',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Биометрия`
  String get biometric {
    return Intl.message(
      'Биометрия',
      name: 'biometric',
      desc: '',
      args: [],
    );
  }

  /// `Автоматическая блокировка`
  String get autoBlocking {
    return Intl.message(
      'Автоматическая блокировка',
      name: 'autoBlocking',
      desc: '',
      args: [],
    );
  }

  /// `Немедленно`
  String get autoBlockingInstant {
    return Intl.message(
      'Немедленно',
      name: 'autoBlockingInstant',
      desc: '',
      args: [],
    );
  }

  /// `Через 1 минуту`
  String get autoBlockingIn1Minute {
    return Intl.message(
      'Через 1 минуту',
      name: 'autoBlockingIn1Minute',
      desc: '',
      args: [],
    );
  }

  /// `Через 5 минут`
  String get autoBlockingIn5Minutes {
    return Intl.message(
      'Через 5 минут',
      name: 'autoBlockingIn5Minutes',
      desc: '',
      args: [],
    );
  }

  /// `Через 1 час`
  String get autoBlockingIn1Hour {
    return Intl.message(
      'Через 1 час',
      name: 'autoBlockingIn1Hour',
      desc: '',
      args: [],
    );
  }

  /// `Через 5 часов`
  String get autoBlockingIn5Hour {
    return Intl.message(
      'Через 5 часов',
      name: 'autoBlockingIn5Hour',
      desc: '',
      args: [],
    );
  }

  /// `Придумайте код`
  String get createPinCode {
    return Intl.message(
      'Придумайте код',
      name: 'createPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Введите код`
  String get enterPinCode {
    return Intl.message(
      'Введите код',
      name: 'enterPinCode',
      desc: '',
      args: [],
    );
  }

  /// `для доступа к приложению`
  String get toAccessTheApplication {
    return Intl.message(
      'для доступа к приложению',
      name: 'toAccessTheApplication',
      desc: '',
      args: [],
    );
  }

  /// `для разблокировки`
  String get toUnlock {
    return Intl.message(
      'для разблокировки',
      name: 'toUnlock',
      desc: '',
      args: [],
    );
  }

  /// `Придумайте пароль`
  String get createPassword {
    return Intl.message(
      'Придумайте пароль',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `Повторите пароль`
  String get repeatPassword {
    return Intl.message(
      'Повторите пароль',
      name: 'repeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `введите пароль еще раз`
  String get enterPasswordAgain {
    return Intl.message(
      'введите пароль еще раз',
      name: 'enterPasswordAgain',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get enterPassword {
    return Intl.message(
      'Введите пароль',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Задайте пароль`
  String get setPassword {
    return Intl.message(
      'Задайте пароль',
      name: 'setPassword',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get submit {
    return Intl.message(
      'Отправить',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Добавить токен`
  String get addToken {
    return Intl.message(
      'Добавить токен',
      name: 'addToken',
      desc: '',
      args: [],
    );
  }

  /// `Добавить новый токен`
  String get addNewToken {
    return Intl.message(
      'Добавить новый токен',
      name: 'addNewToken',
      desc: '',
      args: [],
    );
  }

  /// `Поиск...`
  String get searchInputTitle {
    return Intl.message(
      'Поиск...',
      name: 'searchInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Тип сети`
  String get networkTokenType {
    return Intl.message(
      'Тип сети',
      name: 'networkTokenType',
      desc: '',
      args: [],
    );
  }

  /// `Выберите сеть`
  String get selectNetwork {
    return Intl.message(
      'Выберите сеть',
      name: 'selectNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Адрес контракта`
  String get contractAddress {
    return Intl.message(
      'Адрес контракта',
      name: 'contractAddress',
      desc: '',
      args: [],
    );
  }

  /// `Символ`
  String get symbol {
    return Intl.message(
      'Символ',
      name: 'symbol',
      desc: '',
      args: [],
    );
  }

  /// `Decimals`
  String get decimals {
    return Intl.message(
      'Decimals',
      name: 'decimals',
      desc: '',
      args: [],
    );
  }

  /// `Ничего не найдено`
  String get notFound {
    return Intl.message(
      'Ничего не найдено',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `Непредвиденная ошибка`
  String get unexpectedError {
    return Intl.message(
      'Непредвиденная ошибка',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо ввести сумму от {min} до {max}`
  String feeOutOfRange(Object min, Object max) {
    return Intl.message(
      'Необходимо ввести сумму от $min до $max',
      name: 'feeOutOfRange',
      desc: '',
      args: [min, max],
    );
  }

  /// `Недостаточно средств на балансе`
  String get insufficientBalance {
    return Intl.message(
      'Недостаточно средств на балансе',
      name: 'insufficientBalance',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно средств`
  String get insufficientBalanceButtonTitle {
    return Intl.message(
      'Недостаточно средств',
      name: 'insufficientBalanceButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Действие отменено`
  String get cancelled {
    return Intl.message(
      'Действие отменено',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать кошелёк`
  String get selectWallet {
    return Intl.message(
      'Выбрать кошелёк',
      name: 'selectWallet',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось выбрать кошелек`
  String get selectWalletError {
    return Intl.message(
      'Не удалось выбрать кошелек',
      name: 'selectWalletError',
      desc: '',
      args: [],
    );
  }

  /// `Показать секретную фразу`
  String get showSecretPhrase {
    return Intl.message(
      'Показать секретную фразу',
      name: 'showSecretPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Кошелёк успешно выбран`
  String get selectWalletSuccess {
    return Intl.message(
      'Кошелёк успешно выбран',
      name: 'selectWalletSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Входящая транзакция`
  String get incomingTransaction {
    return Intl.message(
      'Входящая транзакция',
      name: 'incomingTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Ожидающая транзакция`
  String get pendingTransaction {
    return Intl.message(
      'Ожидающая транзакция',
      name: 'pendingTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Исходящая транзакция`
  String get outgoingTransaction {
    return Intl.message(
      'Исходящая транзакция',
      name: 'outgoingTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждения`
  String get confirmation {
    return Intl.message(
      'Подтверждения',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Время транзакции`
  String get transactionTime {
    return Intl.message(
      'Время транзакции',
      name: 'transactionTime',
      desc: '',
      args: [],
    );
  }

  /// `Хэш транзакции`
  String get transactionHash {
    return Intl.message(
      'Хэш транзакции',
      name: 'transactionHash',
      desc: '',
      args: [],
    );
  }

  /// `Неудачная транзакция`
  String get failedTransaction {
    return Intl.message(
      'Неудачная транзакция',
      name: 'failedTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Статус транзакции`
  String get transactionStatus {
    return Intl.message(
      'Статус транзакции',
      name: 'transactionStatus',
      desc: '',
      args: [],
    );
  }

  /// `Успешно`
  String get successTransaction {
    return Intl.message(
      'Успешно',
      name: 'successTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Выполняется`
  String get inProgressTransaction {
    return Intl.message(
      'Выполняется',
      name: 'inProgressTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться транзакцией`
  String get shareTransaction {
    return Intl.message(
      'Поделиться транзакцией',
      name: 'shareTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Детали транзакции`
  String get transactionDetails {
    return Intl.message(
      'Детали транзакции',
      name: 'transactionDetails',
      desc: '',
      args: [],
    );
  }

  /// `Вы неверно ввели фразу. Попробуйте снова.`
  String get invalidMnemonic {
    return Intl.message(
      'Вы неверно ввели фразу. Попробуйте снова.',
      name: 'invalidMnemonic',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен содержать:`
  String get passwordValidityToRules {
    return Intl.message(
      'Пароль должен содержать:',
      name: 'passwordValidityToRules',
      desc: '',
      args: [],
    );
  }

  /// `символы не используются ( скобки, знаки препинания и т.д.)`
  String get symbolsNotUse {
    return Intl.message(
      'символы не используются ( скобки, знаки препинания и т.д.)',
      name: 'symbolsNotUse',
      desc: '',
      args: [],
    );
  }

  /// `только латинские буквы`
  String get onlyLatinLetter {
    return Intl.message(
      'только латинские буквы',
      name: 'onlyLatinLetter',
      desc: '',
      args: [],
    );
  }

  /// `мин. 1 заглавная буква`
  String get minOneUppercaseLetter {
    return Intl.message(
      'мин. 1 заглавная буква',
      name: 'minOneUppercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `мин. 1 прописная буква`
  String get minOneLowercaseLetter {
    return Intl.message(
      'мин. 1 прописная буква',
      name: 'minOneLowercaseLetter',
      desc: '',
      args: [],
    );
  }

  /// `мин. 1 цифра`
  String get minOneDigit {
    return Intl.message(
      'мин. 1 цифра',
      name: 'minOneDigit',
      desc: '',
      args: [],
    );
  }

  /// `мин. 6 знаков`
  String get min6Characters {
    return Intl.message(
      'мин. 6 знаков',
      name: 'min6Characters',
      desc: '',
      args: [],
    );
  }

  /// `Невалидный адрес для этой сети`
  String get invalidAddress {
    return Intl.message(
      'Невалидный адрес для этой сети',
      name: 'invalidAddress',
      desc: '',
      args: [],
    );
  }

  /// `Кошелёк уже существует`
  String get walletAlreadyExists {
    return Intl.message(
      'Кошелёк уже существует',
      name: 'walletAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `Кошелёк c этим именем уже существует`
  String get walletWithThisNameAlreadyExists {
    return Intl.message(
      'Кошелёк c этим именем уже существует',
      name: 'walletWithThisNameAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка добавления токена`
  String get errorAddingNewToken {
    return Intl.message(
      'Ошибка добавления токена',
      name: 'errorAddingNewToken',
      desc: '',
      args: [],
    );
  }

  /// `Мультимонетный кошелёк`
  String get multiCoinWallet {
    return Intl.message(
      'Мультимонетный кошелёк',
      name: 'multiCoinWallet',
      desc: '',
      args: [],
    );
  }

  /// `Импортировать`
  String get import {
    return Intl.message(
      'Импортировать',
      name: 'import',
      desc: '',
      args: [],
    );
  }

  /// `Что такое секретная фраза?`
  String get whatIsAsecretPhrase {
    return Intl.message(
      'Что такое секретная фраза?',
      name: 'whatIsAsecretPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Секретная фраза`
  String get secretPhrase {
    return Intl.message(
      'Секретная фраза',
      name: 'secretPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Обычно 12 (иногда 24) слов, разделенных пробелом`
  String get aboutSecretPhrase {
    return Intl.message(
      'Обычно 12 (иногда 24) слов, разделенных пробелом',
      name: 'aboutSecretPhrase',
      desc: '',
      args: [],
    );
  }

  /// `CryptoCardWallet кошелёк`
  String get cryptoCardWallet {
    return Intl.message(
      'CryptoCardWallet кошелёк',
      name: 'cryptoCardWallet',
      desc: '',
      args: [],
    );
  }

  /// `Адрес успешно скопирован`
  String get addressCopied {
    return Intl.message(
      'Адрес успешно скопирован',
      name: 'addressCopied',
      desc: '',
      args: [],
    );
  }

  /// `Хэш успешно скопирован`
  String get hashCopied {
    return Intl.message(
      'Хэш успешно скопирован',
      name: 'hashCopied',
      desc: '',
      args: [],
    );
  }

  /// `Валюта успешно добавлена`
  String get assetAdded {
    return Intl.message(
      'Валюта успешно добавлена',
      name: 'assetAdded',
      desc: '',
      args: [],
    );
  }

  /// `Мультимонетный кошелёк`
  String get importWalletStandardName {
    return Intl.message(
      'Мультимонетный кошелёк',
      name: 'importWalletStandardName',
      desc: '',
      args: [],
    );
  }

  /// `Успешно`
  String get success {
    return Intl.message(
      'Успешно',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `ОК`
  String get ok {
    return Intl.message(
      'ОК',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `ДЕМО`
  String get demo {
    return Intl.message(
      'ДЕМО',
      name: 'demo',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так :(`
  String get ohno {
    return Intl.message(
      'Что-то пошло не так :(',
      name: 'ohno',
      desc: '',
      args: [],
    );
  }

  /// `Неверное значение`
  String get invalidValue {
    return Intl.message(
      'Неверное значение',
      name: 'invalidValue',
      desc: '',
      args: [],
    );
  }

  /// `Show stack trace`
  String get showStackTrace {
    return Intl.message(
      'Show stack trace',
      name: 'showStackTrace',
      desc: '',
      args: [],
    );
  }

  /// `Hide stack trace`
  String get hideStackTrace {
    return Intl.message(
      'Hide stack trace',
      name: 'hideStackTrace',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get passwordNotMatch {
    return Intl.message(
      'Пароли не совпадают',
      name: 'passwordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `PIN-код не совпадает`
  String get pinNotMatch {
    return Intl.message(
      'PIN-код не совпадает',
      name: 'pinNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, включите разрешение на доступ к камере`
  String get enableCameraPermission {
    return Intl.message(
      'Пожалуйста, включите разрешение на доступ к камере',
      name: 'enableCameraPermission',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось загрузить сессию`
  String get failedToLoadSession {
    return Intl.message(
      'Не удалось загрузить сессию',
      name: 'failedToLoadSession',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка соединения`
  String get connectionError {
    return Intl.message(
      'Ошибка соединения',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `Отсутствует`
  String get none {
    return Intl.message(
      'Отсутствует',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Отпечаток пальца`
  String get fingerprint {
    return Intl.message(
      'Отпечаток пальца',
      name: 'fingerprint',
      desc: '',
      args: [],
    );
  }

  /// `Face ID`
  String get faceID {
    return Intl.message(
      'Face ID',
      name: 'faceID',
      desc: '',
      args: [],
    );
  }

  /// `Неверный PIN-код`
  String get invalidPinCode {
    return Intl.message(
      'Неверный PIN-код',
      name: 'invalidPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Неверный пароль`
  String get invalidPassword {
    return Intl.message(
      'Неверный пароль',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Неверная биометрия`
  String get invalidBiometric {
    return Intl.message(
      'Неверная биометрия',
      name: 'invalidBiometric',
      desc: '',
      args: [],
    );
  }

  /// `Валюта не найдена`
  String get currencyNotFound {
    return Intl.message(
      'Валюта не найдена',
      name: 'currencyNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось создать кошелёк`
  String get failedGenerateWallet {
    return Intl.message(
      'Не удалось создать кошелёк',
      name: 'failedGenerateWallet',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось создать кошелёк`
  String get failedLoadingWalletState {
    return Intl.message(
      'Не удалось создать кошелёк',
      name: 'failedLoadingWalletState',
      desc: '',
      args: [],
    );
  }

  /// `Отсутствует подключение к сети Интернет`
  String get noInternetError {
    return Intl.message(
      'Отсутствует подключение к сети Интернет',
      name: 'noInternetError',
      desc: '',
      args: [],
    );
  }

  /// `Нет подключения к нашим серверам`
  String get noConnectionToOurServers {
    return Intl.message(
      'Нет подключения к нашим серверам',
      name: 'noConnectionToOurServers',
      desc: '',
      args: [],
    );
  }

  /// `Пользователь не авторизован`
  String get notAuthError {
    return Intl.message(
      'Пользователь не авторизован',
      name: 'notAuthError',
      desc: '',
      args: [],
    );
  }

  /// `Невалидное состояние ассета`
  String get invalidAssetState {
    return Intl.message(
      'Невалидное состояние ассета',
      name: 'invalidAssetState',
      desc: '',
      args: [],
    );
  }

  /// `В данном токене отсуствует контракт`
  String get noContractInGivenToken {
    return Intl.message(
      'В данном токене отсуствует контракт',
      name: 'noContractInGivenToken',
      desc: '',
      args: [],
    );
  }

  /// `Транзакция успешно отправлена`
  String get successfullyPushedTransaction {
    return Intl.message(
      'Транзакция успешно отправлена',
      name: 'successfullyPushedTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Let’s start`
  String get letIsStart {
    return Intl.message(
      'Let’s start',
      name: 'letIsStart',
      desc: '',
      args: [],
    );
  }

  /// `Откройте криптовалютный кошелёк`
  String get openWallet {
    return Intl.message(
      'Откройте криптовалютный кошелёк',
      name: 'openWallet',
      desc: '',
      args: [],
    );
  }

  /// `KeyWallet`
  String get keyWallet {
    return Intl.message(
      'KeyWallet',
      name: 'keyWallet',
      desc: '',
      args: [],
    );
  }

  /// `KeyWallet кошелёк`
  String get keyWalletWallet {
    return Intl.message(
      'KeyWallet кошелёк',
      name: 'keyWalletWallet',
      desc: '',
      args: [],
    );
  }

  /// `Закажите или подключите свой KeyWallet`
  String get orderEnterKeyWallet {
    return Intl.message(
      'Закажите или подключите свой KeyWallet',
      name: 'orderEnterKeyWallet',
      desc: '',
      args: [],
    );
  }

  /// `Bank card`
  String get bankCard {
    return Intl.message(
      'Bank card',
      name: 'bankCard',
      desc: '',
      args: [],
    );
  }

  /// `Закажите или подключите банковскую карту`
  String get createOrOrderBankCard {
    return Intl.message(
      'Закажите или подключите банковскую карту',
      name: 'createOrOrderBankCard',
      desc: '',
      args: [],
    );
  }

  /// `Приготовьте карту KeyWallet для её активации и создания кошелька. Если у вас нет карты - закажите её на сайте.`
  String get getReadyKeyWallet {
    return Intl.message(
      'Приготовьте карту KeyWallet для её активации и создания кошелька. Если у вас нет карты - закажите её на сайте.',
      name: 'getReadyKeyWallet',
      desc: '',
      args: [],
    );
  }

  /// `Заказать KeyWallet`
  String get orderKeyWallet {
    return Intl.message(
      'Заказать KeyWallet',
      name: 'orderKeyWallet',
      desc: '',
      args: [],
    );
  }

  /// `Активировать KeyWallet`
  String get activateKeyWallet {
    return Intl.message(
      'Активировать KeyWallet',
      name: 'activateKeyWallet',
      desc: '',
      args: [],
    );
  }

  /// `Начать верификацию`
  String get startVerification {
    return Intl.message(
      'Начать верификацию',
      name: 'startVerification',
      desc: '',
      args: [],
    );
  }

  /// `Поднесите KeyWallet к телефону`
  String get bringKeyWallet {
    return Intl.message(
      'Поднесите KeyWallet к телефону',
      name: 'bringKeyWallet',
      desc: '',
      args: [],
    );
  }

  /// `Поднесите KeyWallet к верхней части вашего телефона. Не убирайте карту до завершения верификации.`
  String get bringKeyWalletLong {
    return Intl.message(
      'Поднесите KeyWallet к верхней части вашего телефона. Не убирайте карту до завершения верификации.',
      name: 'bringKeyWalletLong',
      desc: '',
      args: [],
    );
  }

  /// `Установка PIN-кода`
  String get setPinCode {
    return Intl.message(
      'Установка PIN-кода',
      name: 'setPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Для вашей безопасности мы рекомендуем установить PIN-код на KeyWallet. Если вы потеряете доступ к Key Wallet мы запросим этот код.`
  String get setPinCodeRecommendation {
    return Intl.message(
      'Для вашей безопасности мы рекомендуем установить PIN-код на KeyWallet. Если вы потеряете доступ к Key Wallet мы запросим этот код.',
      name: 'setPinCodeRecommendation',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить без PIN-кода`
  String get continueWithOutPinCode {
    return Intl.message(
      'Продолжить без PIN-кода',
      name: 'continueWithOutPinCode',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ASSET STATE NOT FOUND`
  String get assetStateNotFound {
    return Intl.message(
      'ERROR ASSET STATE NOT FOUND',
      name: 'assetStateNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR TRX NOT FOUND`
  String get transactionNotFound {
    return Intl.message(
      'ERROR TRX NOT FOUND',
      name: 'transactionNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR CURRENCY NOT SUPPORTED`
  String get currencyNotSupported {
    return Intl.message(
      'ERROR CURRENCY NOT SUPPORTED',
      name: 'currencyNotSupported',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ADDRESS NOT FOUND`
  String get addressNotFound {
    return Intl.message(
      'ERROR ADDRESS NOT FOUND',
      name: 'addressNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ASSET NOT FOUND`
  String get assetNotFound {
    return Intl.message(
      'ERROR ASSET NOT FOUND',
      name: 'assetNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH MISSING`
  String get authorizationMissing {
    return Intl.message(
      'ERROR AUTH MISSING',
      name: 'authorizationMissing',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH FORBIDDEN`
  String get authorizationForbidden {
    return Intl.message(
      'ERROR AUTH FORBIDDEN',
      name: 'authorizationForbidden',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH INVALID`
  String get invalidAuthorization {
    return Intl.message(
      'ERROR AUTH INVALID',
      name: 'invalidAuthorization',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH CANNOT PARSE TOKEN`
  String get cannotParseJWTToken {
    return Intl.message(
      'ERROR AUTH CANNOT PARSE TOKEN',
      name: 'cannotParseJWTToken',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH TOKEN INVALID`
  String get invalidAuthorizationToken {
    return Intl.message(
      'ERROR AUTH TOKEN INVALID',
      name: 'invalidAuthorizationToken',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH USER NOT FOUND`
  String get userNotFound {
    return Intl.message(
      'ERROR AUTH USER NOT FOUND',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH NO PERMISSION`
  String get noPermission {
    return Intl.message(
      'ERROR AUTH NO PERMISSION',
      name: 'noPermission',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH BAD PASSWORD`
  String get badPassword {
    return Intl.message(
      'ERROR AUTH BAD PASSWORD',
      name: 'badPassword',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH SEED NOT SET`
  String get seedIsNotSet {
    return Intl.message(
      'ERROR AUTH SEED NOT SET',
      name: 'seedIsNotSet',
      desc: '',
      args: [],
    );
  }

  /// `ERROR AUTH SEED NOT FOUND`
  String get seedNotFound {
    return Intl.message(
      'ERROR AUTH SEED NOT FOUND',
      name: 'seedNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ADDRESS NOT SET`
  String get addressNotSet {
    return Intl.message(
      'ERROR ADDRESS NOT SET',
      name: 'addressNotSet',
      desc: '',
      args: [],
    );
  }

  /// `ERROR CURRENCY NOT FOUND`
  String get apiCurrencyNotFound {
    return Intl.message(
      'ERROR CURRENCY NOT FOUND',
      name: 'apiCurrencyNotFound',
      desc: '',
      args: [],
    );
  }

  /// `ERROR TRX NOT SET`
  String get transactionNotSet {
    return Intl.message(
      'ERROR TRX NOT SET',
      name: 'transactionNotSet',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ASSET STATE INVALID`
  String get assetStateInvalid {
    return Intl.message(
      'ERROR ASSET STATE INVALID',
      name: 'assetStateInvalid',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ASSET NOT SET`
  String get assetIdIsNotSet {
    return Intl.message(
      'ERROR ASSET NOT SET',
      name: 'assetIdIsNotSet',
      desc: '',
      args: [],
    );
  }

  /// `ERROR ASSET INVALID`
  String get assetInvalid {
    return Intl.message(
      'ERROR ASSET INVALID',
      name: 'assetInvalid',
      desc: '',
      args: [],
    );
  }

  /// `ERROR CURRENCY NOT SET`
  String get currencyNotSet {
    return Intl.message(
      'ERROR CURRENCY NOT SET',
      name: 'currencyNotSet',
      desc: '',
      args: [],
    );
  }

  /// `Вернуться`
  String get goBack {
    return Intl.message(
      'Вернуться',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `Сменить PIN-код`
  String get changePin {
    return Intl.message(
      'Сменить PIN-код',
      name: 'changePin',
      desc: '',
      args: [],
    );
  }

  /// `Просмотреть данные о карте`
  String get viewCardData {
    return Intl.message(
      'Просмотреть данные о карте',
      name: 'viewCardData',
      desc: '',
      args: [],
    );
  }

  /// `Привязать KeyWallet карту`
  String get addKeyWalletCard {
    return Intl.message(
      'Привязать KeyWallet карту',
      name: 'addKeyWalletCard',
      desc: '',
      args: [],
    );
  }

  /// `Отвязать KeyWallet карту`
  String get removeKeyWalletCard {
    return Intl.message(
      'Отвязать KeyWallet карту',
      name: 'removeKeyWalletCard',
      desc: '',
      args: [],
    );
  }

  /// `Информация о KeyWallet карте`
  String get keyWalletCardData {
    return Intl.message(
      'Информация о KeyWallet карте',
      name: 'keyWalletCardData',
      desc: '',
      args: [],
    );
  }

  /// `Идентификатор карты`
  String get cardIdLabel {
    return Intl.message(
      'Идентификатор карты',
      name: 'cardIdLabel',
      desc: '',
      args: [],
    );
  }

  /// `Публичный ключ карты`
  String get cardPublicKeyLabel {
    return Intl.message(
      'Публичный ключ карты',
      name: 'cardPublicKeyLabel',
      desc: '',
      args: [],
    );
  }

  /// `Состояние KeyWallet карты`
  String get cardStatusLabel {
    return Intl.message(
      'Состояние KeyWallet карты',
      name: 'cardStatusLabel',
      desc: '',
      args: [],
    );
  }

  /// `Публичный ключ кошелька`
  String get walletPublicKeyLabel {
    return Intl.message(
      'Публичный ключ кошелька',
      name: 'walletPublicKeyLabel',
      desc: '',
      args: [],
    );
  }

  /// `Pin-код KeyWallet карты успешно изменён`
  String get keyWalletPinChangedSuccessfullyChanged {
    return Intl.message(
      'Pin-код KeyWallet карты успешно изменён',
      name: 'keyWalletPinChangedSuccessfullyChanged',
      desc: '',
      args: [],
    );
  }

  /// `KeyWallet карта уже добавлена`
  String get keyWalletCardAlreadyAdded {
    return Intl.message(
      'KeyWallet карта уже добавлена',
      name: 'keyWalletCardAlreadyAdded',
      desc: '',
      args: [],
    );
  }

  /// `KeyWallet карта ещё не добавлена`
  String get keyWalletCardNotAddedYet {
    return Intl.message(
      'KeyWallet карта ещё не добавлена',
      name: 'keyWalletCardNotAddedYet',
      desc: '',
      args: [],
    );
  }

  /// `Расширенная конфигурация BTC`
  String get advancedBtc {
    return Intl.message(
      'Расширенная конфигурация BTC',
      name: 'advancedBtc',
      desc: '',
      args: [],
    );
  }

  /// `Конфигурации`
  String get advancedSettings {
    return Intl.message(
      'Конфигурации',
      name: 'advancedSettings',
      desc: '',
      args: [],
    );
  }

  /// `Макс. комиссия (сатоши/байт):`
  String get maxFeeSat {
    return Intl.message(
      'Макс. комиссия (сатоши/байт):',
      name: 'maxFeeSat',
      desc: '',
      args: [],
    );
  }

  /// `Мин. комиссия (сатоши/байт):`
  String get minFeeSat {
    return Intl.message(
      'Мин. комиссия (сатоши/байт):',
      name: 'minFeeSat',
      desc: '',
      args: [],
    );
  }

  /// `Размер комиссии (сатоши/байт)`
  String get sizeOfFeeSat {
    return Intl.message(
      'Размер комиссии (сатоши/байт)',
      name: 'sizeOfFeeSat',
      desc: '',
      args: [],
    );
  }

  /// `Снижение цены может привести к задержке или отмене транзакции`
  String get transactionHint {
    return Intl.message(
      'Снижение цены может привести к задержке или отмене транзакции',
      name: 'transactionHint',
      desc: '',
      args: [],
    );
  }

  /// `Цена Газа (Gwei)`
  String get gasPrice {
    return Intl.message(
      'Цена Газа (Gwei)',
      name: 'gasPrice',
      desc: '',
      args: [],
    );
  }

  /// `Лимит Газа`
  String get gasLimit {
    return Intl.message(
      'Лимит Газа',
      name: 'gasLimit',
      desc: '',
      args: [],
    );
  }

  /// `Nonce`
  String get nonce {
    return Intl.message(
      'Nonce',
      name: 'nonce',
      desc: '',
      args: [],
    );
  }

  /// `KeyWallet кошельки`
  String get keyWalletWallets {
    return Intl.message(
      'KeyWallet кошельки',
      name: 'keyWalletWallets',
      desc: '',
      args: [],
    );
  }

  /// `Настройки KeyWallet`
  String get keyWalletSettings {
    return Intl.message(
      'Настройки KeyWallet',
      name: 'keyWalletSettings',
      desc: '',
      args: [],
    );
  }

  /// `Действия с KeyWallet картой`
  String get keyWalletActions {
    return Intl.message(
      'Действия с KeyWallet картой',
      name: 'keyWalletActions',
      desc: '',
      args: [],
    );
  }

  /// `Кошельков нет`
  String get noWallets {
    return Intl.message(
      'Кошельков нет',
      name: 'noWallets',
      desc: '',
      args: [],
    );
  }

  /// `NFC выключен`
  String get nfcIsDisable {
    return Intl.message(
      'NFC выключен',
      name: 'nfcIsDisable',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно UTXO для текущей транзакции`
  String get notEnoughUtxo {
    return Intl.message(
      'Недостаточно UTXO для текущей транзакции',
      name: 'notEnoughUtxo',
      desc: '',
      args: [],
    );
  }

  /// `Общий баланс`
  String get totalBalance {
    return Intl.message(
      'Общий баланс',
      name: 'totalBalance',
      desc: '',
      args: [],
    );
  }

  /// `Кошелёк успешно удалён`
  String get walletDeleteSuccessfully {
    return Intl.message(
      'Кошелёк успешно удалён',
      name: 'walletDeleteSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Импортировать кошелёк`
  String get importWallet {
    return Intl.message(
      'Импортировать кошелёк',
      name: 'importWallet',
      desc: '',
      args: [],
    );
  }

  /// `Способы создания кошелька`
  String get createWalletWays {
    return Intl.message(
      'Способы создания кошелька',
      name: 'createWalletWays',
      desc: '',
      args: [],
    );
  }

  /// `Данное поле является обязательным`
  String get validationRequiredError {
    return Intl.message(
      'Данное поле является обязательным',
      name: 'validationRequiredError',
      desc: '',
      args: [],
    );
  }

  /// `Должен быть действительный номер`
  String get validationDecimalError {
    return Intl.message(
      'Должен быть действительный номер',
      name: 'validationDecimalError',
      desc: '',
      args: [],
    );
  }

  /// `Значение не может быть равным нулю`
  String get validationOnlyDigitsError {
    return Intl.message(
      'Значение не может быть равным нулю',
      name: 'validationOnlyDigitsError',
      desc: '',
      args: [],
    );
  }

  /// `Допускается использовать только положительные числа`
  String get validationNonNegativeNumberError {
    return Intl.message(
      'Допускается использовать только положительные числа',
      name: 'validationNonNegativeNumberError',
      desc: '',
      args: [],
    );
  }

  /// `Значение не может быть равным нулю`
  String get validationNonZeroNumberError {
    return Intl.message(
      'Значение не может быть равным нулю',
      name: 'validationNonZeroNumberError',
      desc: '',
      args: [],
    );
  }

  /// `В строке должно быть {length} символов`
  String validationMinLengthError(Object length) {
    return Intl.message(
      'В строке должно быть $length символов',
      name: 'validationMinLengthError',
      desc: '',
      args: [length],
    );
  }

  /// `В строке должно быть не менее {length} символов`
  String validationExactLengthError(Object length) {
    return Intl.message(
      'В строке должно быть не менее $length символов',
      name: 'validationExactLengthError',
      desc: '',
      args: [length],
    );
  }

  /// `В строке должно быть не менее {length} слов`
  String validationWordCountError(Object length) {
    return Intl.message(
      'В строке должно быть не менее $length слов',
      name: 'validationWordCountError',
      desc: '',
      args: [length],
    );
  }

  /// `Допускаются только латинские строчные буквы`
  String get validationLatinLowerCaseError {
    return Intl.message(
      'Допускаются только латинские строчные буквы',
      name: 'validationLatinLowerCaseError',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен содержать не менее 6 символов, в том числе: как минимум одну заглавную и строчную латинскую букву и цифру.`
  String get validationPasswordError {
    return Intl.message(
      'Пароль должен содержать не менее 6 символов, в том числе: как минимум одну заглавную и строчную латинскую букву и цифру.',
      name: 'validationPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `PERMISSION DENIED`
  String get permissionDenied {
    return Intl.message(
      'PERMISSION DENIED',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `BAD REQUEST`
  String get badRequest {
    return Intl.message(
      'BAD REQUEST',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `INTERNAL SERVER`
  String get internalServer {
    return Intl.message(
      'INTERNAL SERVER',
      name: 'internalServer',
      desc: '',
      args: [],
    );
  }

  /// `UNAUTHORIZED`
  String get unauthorized {
    return Intl.message(
      'UNAUTHORIZED',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Метод KeyWallet не найден`
  String get keyWalletMethodNotFoundError {
    return Intl.message(
      'Метод KeyWallet не найден',
      name: 'keyWalletMethodNotFoundError',
      desc: '',
      args: [],
    );
  }

  /// `закрыть`
  String get close {
    return Intl.message(
      'закрыть',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Этот кошелёк уже импортирован`
  String get thisWalletAlreadyExist {
    return Intl.message(
      'Этот кошелёк уже импортирован',
      name: 'thisWalletAlreadyExist',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно средств для комиссии`
  String get notEnoughResourcesForTransaction {
    return Intl.message(
      'Недостаточно средств для комиссии',
      name: 'notEnoughResourcesForTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Имя кошелька изменено`
  String get walletNameChanged {
    return Intl.message(
      'Имя кошелька изменено',
      name: 'walletNameChanged',
      desc: '',
      args: [],
    );
  }

  /// `Валюты ещё не добавлены`
  String get currenciesNotAddedYet {
    return Intl.message(
      'Валюты ещё не добавлены',
      name: 'currenciesNotAddedYet',
      desc: '',
      args: [],
    );
  }

  /// `Открыть настройки`
  String get openSetting {
    return Intl.message(
      'Открыть настройки',
      name: 'openSetting',
      desc: '',
      args: [],
    );
  }

  /// `Разрешение на камеру полностью отклонено. Нужно дать разрешение в настройках. Открыть настройки?`
  String get openSettingToEnableCamera {
    return Intl.message(
      'Разрешение на камеру полностью отклонено. Нужно дать разрешение в настройках. Открыть настройки?',
      name: 'openSettingToEnableCamera',
      desc: '',
      args: [],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Скорость транзакции`
  String get transactionSpeed {
    return Intl.message(
      'Скорость транзакции',
      name: 'transactionSpeed',
      desc: '',
      args: [],
    );
  }

  /// `мин.`
  String get minutesShort {
    return Intl.message(
      'мин.',
      name: 'minutesShort',
      desc: '',
      args: [],
    );
  }

  /// `ч.`
  String get hourShort {
    return Intl.message(
      'ч.',
      name: 'hourShort',
      desc: '',
      args: [],
    );
  }

  /// `сатоши/байт`
  String get satoshiPerByte {
    return Intl.message(
      'сатоши/байт',
      name: 'satoshiPerByte',
      desc: '',
      args: [],
    );
  }

  /// `Среднее время подтверждения`
  String get avgConfirmationTime {
    return Intl.message(
      'Среднее время подтверждения',
      name: 'avgConfirmationTime',
      desc: '',
      args: [],
    );
  }

  /// `Высокая`
  String get highForTransactionSpeed {
    return Intl.message(
      'Высокая',
      name: 'highForTransactionSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Средняя`
  String get middleForTransactionSpeed {
    return Intl.message(
      'Средняя',
      name: 'middleForTransactionSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Низкая`
  String get lowForTransactionSpeed {
    return Intl.message(
      'Низкая',
      name: 'lowForTransactionSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Индивидуальная`
  String get customForTransaction {
    return Intl.message(
      'Индивидуальная',
      name: 'customForTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Введите комиссию в сатоши/байт`
  String get enterFee {
    return Intl.message(
      'Введите комиссию в сатоши/байт',
      name: 'enterFee',
      desc: '',
      args: [],
    );
  }

  /// `от общей суммы`
  String get fromTotalAmount {
    return Intl.message(
      'от общей суммы',
      name: 'fromTotalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Ассет с символом {symbol} не нейден`
  String assetWithSymbolNotFound(Object symbol) {
    return Intl.message(
      'Ассет с символом $symbol не нейден',
      name: 'assetWithSymbolNotFound',
      desc: '',
      args: [symbol],
    );
  }

  /// `Скрыть`
  String get hide {
    return Intl.message(
      'Скрыть',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Context Not Found Exception`
  String get contextNotFoundException {
    return Intl.message(
      'Context Not Found Exception',
      name: 'contextNotFoundException',
      desc: '',
      args: [],
    );
  }

  /// `Сети`
  String get networks {
    return Intl.message(
      'Сети',
      name: 'networks',
      desc: '',
      args: [],
    );
  }

  /// `Другие сети`
  String get otherNetworks {
    return Intl.message(
      'Другие сети',
      name: 'otherNetworks',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите переключить сеть?`
  String get sureToChangeNetwork {
    return Intl.message(
      'Вы уверены, что хотите переключить сеть?',
      name: 'sureToChangeNetwork',
      desc: '',
      args: [],
    );
  }

  /// `переключить на`
  String get switchTo {
    return Intl.message(
      'переключить на',
      name: 'switchTo',
      desc: '',
      args: [],
    );
  }

  /// `Назад`
  String get back {
    return Intl.message(
      'Назад',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `WalletConnect`
  String get walletConnect {
    return Intl.message(
      'WalletConnect',
      name: 'walletConnect',
      desc: '',
      args: [],
    );
  }

  /// `Подключите свой кошелек к WalletConnect для совершения транзакций`
  String get walletConnectInfoText {
    return Intl.message(
      'Подключите свой кошелек к WalletConnect для совершения транзакций',
      name: 'walletConnectInfoText',
      desc: '',
      args: [],
    );
  }

  /// `Информация`
  String get information {
    return Intl.message(
      'Информация',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `WalletConnect — это протокол с открытым исходным кодом, который позволяет подключить мобильный кошелек к децентрализованным приложениям (dApps) с помощью QR-кода. Помните о необходимости отключаться по окончании работы с dApps из соображений безопасности.`
  String get walletConnectInfo {
    return Intl.message(
      'WalletConnect — это протокол с открытым исходным кодом, который позволяет подключить мобильный кошелек к децентрализованным приложениям (dApps) с помощью QR-кода. Помните о необходимости отключаться по окончании работы с dApps из соображений безопасности.',
      name: 'walletConnectInfo',
      desc: '',
      args: [],
    );
  }

  /// `Новое подключение`
  String get newConnection {
    return Intl.message(
      'Новое подключение',
      name: 'newConnection',
      desc: '',
      args: [],
    );
  }

  /// `Активные соединения появятся здесь`
  String get activeSessionWillBeHere {
    return Intl.message(
      'Активные соединения появятся здесь',
      name: 'activeSessionWillBeHere',
      desc: '',
      args: [],
    );
  }

  /// `хочет подключится к вашему кошельку`
  String get wantsToConnect {
    return Intl.message(
      'хочет подключится к вашему кошельку',
      name: 'wantsToConnect',
      desc: '',
      args: [],
    );
  }

  /// `Просмотр баланса и активности кошелька`
  String get walletConnectText1 {
    return Intl.message(
      'Просмотр баланса и активности кошелька',
      name: 'walletConnectText1',
      desc: '',
      args: [],
    );
  }

  /// `Запрос на одобрения транзакций`
  String get walletConnectText2 {
    return Intl.message(
      'Запрос на одобрения транзакций',
      name: 'walletConnectText2',
      desc: '',
      args: [],
    );
  }

  /// `Подключиться`
  String get connect {
    return Intl.message(
      'Подключиться',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Отклонить`
  String get reject {
    return Intl.message(
      'Отклонить',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Подключен`
  String get connected {
    return Intl.message(
      'Подключен',
      name: 'connected',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get address {
    return Intl.message(
      'Адрес',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Отключить`
  String get disconnect {
    return Intl.message(
      'Отключить',
      name: 'disconnect',
      desc: '',
      args: [],
    );
  }

  /// `Вызов Смарт Контракта`
  String get smartContractCall {
    return Intl.message(
      'Вызов Смарт Контракта',
      name: 'smartContractCall',
      desc: '',
      args: [],
    );
  }

  /// `Актив`
  String get active {
    return Intl.message(
      'Актив',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `От`
  String get from {
    return Intl.message(
      'От',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Сетевой сбор`
  String get networkFeeWc {
    return Intl.message(
      'Сетевой сбор',
      name: 'networkFeeWc',
      desc: '',
      args: [],
    );
  }

  /// `Макс Тотал`
  String get maxTotal {
    return Intl.message(
      'Макс Тотал',
      name: 'maxTotal',
      desc: '',
      args: [],
    );
  }

  /// `Убедитесь что вы доверяете этому сайту. Взаимодействуя с ним, вы разрешаете этому сайту получить доступ к вашим средствам`
  String get wcWarningText {
    return Intl.message(
      'Убедитесь что вы доверяете этому сайту. Взаимодействуя с ним, вы разрешаете этому сайту получить доступ к вашим средствам',
      name: 'wcWarningText',
      desc: '',
      args: [],
    );
  }

  /// `Адреса в активных сессиях по WalletConnect будут изменены в следующих DApp:`
  String get wcAddressChange {
    return Intl.message(
      'Адреса в активных сессиях по WalletConnect будут изменены в следующих DApp:',
      name: 'wcAddressChange',
      desc: '',
      args: [],
    );
  }

  /// `Данные транзакции`
  String get transactionData {
    return Intl.message(
      'Данные транзакции',
      name: 'transactionData',
      desc: '',
      args: [],
    );
  }

  /// `Данные для подписания`
  String get dataToSign {
    return Intl.message(
      'Данные для подписания',
      name: 'dataToSign',
      desc: '',
      args: [],
    );
  }

  /// `Сессия была разъединена`
  String get sessionWasDisconnected {
    return Intl.message(
      'Сессия была разъединена',
      name: 'sessionWasDisconnected',
      desc: '',
      args: [],
    );
  }

  /// `Подключен к {dAppUrl}`
  String connectedTo(Object dAppUrl) {
    return Intl.message(
      'Подключен к $dAppUrl',
      name: 'connectedTo',
      desc: '',
      args: [dAppUrl],
    );
  }

  /// `Адрес контракта TRC10 должен состоять из 7-значного цифрового значения`
  String get trc10TokenRequires7Digits {
    return Intl.message(
      'Адрес контракта TRC10 должен состоять из 7-значного цифрового значения',
      name: 'trc10TokenRequires7Digits',
      desc: '',
      args: [],
    );
  }

  /// `Адрес контракта TRC20 должен состоять из 34-значного значения`
  String get trc20TokenRequires34stringLength {
    return Intl.message(
      'Адрес контракта TRC20 должен состоять из 34-значного значения',
      name: 'trc20TokenRequires34stringLength',
      desc: '',
      args: [],
    );
  }

  /// `Токен уже добавлен`
  String get tokenAlreadyAdded {
    return Intl.message(
      'Токен уже добавлен',
      name: 'tokenAlreadyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Сеть Tron запрещает транзакции самому себе`
  String get tronNetworkProhibitsTransactionsToYourself {
    return Intl.message(
      'Сеть Tron запрещает транзакции самому себе',
      name: 'tronNetworkProhibitsTransactionsToYourself',
      desc: '',
      args: [],
    );
  }

  /// `Непредвиденная ошибка. Попробуйте провести транзакцию позже. \nСообщение с сервера: ${message}`
  String unknownTronNodeError(Object message) {
    return Intl.message(
      'Непредвиденная ошибка. Попробуйте провести транзакцию позже. \nСообщение с сервера: \$$message',
      name: 'unknownTronNodeError',
      desc: '',
      args: [message],
    );
  }

  /// `Время транзакции истекло. Попробуйте еще раз.`
  String get transactionTimeExpired {
    return Intl.message(
      'Время транзакции истекло. Попробуйте еще раз.',
      name: 'transactionTimeExpired',
      desc: '',
      args: [],
    );
  }

  /// `Контракт не найден`
  String get contractValidationFailed {
    return Intl.message(
      'Контракт не найден',
      name: 'contractValidationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Нативная монета`
  String get nativeCoin {
    return Intl.message(
      'Нативная монета',
      name: 'nativeCoin',
      desc: '',
      args: [],
    );
  }

  /// `Этот токен не может иметь больше, чем {decimal} десятичных знаков.`
  String decimalValidatorError(Object decimal) {
    return Intl.message(
      'Этот токен не может иметь больше, чем $decimal десятичных знаков.',
      name: 'decimalValidatorError',
      desc: '',
      args: [decimal],
    );
  }

  /// `Вы скопировали адрес смарт-контракта. Любой токен, отправленный на этот адрес, будет потерян.`
  String get contractAddressCopiedWarning {
    return Intl.message(
      'Вы скопировали адрес смарт-контракта. Любой токен, отправленный на этот адрес, будет потерян.',
      name: 'contractAddressCopiedWarning',
      desc: '',
      args: [],
    );
  }

  /// `Недостаточно TRX для проведения транзакции`
  String get notEnoughTrxToCompleteTransaction {
    return Intl.message(
      'Недостаточно TRX для проведения транзакции',
      name: 'notEnoughTrxToCompleteTransaction',
      desc: '',
      args: [],
    );
  }

  /// `CryptoCardWallet кошельки`
  String get cryptoCardWallets {
    return Intl.message(
      'CryptoCardWallet кошельки',
      name: 'cryptoCardWallets',
      desc: '',
      args: [],
    );
  }

  /// `Закажите или подключите свой CryptoCardWallet`
  String get orderEnterCryptoCardWallet {
    return Intl.message(
      'Закажите или подключите свой CryptoCardWallet',
      name: 'orderEnterCryptoCardWallet',
      desc: '',
      args: [],
    );
  }

  /// `Первая генерация адреса для этого токена. Нам нужно отсканировать карту CrytoCardWallet этого кошелька!`
  String get firstTimeGeneratingAddressForCryptoCardWalletForThisAddress {
    return Intl.message(
      'Первая генерация адреса для этого токена. Нам нужно отсканировать карту CrytoCardWallet этого кошелька!',
      name: 'firstTimeGeneratingAddressForCryptoCardWalletForThisAddress',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get cancel {
    return Intl.message(
      'Отменить',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Имя кошелька не может быть пробелом`
  String get walletNameCannotBeSpace {
    return Intl.message(
      'Имя кошелька не может быть пробелом',
      name: 'walletNameCannotBeSpace',
      desc: '',
      args: [],
    );
  }

  /// `У вас нет токенов для свопа`
  String get noTokenForSwapException {
    return Intl.message(
      'У вас нет токенов для свопа',
      name: 'noTokenForSwapException',
      desc: '',
      args: [],
    );
  }

  /// `Версия:`
  String get version {
    return Intl.message(
      'Версия:',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Купить`
  String get buy {
    return Intl.message(
      'Купить',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Сумма без учета комиссии. Конечная сумма на странице верификации`
  String get amountRecalculated {
    return Intl.message(
      'Сумма без учета комиссии. Конечная сумма на странице верификации',
      name: 'amountRecalculated',
      desc: '',
      args: [],
    );
  }

  /// `Отправить макс.`
  String get sendMax {
    return Intl.message(
      'Отправить макс.',
      name: 'sendMax',
      desc: '',
      args: [],
    );
  }

  /// `не поддерживает автоматичекский выбор сети, пожалуйста выберите сеть`
  String get dAppNotSupportAutoSelectNetwork {
    return Intl.message(
      'не поддерживает автоматичекский выбор сети, пожалуйста выберите сеть',
      name: 'dAppNotSupportAutoSelectNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Replacement transaction underpriced error`
  String get replacementTransactionUnderpricedException {
    return Intl.message(
      'Replacement transaction underpriced error',
      name: 'replacementTransactionUnderpricedException',
      desc: '',
      args: [],
    );
  }

  /// `Валюты`
  String get currencies {
    return Intl.message(
      'Валюты',
      name: 'currencies',
      desc: '',
      args: [],
    );
  }

  /// `Слишком маленькое значение "dust" для проведения транзакции. Попробуйте увеличить значение`
  String get tooSmallDustValueForTransactionException {
    return Intl.message(
      'Слишком маленькое значение "dust" для проведения транзакции. Попробуйте увеличить значение',
      name: 'tooSmallDustValueForTransactionException',
      desc: '',
      args: [],
    );
  }

  /// `Комиссия не может превышать максимального значения 1. Попробуйте изменить цену на газ`
  String get feeCanNotExceed1EthValueForTransactionException {
    return Intl.message(
      'Комиссия не может превышать максимального значения 1. Попробуйте изменить цену на газ',
      name: 'feeCanNotExceed1EthValueForTransactionException',
      desc: '',
      args: [],
    );
  }

  /// `Комиссия выше общей доступной суммы {amountMax}`
  String feeHigherThanAmount(Object amountMax) {
    return Intl.message(
      'Комиссия выше общей доступной суммы $amountMax',
      name: 'feeHigherThanAmount',
      desc: '',
      args: [amountMax],
    );
  }

  /// `Значение nonce слишком низкое`
  String get nonceTooLowTransactionException {
    return Intl.message(
      'Значение nonce слишком низкое',
      name: 'nonceTooLowTransactionException',
      desc: '',
      args: [],
    );
  }

  /// `Расширенная информация`
  String get advancedInfo {
    return Intl.message(
      'Расширенная информация',
      name: 'advancedInfo',
      desc: '',
      args: [],
    );
  }

  /// `Nonce скопирован`
  String get nonceCopied {
    return Intl.message(
      'Nonce скопирован',
      name: 'nonceCopied',
      desc: '',
      args: [],
    );
  }

  /// `Raw transaction hex`
  String get rawTransactionHex {
    return Intl.message(
      'Raw transaction hex',
      name: 'rawTransactionHex',
      desc: '',
      args: [],
    );
  }

  /// `Raw transaction hex скопирован`
  String get rawTransactionHexCopied {
    return Intl.message(
      'Raw transaction hex скопирован',
      name: 'rawTransactionHexCopied',
      desc: '',
      args: [],
    );
  }

  /// `Нет  доступных кошельков`
  String get noAvailableWallets {
    return Intl.message(
      'Нет  доступных кошельков',
      name: 'noAvailableWallets',
      desc: '',
      args: [],
    );
  }

  /// `Выберите тип кошелька`
  String get selectWalletType {
    return Intl.message(
      'Выберите тип кошелька',
      name: 'selectWalletType',
      desc: '',
      args: [],
    );
  }

  /// `Доступные кошельки`
  String get otherWalletTypes {
    return Intl.message(
      'Доступные кошельки',
      name: 'otherWalletTypes',
      desc: '',
      args: [],
    );
  }

  /// `Войти по PIN`
  String get pinCodeEnter {
    return Intl.message(
      'Войти по PIN',
      name: 'pinCodeEnter',
      desc: '',
      args: [],
    );
  }

  /// `Авторизация`
  String get authorization {
    return Intl.message(
      'Авторизация',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Перед подключением убедитесь, что тип кошелька выбран верно`
  String get checkWalletType {
    return Intl.message(
      'Перед подключением убедитесь, что тип кошелька выбран верно',
      name: 'checkWalletType',
      desc: '',
      args: [],
    );
  }

  /// `Выключить`
  String get turnOff {
    return Intl.message(
      'Выключить',
      name: 'turnOff',
      desc: '',
      args: [],
    );
  }

  /// `Включить`
  String get turnOn {
    return Intl.message(
      'Включить',
      name: 'turnOn',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppString> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppString> load(Locale locale) => AppString.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
