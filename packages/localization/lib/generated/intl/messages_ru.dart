// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(symbol) => "Ассет с символом ${symbol} не нейден";

  static String m1(dAppUrl) => "Подключен к ${dAppUrl}";

  static String m2(decimal) =>
      "Этот токен не может иметь больше, чем ${decimal} десятичных знаков.";

  static String m3(amountMax) =>
      "Комиссия выше общей доступной суммы ${amountMax}";

  static String m4(min, max) => "Необходимо ввести сумму от ${min} до ${max}";

  static String m5(currency) => "Запросить ${currency}";

  static String m6(total) => "Отправить ${total}";

  static String m7(message) =>
      "Непредвиденная ошибка. Попробуйте провести транзакцию позже. \nСообщение с сервера: \$${message}";

  static String m8(length) =>
      "В строке должно быть не менее ${length} символов";

  static String m9(length) => "В строке должно быть ${length} символов";

  static String m10(length) => "В строке должно быть не менее ${length} слов";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutSecretPhrase": MessageLookupByLibrary.simpleMessage(
            "Обычно 12 (иногда 24) слов, разделенных пробелом"),
        "actionCanceled":
            MessageLookupByLibrary.simpleMessage("Действие отменено"),
        "activateKeyWallet":
            MessageLookupByLibrary.simpleMessage("Активировать KeyWallet"),
        "active": MessageLookupByLibrary.simpleMessage("Актив"),
        "activeSessionWillBeHere": MessageLookupByLibrary.simpleMessage(
            "Активные соединения появятся здесь"),
        "addKeyWalletCard":
            MessageLookupByLibrary.simpleMessage("Привязать KeyWallet карту"),
        "addNewToken":
            MessageLookupByLibrary.simpleMessage("Добавить новый токен"),
        "addToken": MessageLookupByLibrary.simpleMessage("Добавить токен"),
        "address": MessageLookupByLibrary.simpleMessage("Адрес"),
        "addressCopied":
            MessageLookupByLibrary.simpleMessage("Адрес успешно скопирован"),
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR ADDRESS NOT FOUND"),
        "addressNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR ADDRESS NOT SET"),
        "advancedBtc": MessageLookupByLibrary.simpleMessage(
            "Расширенная конфигурация BTC"),
        "advancedInfo":
            MessageLookupByLibrary.simpleMessage("Расширенная информация"),
        "advancedSettings":
            MessageLookupByLibrary.simpleMessage("Конфигурации"),
        "alreadyHaveWallet":
            MessageLookupByLibrary.simpleMessage("У меня уже есть кошелёк"),
        "amountRecalculated": MessageLookupByLibrary.simpleMessage(
            "Сумма без учета комиссии. Конечная сумма на странице верификации"),
        "apiCurrencyNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR CURRENCY NOT FOUND"),
        "assetAdded":
            MessageLookupByLibrary.simpleMessage("Валюта успешно добавлена"),
        "assetIdIsNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR ASSET NOT SET"),
        "assetInvalid":
            MessageLookupByLibrary.simpleMessage("ERROR ASSET INVALID"),
        "assetNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR ASSET NOT FOUND"),
        "assetStateInvalid":
            MessageLookupByLibrary.simpleMessage("ERROR ASSET STATE INVALID"),
        "assetStateNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR ASSET STATE NOT FOUND"),
        "assetWithSymbolNotFound": m0,
        "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
        "authorizationForbidden":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH FORBIDDEN"),
        "authorizationMissing":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH MISSING"),
        "autoBlocking":
            MessageLookupByLibrary.simpleMessage("Автоматическая блокировка"),
        "autoBlockingIn1Hour":
            MessageLookupByLibrary.simpleMessage("Через 1 час"),
        "autoBlockingIn1Minute":
            MessageLookupByLibrary.simpleMessage("Через 1 минуту"),
        "autoBlockingIn5Hour":
            MessageLookupByLibrary.simpleMessage("Через 5 часов"),
        "autoBlockingIn5Minutes":
            MessageLookupByLibrary.simpleMessage("Через 5 минут"),
        "autoBlockingInstant":
            MessageLookupByLibrary.simpleMessage("Немедленно"),
        "availableBalance":
            MessageLookupByLibrary.simpleMessage("Сейчас на балансе"),
        "avgConfirmationTime":
            MessageLookupByLibrary.simpleMessage("Среднее время подтверждения"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "backupCopy": MessageLookupByLibrary.simpleMessage(
            "Резервная копия вашего кошелька"),
        "backupCopyAgree": MessageLookupByLibrary.simpleMessage(
            "Я понимаю, что если потеряю секретную фразу, то не смогу восстановить доступ к своему кошельку"),
        "backupCopyHint": MessageLookupByLibrary.simpleMessage(
            "Сейчас вы увидите 12 слов, которые позволят вам восстановить доступ к кошельку. Будьте готовы сохранить секретную фразу в безопасном месте."),
        "badPassword":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH BAD PASSWORD"),
        "badRequest": MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "bankCard": MessageLookupByLibrary.simpleMessage("Bank card"),
        "biometric": MessageLookupByLibrary.simpleMessage("Биометрия"),
        "bringKeyWallet": MessageLookupByLibrary.simpleMessage(
            "Поднесите KeyWallet к телефону"),
        "bringKeyWalletLong": MessageLookupByLibrary.simpleMessage(
            "Поднесите KeyWallet к верхней части вашего телефона. Не убирайте карту до завершения верификации."),
        "buy": MessageLookupByLibrary.simpleMessage("Купить"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отменить"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Действие отменено"),
        "cannotParseJWTToken": MessageLookupByLibrary.simpleMessage(
            "ERROR AUTH CANNOT PARSE TOKEN"),
        "cardIdLabel":
            MessageLookupByLibrary.simpleMessage("Идентификатор карты"),
        "cardPublicKeyLabel":
            MessageLookupByLibrary.simpleMessage("Публичный ключ карты"),
        "cardStatusLabel":
            MessageLookupByLibrary.simpleMessage("Состояние KeyWallet карты"),
        "changePin": MessageLookupByLibrary.simpleMessage("Сменить PIN-код"),
        "checkWalletType": MessageLookupByLibrary.simpleMessage(
            "Перед подключением убедитесь, что тип кошелька выбран верно"),
        "cities": MessageLookupByLibrary.simpleMessage("Города"),
        "close": MessageLookupByLibrary.simpleMessage("закрыть"),
        "confirmation": MessageLookupByLibrary.simpleMessage("Подтверждения"),
        "connect": MessageLookupByLibrary.simpleMessage("Подключиться"),
        "connected": MessageLookupByLibrary.simpleMessage("Подключен"),
        "connectedTo": m1,
        "connectionError":
            MessageLookupByLibrary.simpleMessage("Ошибка соединения"),
        "contextNotFoundException":
            MessageLookupByLibrary.simpleMessage("Context Not Found Exception"),
        "continueText": MessageLookupByLibrary.simpleMessage("Продолжить"),
        "continueWithOutPinCode":
            MessageLookupByLibrary.simpleMessage("Продолжить без PIN-кода"),
        "contractAddress":
            MessageLookupByLibrary.simpleMessage("Адрес контракта"),
        "contractAddressCopiedWarning": MessageLookupByLibrary.simpleMessage(
            "Вы скопировали адрес смарт-контракта. Любой токен, отправленный на этот адрес, будет потерян."),
        "contractValidationFailed":
            MessageLookupByLibrary.simpleMessage("Контракт не найден"),
        "copy": MessageLookupByLibrary.simpleMessage("Скопировать"),
        "copyPhrase": MessageLookupByLibrary.simpleMessage("Скопировать фразу"),
        "createOrOrderBankCard": MessageLookupByLibrary.simpleMessage(
            "Закажите или подключите банковскую карту"),
        "createPassword":
            MessageLookupByLibrary.simpleMessage("Придумайте пароль"),
        "createPinCode": MessageLookupByLibrary.simpleMessage("Придумайте код"),
        "createWallet": MessageLookupByLibrary.simpleMessage("Создать кошелёк"),
        "createWalletWays":
            MessageLookupByLibrary.simpleMessage("Способы создания кошелька"),
        "cryptoCardWallet":
            MessageLookupByLibrary.simpleMessage("CryptoCardWallet кошелёк"),
        "cryptoCardWallets":
            MessageLookupByLibrary.simpleMessage("CryptoCardWallet кошельки"),
        "currencies": MessageLookupByLibrary.simpleMessage("Валюты"),
        "currenciesNotAddedYet":
            MessageLookupByLibrary.simpleMessage("Валюты ещё не добавлены"),
        "currencyNotFound":
            MessageLookupByLibrary.simpleMessage("Валюта не найдена"),
        "currencyNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR CURRENCY NOT SET"),
        "currencyNotSupported": MessageLookupByLibrary.simpleMessage(
            "ERROR CURRENCY NOT SUPPORTED"),
        "currentBalance":
            MessageLookupByLibrary.simpleMessage("Текущий баланс"),
        "customForTransaction":
            MessageLookupByLibrary.simpleMessage("Индивидуальная"),
        "dAppNotSupportAutoSelectNetwork": MessageLookupByLibrary.simpleMessage(
            "не поддерживает автоматичекский выбор сети, пожалуйста выберите сеть"),
        "dataToSign":
            MessageLookupByLibrary.simpleMessage("Данные для подписания"),
        "decimalValidatorError": m2,
        "decimals": MessageLookupByLibrary.simpleMessage("Decimals"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "demo": MessageLookupByLibrary.simpleMessage("ДЕМО"),
        "disconnect": MessageLookupByLibrary.simpleMessage("Отключить"),
        "enableCameraPermission": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, включите разрешение на доступ к камере"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Введите сумму"),
        "enterFee": MessageLookupByLibrary.simpleMessage(
            "Введите комиссию в сатоши/байт"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("введите пароль еще раз"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("Введите код"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "errorAddingNewToken":
            MessageLookupByLibrary.simpleMessage("Ошибка добавления токена"),
        "errorDetails":
            MessageLookupByLibrary.simpleMessage("Подробнее об ошибке"),
        "excellent": MessageLookupByLibrary.simpleMessage("Отлично!"),
        "faceID": MessageLookupByLibrary.simpleMessage("Face ID"),
        "failedGenerateWallet":
            MessageLookupByLibrary.simpleMessage("Не удалось создать кошелёк"),
        "failedLoadingWalletState":
            MessageLookupByLibrary.simpleMessage("Не удалось создать кошелёк"),
        "failedToLoadSession":
            MessageLookupByLibrary.simpleMessage("Не удалось загрузить сессию"),
        "failedTransaction":
            MessageLookupByLibrary.simpleMessage("Неудачная транзакция"),
        "feeCanNotExceed1EthValueForTransactionException":
            MessageLookupByLibrary.simpleMessage(
                "Комиссия не может превышать максимального значения 1. Попробуйте изменить цену на газ"),
        "feeHigherThanAmount": m3,
        "feeOutOfRange": m4,
        "fingerprint": MessageLookupByLibrary.simpleMessage("Отпечаток пальца"),
        "firstTimeGeneratingAddressForCryptoCardWalletForThisAddress":
            MessageLookupByLibrary.simpleMessage(
                "Первая генерация адреса для этого токена. Нам нужно отсканировать карту CrytoCardWallet этого кошелька!"),
        "from": MessageLookupByLibrary.simpleMessage("От"),
        "fromTotalAmount":
            MessageLookupByLibrary.simpleMessage("от общей суммы"),
        "gasLimit": MessageLookupByLibrary.simpleMessage("Лимит Газа"),
        "gasPrice": MessageLookupByLibrary.simpleMessage("Цена Газа (Gwei)"),
        "generateMnemonic":
            MessageLookupByLibrary.simpleMessage("Сгенерировать слова"),
        "generateQrCode":
            MessageLookupByLibrary.simpleMessage("Сгенерировать QR-code"),
        "getReadyKeyWallet": MessageLookupByLibrary.simpleMessage(
            "Приготовьте карту KeyWallet для её активации и создания кошелька. Если у вас нет карты - закажите её на сайте."),
        "goBack": MessageLookupByLibrary.simpleMessage("Вернуться"),
        "hashCopied":
            MessageLookupByLibrary.simpleMessage("Хэш успешно скопирован"),
        "haveReadLegal": MessageLookupByLibrary.simpleMessage(
            "Я прочитал и принимаю Условия обслуживания и Политику конфиденциальности"),
        "haveSecurelySavedPhrase":
            MessageLookupByLibrary.simpleMessage("Я надежно сохранил фразу"),
        "hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
        "hideStackTrace":
            MessageLookupByLibrary.simpleMessage("Hide stack trace"),
        "highForTransactionSpeed":
            MessageLookupByLibrary.simpleMessage("Высокая"),
        "hourShort": MessageLookupByLibrary.simpleMessage("ч."),
        "import": MessageLookupByLibrary.simpleMessage("Импортировать"),
        "importWallet":
            MessageLookupByLibrary.simpleMessage("Импортировать кошелёк"),
        "importWalletStandardName":
            MessageLookupByLibrary.simpleMessage("Мультимонетный кошелёк"),
        "inProgressTransaction":
            MessageLookupByLibrary.simpleMessage("Выполняется"),
        "incomingTransaction":
            MessageLookupByLibrary.simpleMessage("Входящая транзакция"),
        "information": MessageLookupByLibrary.simpleMessage("Информация"),
        "insufficientBalance": MessageLookupByLibrary.simpleMessage(
            "Недостаточно средств на балансе"),
        "insufficientBalanceButtonTitle":
            MessageLookupByLibrary.simpleMessage("Недостаточно средств"),
        "internalServer":
            MessageLookupByLibrary.simpleMessage("INTERNAL SERVER"),
        "invalidAddress": MessageLookupByLibrary.simpleMessage(
            "Невалидный адрес для этой сети"),
        "invalidAssetState":
            MessageLookupByLibrary.simpleMessage("Невалидное состояние ассета"),
        "invalidAuthorization":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH INVALID"),
        "invalidAuthorizationToken":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH TOKEN INVALID"),
        "invalidBiometric":
            MessageLookupByLibrary.simpleMessage("Неверная биометрия"),
        "invalidMnemonic": MessageLookupByLibrary.simpleMessage(
            "Вы неверно ввели фразу. Попробуйте снова."),
        "invalidPassword":
            MessageLookupByLibrary.simpleMessage("Неверный пароль"),
        "invalidPinCode":
            MessageLookupByLibrary.simpleMessage("Неверный PIN-код"),
        "invalidValue":
            MessageLookupByLibrary.simpleMessage("Неверное значение"),
        "keyWallet": MessageLookupByLibrary.simpleMessage("KeyWallet"),
        "keyWalletActions":
            MessageLookupByLibrary.simpleMessage("Действия с KeyWallet картой"),
        "keyWalletCardAlreadyAdded": MessageLookupByLibrary.simpleMessage(
            "KeyWallet карта уже добавлена"),
        "keyWalletCardData": MessageLookupByLibrary.simpleMessage(
            "Информация о KeyWallet карте"),
        "keyWalletCardNotAddedYet": MessageLookupByLibrary.simpleMessage(
            "KeyWallet карта ещё не добавлена"),
        "keyWalletMethodNotFoundError":
            MessageLookupByLibrary.simpleMessage("Метод KeyWallet не найден"),
        "keyWalletPinChangedSuccessfullyChanged":
            MessageLookupByLibrary.simpleMessage(
                "Pin-код KeyWallet карты успешно изменён"),
        "keyWalletSdkError":
            MessageLookupByLibrary.simpleMessage("Ошибка сервиса KeyWallet"),
        "keyWalletSettings":
            MessageLookupByLibrary.simpleMessage("Настройки KeyWallet"),
        "keyWalletWallet":
            MessageLookupByLibrary.simpleMessage("KeyWallet кошелёк"),
        "keyWalletWallets":
            MessageLookupByLibrary.simpleMessage("KeyWallet кошельки"),
        "legal": MessageLookupByLibrary.simpleMessage("Правовая информация"),
        "legalHint": MessageLookupByLibrary.simpleMessage(
            "Для создания кошелька необходимо ознакомиться с Условиями обслуживания и Политикой конфиденциальности "),
        "letIsStart": MessageLookupByLibrary.simpleMessage("Let’s start"),
        "lowForTransactionSpeed":
            MessageLookupByLibrary.simpleMessage("Низкая"),
        "maxFeeSat": MessageLookupByLibrary.simpleMessage(
            "Макс. комиссия (сатоши/байт):"),
        "maxTotal": MessageLookupByLibrary.simpleMessage("Макс Тотал"),
        "middleForTransactionSpeed":
            MessageLookupByLibrary.simpleMessage("Средняя"),
        "min6Characters": MessageLookupByLibrary.simpleMessage("мин. 6 знаков"),
        "minFeeSat": MessageLookupByLibrary.simpleMessage(
            "Мин. комиссия (сатоши/байт):"),
        "minOneDigit": MessageLookupByLibrary.simpleMessage("мин. 1 цифра"),
        "minOneLowercaseLetter":
            MessageLookupByLibrary.simpleMessage("мин. 1 прописная буква"),
        "minOneUppercaseLetter":
            MessageLookupByLibrary.simpleMessage("мин. 1 заглавная буква"),
        "minutesShort": MessageLookupByLibrary.simpleMessage("мин."),
        "mnemonicHasCopied": MessageLookupByLibrary.simpleMessage(
            "Фраза скопирована в буфер обмена"),
        "mnemonicQrCodeHint": MessageLookupByLibrary.simpleMessage(
            "В этом QR-коде содержится ваша секретная фраза. Сохраните код в надежном месте и никому его не передавайте."),
        "multiCoinWallet":
            MessageLookupByLibrary.simpleMessage("Мультимонетный кошелёк"),
        "name": MessageLookupByLibrary.simpleMessage("Имя"),
        "nativeCoin": MessageLookupByLibrary.simpleMessage("Нативная монета"),
        "networkFee": MessageLookupByLibrary.simpleMessage(
            "Комиссия за транзакцию в сети"),
        "networkFeeWc": MessageLookupByLibrary.simpleMessage("Сетевой сбор"),
        "networkTokenType": MessageLookupByLibrary.simpleMessage("Тип сети"),
        "networks": MessageLookupByLibrary.simpleMessage("Сети"),
        "newConnection":
            MessageLookupByLibrary.simpleMessage("Новое подключение"),
        "next": MessageLookupByLibrary.simpleMessage("Далее"),
        "nfcIsDisable": MessageLookupByLibrary.simpleMessage("NFC выключен"),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "noAvailableWallets":
            MessageLookupByLibrary.simpleMessage("Нет  доступных кошельков"),
        "noConnectionToOurServers": MessageLookupByLibrary.simpleMessage(
            "Нет подключения к нашим серверам"),
        "noContractInGivenToken": MessageLookupByLibrary.simpleMessage(
            "В данном токене отсуствует контракт"),
        "noInternetError": MessageLookupByLibrary.simpleMessage(
            "Отсутствует подключение к сети Интернет"),
        "noPermission":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH NO PERMISSION"),
        "noSelectedCitiesYet": MessageLookupByLibrary.simpleMessage(
            "Пока нет выбранных городов. \nВыберите из страницы поиска"),
        "noTokenForSwapException":
            MessageLookupByLibrary.simpleMessage("У вас нет токенов для свопа"),
        "noTransactions": MessageLookupByLibrary.simpleMessage(
            "Здесь будут отображаться ваши будущие транзакции"),
        "noWallets": MessageLookupByLibrary.simpleMessage("Кошельков нет"),
        "nonce": MessageLookupByLibrary.simpleMessage("Nonce"),
        "nonceCopied": MessageLookupByLibrary.simpleMessage("Nonce скопирован"),
        "nonceTooLowTransactionException": MessageLookupByLibrary.simpleMessage(
            "Значение nonce слишком низкое"),
        "none": MessageLookupByLibrary.simpleMessage("Отсутствует"),
        "notAuthError":
            MessageLookupByLibrary.simpleMessage("Пользователь не авторизован"),
        "notEnoughResourcesForTransaction":
            MessageLookupByLibrary.simpleMessage(
                "Недостаточно средств для комиссии"),
        "notEnoughTrxToCompleteTransaction":
            MessageLookupByLibrary.simpleMessage(
                "Недостаточно TRX для проведения транзакции"),
        "notEnoughUtxo": MessageLookupByLibrary.simpleMessage(
            "Недостаточно UTXO для текущей транзакции"),
        "notFound": MessageLookupByLibrary.simpleMessage("Ничего не найдено"),
        "ohno": MessageLookupByLibrary.simpleMessage("Что-то пошло не так :("),
        "ok": MessageLookupByLibrary.simpleMessage("ОК"),
        "onboarding1": MessageLookupByLibrary.simpleMessage(
            ", которые никогда не покинут ваше устройство"),
        "onboarding1Underline":
            MessageLookupByLibrary.simpleMessage("Приватные ключи"),
        "onboarding2": MessageLookupByLibrary.simpleMessage(
            " всей криптовалюты в одном месте"),
        "onboarding2Underline":
            MessageLookupByLibrary.simpleMessage("Безопасное хранение"),
        "onboarding3": MessageLookupByLibrary.simpleMessage(" криптовалюты"),
        "onboarding3Underline":
            MessageLookupByLibrary.simpleMessage("Быстрый и анонимный обмен"),
        "onboarding4": MessageLookupByLibrary.simpleMessage(
            " с доступом к децентрализованным приложениям"),
        "onboarding4Underline": MessageLookupByLibrary.simpleMessage(
            "Зарабатывайте, тратьте и торгуйте"),
        "onlyLatinLetter":
            MessageLookupByLibrary.simpleMessage("только латинские буквы"),
        "openSetting":
            MessageLookupByLibrary.simpleMessage("Открыть настройки"),
        "openSettingToEnableCamera": MessageLookupByLibrary.simpleMessage(
            "Разрешение на камеру полностью отклонено. Нужно дать разрешение в настройках. Открыть настройки?"),
        "openWallet": MessageLookupByLibrary.simpleMessage(
            "Откройте криптовалютный кошелёк"),
        "orderEnterCryptoCardWallet": MessageLookupByLibrary.simpleMessage(
            "Закажите или подключите свой CryptoCardWallet"),
        "orderEnterKeyWallet": MessageLookupByLibrary.simpleMessage(
            "Закажите или подключите свой KeyWallet"),
        "orderKeyWallet":
            MessageLookupByLibrary.simpleMessage("Заказать KeyWallet"),
        "otherNetworks": MessageLookupByLibrary.simpleMessage("Другие сети"),
        "otherWalletTypes":
            MessageLookupByLibrary.simpleMessage("Доступные кошельки"),
        "outgoingTransaction":
            MessageLookupByLibrary.simpleMessage("Исходящая транзакция"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "passwordNotMatch":
            MessageLookupByLibrary.simpleMessage("Пароли не совпадают"),
        "passwordValidityToRules":
            MessageLookupByLibrary.simpleMessage("Пароль должен содержать:"),
        "paste": MessageLookupByLibrary.simpleMessage("Вставить"),
        "pendingTransaction":
            MessageLookupByLibrary.simpleMessage("Ожидающая транзакция"),
        "permissionDenied":
            MessageLookupByLibrary.simpleMessage("PERMISSION DENIED"),
        "pinCode": MessageLookupByLibrary.simpleMessage("PIN-код"),
        "pinCodeEnter": MessageLookupByLibrary.simpleMessage("Войти по PIN"),
        "pinNotMatch":
            MessageLookupByLibrary.simpleMessage("PIN-код не совпадает"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Политика конфиденциальности"),
        "qrCode": MessageLookupByLibrary.simpleMessage("QR-код"),
        "rawTransactionHex":
            MessageLookupByLibrary.simpleMessage("Raw transaction hex"),
        "rawTransactionHexCopied": MessageLookupByLibrary.simpleMessage(
            "Raw transaction hex скопирован"),
        "receive": MessageLookupByLibrary.simpleMessage("Получить"),
        "recipientAddress":
            MessageLookupByLibrary.simpleMessage("Адрес получателя"),
        "reject": MessageLookupByLibrary.simpleMessage("Отклонить"),
        "removeKeyWalletCard":
            MessageLookupByLibrary.simpleMessage("Отвязать KeyWallet карту"),
        "repeatPassword":
            MessageLookupByLibrary.simpleMessage("Повторите пароль"),
        "repeatPinCode":
            MessageLookupByLibrary.simpleMessage("Повторите PIN-код"),
        "replacementTransactionUnderpricedException":
            MessageLookupByLibrary.simpleMessage(
                "Replacement transaction underpriced error"),
        "requestCurrency":
            MessageLookupByLibrary.simpleMessage("Запросить валюту"),
        "requestMoneyType": m5,
        "satoshiPerByte": MessageLookupByLibrary.simpleMessage("сатоши/байт"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "searchCities": MessageLookupByLibrary.simpleMessage("Поиск городов"),
        "searchInputTitle": MessageLookupByLibrary.simpleMessage("Поиск..."),
        "secretPhrase": MessageLookupByLibrary.simpleMessage("Секретная фраза"),
        "secretPhraseHint": MessageLookupByLibrary.simpleMessage(
            "Запишите и сохраните эти слова в правильном порядке. Храните фразу в надежном месте и никому ее не передавайте."),
        "security": MessageLookupByLibrary.simpleMessage("Безопасность"),
        "seedIsNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH SEED NOT SET"),
        "seedNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH SEED NOT FOUND"),
        "selectNetwork": MessageLookupByLibrary.simpleMessage("Выберите сеть"),
        "selectWallet": MessageLookupByLibrary.simpleMessage("Выбрать кошелёк"),
        "selectWalletError":
            MessageLookupByLibrary.simpleMessage("Не удалось выбрать кошелек"),
        "selectWalletSuccess":
            MessageLookupByLibrary.simpleMessage("Кошелёк успешно выбран"),
        "selectWalletType":
            MessageLookupByLibrary.simpleMessage("Выберите тип кошелька"),
        "sendMax": MessageLookupByLibrary.simpleMessage("Отправить макс."),
        "sendMoney": m6,
        "senderAddress":
            MessageLookupByLibrary.simpleMessage("Адрес отправителя"),
        "serverRequestError":
            MessageLookupByLibrary.simpleMessage("Ошибка запроса сервера"),
        "sessionWasDisconnected":
            MessageLookupByLibrary.simpleMessage("Сессия была разъединена"),
        "setAmount": MessageLookupByLibrary.simpleMessage("Укажите сумму"),
        "setPassword": MessageLookupByLibrary.simpleMessage("Задайте пароль"),
        "setPinCode":
            MessageLookupByLibrary.simpleMessage("Установка PIN-кода"),
        "setPinCodeRecommendation": MessageLookupByLibrary.simpleMessage(
            "Для вашей безопасности мы рекомендуем установить PIN-код на KeyWallet. Если вы потеряете доступ к Key Wallet мы запросим этот код."),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "share": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "shareTransaction":
            MessageLookupByLibrary.simpleMessage("Поделиться транзакцией"),
        "showQrCode": MessageLookupByLibrary.simpleMessage("Показать QR-код"),
        "showSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Показать секретную фразу"),
        "showStackTrace":
            MessageLookupByLibrary.simpleMessage("Show stack trace"),
        "sizeOfFeeSat": MessageLookupByLibrary.simpleMessage(
            "Размер комиссии (сатоши/байт)"),
        "smartContractCall":
            MessageLookupByLibrary.simpleMessage("Вызов Смарт Контракта"),
        "startEnteringCityName": MessageLookupByLibrary.simpleMessage(
            "Начните вводить название города"),
        "startVerification":
            MessageLookupByLibrary.simpleMessage("Начать верификацию"),
        "submit": MessageLookupByLibrary.simpleMessage("Отправить"),
        "success": MessageLookupByLibrary.simpleMessage("Успешно"),
        "successTransaction": MessageLookupByLibrary.simpleMessage("Успешно"),
        "successfullyCopied":
            MessageLookupByLibrary.simpleMessage("Адрес скопирован"),
        "successfullyPushedTransaction": MessageLookupByLibrary.simpleMessage(
            "Транзакция успешно отправлена"),
        "sureToChangeNetwork": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите переключить сеть?"),
        "switchTo": MessageLookupByLibrary.simpleMessage("переключить на"),
        "symbol": MessageLookupByLibrary.simpleMessage("Символ"),
        "symbolsNotUse": MessageLookupByLibrary.simpleMessage(
            "символы не используются ( скобки, знаки препинания и т.д.)"),
        "termsOfUse":
            MessageLookupByLibrary.simpleMessage("Условия обслуживания"),
        "thisWalletAlreadyExist": MessageLookupByLibrary.simpleMessage(
            "Этот кошелёк уже импортирован"),
        "title": MessageLookupByLibrary.simpleMessage("Weather App"),
        "toAccessTheApplication":
            MessageLookupByLibrary.simpleMessage("для доступа к приложению"),
        "toUnlock": MessageLookupByLibrary.simpleMessage("для разблокировки"),
        "tokenAlreadyAdded":
            MessageLookupByLibrary.simpleMessage("Токен уже добавлен"),
        "tooSmallDustValueForTransactionException":
            MessageLookupByLibrary.simpleMessage(
                "Слишком маленькое значение \"dust\" для проведения транзакции. Попробуйте увеличить значение"),
        "totalBalance": MessageLookupByLibrary.simpleMessage("Общий баланс"),
        "transactionData":
            MessageLookupByLibrary.simpleMessage("Данные транзакции"),
        "transactionDetails":
            MessageLookupByLibrary.simpleMessage("Детали транзакции"),
        "transactionHash":
            MessageLookupByLibrary.simpleMessage("Хэш транзакции"),
        "transactionHint": MessageLookupByLibrary.simpleMessage(
            "Снижение цены может привести к задержке или отмене транзакции"),
        "transactionNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR TRX NOT FOUND"),
        "transactionNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR TRX NOT SET"),
        "transactionSpeed":
            MessageLookupByLibrary.simpleMessage("Скорость транзакции"),
        "transactionStatus":
            MessageLookupByLibrary.simpleMessage("Статус транзакции"),
        "transactionTime":
            MessageLookupByLibrary.simpleMessage("Время транзакции"),
        "transactionTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Время транзакции истекло. Попробуйте еще раз."),
        "transactions": MessageLookupByLibrary.simpleMessage("Транзакции"),
        "transfer": MessageLookupByLibrary.simpleMessage("Отправить"),
        "transferCurrency":
            MessageLookupByLibrary.simpleMessage("Запросить валюту"),
        "trc10TokenRequires7Digits": MessageLookupByLibrary.simpleMessage(
            "Адрес контракта TRC10 должен состоять из 7-значного цифрового значения"),
        "trc20TokenRequires34stringLength": MessageLookupByLibrary.simpleMessage(
            "Адрес контракта TRC20 должен состоять из 34-значного значения"),
        "tronNetworkProhibitsTransactionsToYourself":
            MessageLookupByLibrary.simpleMessage(
                "Сеть Tron запрещает транзакции самому себе"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Попробуйте снова"),
        "turnOff": MessageLookupByLibrary.simpleMessage("Выключить"),
        "turnOn": MessageLookupByLibrary.simpleMessage("Включить"),
        "unauthorized": MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Непредвиденная ошибка"),
        "unknownTronNodeError": m7,
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH USER NOT FOUND"),
        "validationDecimalError": MessageLookupByLibrary.simpleMessage(
            "Должен быть действительный номер"),
        "validationExactLengthError": m8,
        "validationLatinLowerCaseError": MessageLookupByLibrary.simpleMessage(
            "Допускаются только латинские строчные буквы"),
        "validationMinLengthError": m9,
        "validationNonNegativeNumberError":
            MessageLookupByLibrary.simpleMessage(
                "Допускается использовать только положительные числа"),
        "validationNonZeroNumberError": MessageLookupByLibrary.simpleMessage(
            "Значение не может быть равным нулю"),
        "validationOnlyDigitsError": MessageLookupByLibrary.simpleMessage(
            "Значение не может быть равным нулю"),
        "validationPasswordError": MessageLookupByLibrary.simpleMessage(
            "Пароль должен содержать не менее 6 символов, в том числе: как минимум одну заглавную и строчную латинскую букву и цифру."),
        "validationRequiredError": MessageLookupByLibrary.simpleMessage(
            "Данное поле является обязательным"),
        "validationWordCountError": m10,
        "verify": MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "verifyPhrase": MessageLookupByLibrary.simpleMessage(
            "Подтвердите фразу восстановления"),
        "verifyPhraseHint": MessageLookupByLibrary.simpleMessage(
            "Нажимайте на слова в правильном порядке, чтобы создать кошелёк."),
        "verifyTransactionPageTile":
            MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "version": MessageLookupByLibrary.simpleMessage("Версия:"),
        "viewCardData":
            MessageLookupByLibrary.simpleMessage("Просмотреть данные о карте"),
        "wallet": MessageLookupByLibrary.simpleMessage("Кошелёк"),
        "walletAlreadyExists":
            MessageLookupByLibrary.simpleMessage("Кошелёк уже существует"),
        "walletConnect": MessageLookupByLibrary.simpleMessage("WalletConnect"),
        "walletConnectInfo": MessageLookupByLibrary.simpleMessage(
            "WalletConnect — это протокол с открытым исходным кодом, который позволяет подключить мобильный кошелек к децентрализованным приложениям (dApps) с помощью QR-кода. Помните о необходимости отключаться по окончании работы с dApps из соображений безопасности."),
        "walletConnectInfoText": MessageLookupByLibrary.simpleMessage(
            "Подключите свой кошелек к WalletConnect для совершения транзакций"),
        "walletConnectText1": MessageLookupByLibrary.simpleMessage(
            "Просмотр баланса и активности кошелька"),
        "walletConnectText2": MessageLookupByLibrary.simpleMessage(
            "Запрос на одобрения транзакций"),
        "walletDeleteSuccessfully":
            MessageLookupByLibrary.simpleMessage("Кошелёк успешно удалён"),
        "walletNameCannotBeSpace": MessageLookupByLibrary.simpleMessage(
            "Имя кошелька не может быть пробелом"),
        "walletNameChanged":
            MessageLookupByLibrary.simpleMessage("Имя кошелька изменено"),
        "walletPublicKeyLabel":
            MessageLookupByLibrary.simpleMessage("Публичный ключ кошелька"),
        "walletWithThisNameAlreadyExists": MessageLookupByLibrary.simpleMessage(
            "Кошелёк c этим именем уже существует"),
        "wallets": MessageLookupByLibrary.simpleMessage("Кошельки"),
        "wantsToConnect": MessageLookupByLibrary.simpleMessage(
            "хочет подключится к вашему кошельку"),
        "wcAddressChange": MessageLookupByLibrary.simpleMessage(
            "Адреса в активных сессиях по WalletConnect будут изменены в следующих DApp:"),
        "wcWarningText": MessageLookupByLibrary.simpleMessage(
            "Убедитесь что вы доверяете этому сайту. Взаимодействуя с ним, вы разрешаете этому сайту получить доступ к вашим средствам"),
        "whatIsAsecretPhrase":
            MessageLookupByLibrary.simpleMessage("Что такое секретная фраза?"),
        "yes": MessageLookupByLibrary.simpleMessage("Да"),
        "yourSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Ваша секретная фраза")
      };
}
