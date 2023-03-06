// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(symbol) => "Asset with symbol ${symbol} not found";

  static String m1(dAppUrl) => "Connected to ${dAppUrl}";

  static String m2(decimal) =>
      "This token can not have more than ${decimal} decimal(s)";

  static String m3(amountMax) =>
      "Fee is higher than total available amount ${amountMax}";

  static String m4(min, max) => "Fee out of range: ${min} - ${max}";

  static String m5(currency) => "Request ${currency}";

  static String m6(total) => "Send ${total}";

  static String m7(message) =>
      "Unexpected error. Try to complete the transaction later.\nServer message: \$${message}";

  static String m8(length) => "Length should be equal to ${length}";

  static String m9(length) => "Field should have at least ${length} characters";

  static String m10(length) => "Field should have at least ${length} words";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutSecretPhrase": MessageLookupByLibrary.simpleMessage(
            "Usually 12 (sometimes 24) words separated by one space"),
        "actionCanceled":
            MessageLookupByLibrary.simpleMessage("Action canceled"),
        "activateKeyWallet":
            MessageLookupByLibrary.simpleMessage("Activate KeyWallet"),
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "activeSessionWillBeHere": MessageLookupByLibrary.simpleMessage(
            "Active connections will appear here"),
        "addKeyWalletCard":
            MessageLookupByLibrary.simpleMessage("Add KeyWallet card"),
        "addNewToken": MessageLookupByLibrary.simpleMessage("Add new token"),
        "addToken": MessageLookupByLibrary.simpleMessage("Add token"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "addressCopied":
            MessageLookupByLibrary.simpleMessage("Address copied successfully"),
        "addressNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR ADDRESS NOT FOUND"),
        "addressNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR ADDRESS NOT SET"),
        "advancedBtc": MessageLookupByLibrary.simpleMessage("Advanced BTC"),
        "advancedInfo": MessageLookupByLibrary.simpleMessage("Advanced info"),
        "advancedSettings": MessageLookupByLibrary.simpleMessage("Settings"),
        "alreadyHaveWallet":
            MessageLookupByLibrary.simpleMessage("I already have a wallet"),
        "amountRecalculated": MessageLookupByLibrary.simpleMessage(
            "Amount without commission. Final amount on the verification page"),
        "apiCurrencyNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR CURRENCY NOT FOUND"),
        "assetAdded":
            MessageLookupByLibrary.simpleMessage("Currency added successfully"),
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
        "authorization": MessageLookupByLibrary.simpleMessage("Authorization"),
        "authorizationForbidden":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH FORBIDDEN"),
        "authorizationMissing":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH MISSING"),
        "autoBlocking":
            MessageLookupByLibrary.simpleMessage("Automatic blocking"),
        "autoBlockingIn1Hour":
            MessageLookupByLibrary.simpleMessage("After 1 hour"),
        "autoBlockingIn1Minute":
            MessageLookupByLibrary.simpleMessage("After 1 minute"),
        "autoBlockingIn5Hour":
            MessageLookupByLibrary.simpleMessage("After 5 hours"),
        "autoBlockingIn5Minutes":
            MessageLookupByLibrary.simpleMessage("After 5 minutes"),
        "autoBlockingInstant":
            MessageLookupByLibrary.simpleMessage("Immediately"),
        "availableBalance":
            MessageLookupByLibrary.simpleMessage("On balance now"),
        "avgConfirmationTime":
            MessageLookupByLibrary.simpleMessage("Average confirmation time"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "backupCopy":
            MessageLookupByLibrary.simpleMessage("Back up your wallet"),
        "backupCopyAgree": MessageLookupByLibrary.simpleMessage(
            "I understand that if I lose the secret phrase, then I will not be able to restore access to my wallet"),
        "backupCopyHint": MessageLookupByLibrary.simpleMessage(
            "You will now see 12 words that will allow you to regain access to your wallet. Be prepared to keep your  secret phrase in a safe place."),
        "badPassword":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH BAD PASSWORD"),
        "badRequest": MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "bankCard": MessageLookupByLibrary.simpleMessage("Bank card"),
        "biometric": MessageLookupByLibrary.simpleMessage("Biometrics"),
        "bringKeyWallet": MessageLookupByLibrary.simpleMessage(
            "Bring KeyWallet to your phone"),
        "bringKeyWalletLong": MessageLookupByLibrary.simpleMessage(
            "Bring KeyWallet to the top of your phone. Do not remove the card until verification is complete."),
        "buy": MessageLookupByLibrary.simpleMessage("Buy"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "cannotParseJWTToken": MessageLookupByLibrary.simpleMessage(
            "ERROR AUTH CANNOT PARSE TOKEN"),
        "cardIdLabel": MessageLookupByLibrary.simpleMessage("Card Id"),
        "cardPublicKeyLabel":
            MessageLookupByLibrary.simpleMessage("Card public key"),
        "cardStatusLabel": MessageLookupByLibrary.simpleMessage("Card status"),
        "changePin": MessageLookupByLibrary.simpleMessage("Change PIN-code"),
        "checkWalletType": MessageLookupByLibrary.simpleMessage(
            "Be sure that the wallet type is correct"),
        "cities": MessageLookupByLibrary.simpleMessage("Сities"),
        "close": MessageLookupByLibrary.simpleMessage("close"),
        "confirmation": MessageLookupByLibrary.simpleMessage("Confirmations"),
        "connect": MessageLookupByLibrary.simpleMessage("Connect"),
        "connected": MessageLookupByLibrary.simpleMessage("Connected"),
        "connectedTo": m1,
        "connectionError":
            MessageLookupByLibrary.simpleMessage("Connection error"),
        "contextNotFoundException":
            MessageLookupByLibrary.simpleMessage("Context Not Found Exception"),
        "continueText": MessageLookupByLibrary.simpleMessage("Continue"),
        "continueWithOutPinCode":
            MessageLookupByLibrary.simpleMessage("Continue without PIN"),
        "contractAddress":
            MessageLookupByLibrary.simpleMessage("Contract address"),
        "contractAddressCopiedWarning": MessageLookupByLibrary.simpleMessage(
            "You have copied a contract address. Any token sent to this address will be lost."),
        "contractValidationFailed":
            MessageLookupByLibrary.simpleMessage("Contract not found"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "copyPhrase": MessageLookupByLibrary.simpleMessage("Copy phrase"),
        "createOrOrderBankCard": MessageLookupByLibrary.simpleMessage(
            "Order or connect a bank card"),
        "createPassword":
            MessageLookupByLibrary.simpleMessage("Create password"),
        "createPinCode":
            MessageLookupByLibrary.simpleMessage("Come up with a code"),
        "createWallet": MessageLookupByLibrary.simpleMessage("Create a wallet"),
        "createWalletWays":
            MessageLookupByLibrary.simpleMessage("Create wallet ways"),
        "cryptoCardWallet":
            MessageLookupByLibrary.simpleMessage("CryptoCardWallet"),
        "cryptoCardWallets":
            MessageLookupByLibrary.simpleMessage("CryptoCardWallet wallets"),
        "currencies": MessageLookupByLibrary.simpleMessage("Currencies"),
        "currenciesNotAddedYet":
            MessageLookupByLibrary.simpleMessage("Currencies not added yet"),
        "currencyNotFound":
            MessageLookupByLibrary.simpleMessage("Currency not found"),
        "currencyNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR CURRENCY NOT SET"),
        "currencyNotSupported": MessageLookupByLibrary.simpleMessage(
            "ERROR CURRENCY NOT SUPPORTED"),
        "currentBalance":
            MessageLookupByLibrary.simpleMessage("Current balance"),
        "customForTransaction": MessageLookupByLibrary.simpleMessage("Custom"),
        "dAppNotSupportAutoSelectNetwork": MessageLookupByLibrary.simpleMessage(
            "does not support automatic network selection, please select a network"),
        "dataToSign": MessageLookupByLibrary.simpleMessage("Data to sign"),
        "decimalValidatorError": m2,
        "decimals": MessageLookupByLibrary.simpleMessage("Decimals"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "demo": MessageLookupByLibrary.simpleMessage("DEMO"),
        "disconnect": MessageLookupByLibrary.simpleMessage("Disconnect"),
        "enableCameraPermission": MessageLookupByLibrary.simpleMessage(
            "Please enable camera permission"),
        "enterAmount": MessageLookupByLibrary.simpleMessage("Enter the amount"),
        "enterFee":
            MessageLookupByLibrary.simpleMessage("Enter fee in sat/byte"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("enter password"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("enter password again"),
        "enterPinCode": MessageLookupByLibrary.simpleMessage("Enter the code"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorAddingNewToken":
            MessageLookupByLibrary.simpleMessage("Error adding token"),
        "errorDetails": MessageLookupByLibrary.simpleMessage("Error details"),
        "excellent": MessageLookupByLibrary.simpleMessage("Perfectly!"),
        "faceID": MessageLookupByLibrary.simpleMessage("Face ID"),
        "failedGenerateWallet": MessageLookupByLibrary.simpleMessage(
            "Failed to generate new wallet"),
        "failedLoadingWalletState":
            MessageLookupByLibrary.simpleMessage("Failed to load wallet state"),
        "failedToLoadSession":
            MessageLookupByLibrary.simpleMessage("Failed to load session"),
        "failedTransaction":
            MessageLookupByLibrary.simpleMessage("Unsuccessful transaction"),
        "feeCanNotExceed1EthValueForTransactionException":
            MessageLookupByLibrary.simpleMessage(
                "Fee can not exceed max value of 1 unit. Try to change gas price"),
        "feeHigherThanAmount": m3,
        "feeOutOfRange": m4,
        "fingerprint": MessageLookupByLibrary.simpleMessage("Fingerprint"),
        "firstTimeGeneratingAddressForCryptoCardWalletForThisAddress":
            MessageLookupByLibrary.simpleMessage(
                "First time generating an address for this token. We need to scan CrytoCardWallet card of this wallet!"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fromTotalAmount": MessageLookupByLibrary.simpleMessage("of the total"),
        "gasLimit": MessageLookupByLibrary.simpleMessage("Gas Limit"),
        "gasPrice": MessageLookupByLibrary.simpleMessage("Gas Price (Gwei)"),
        "generateMnemonic":
            MessageLookupByLibrary.simpleMessage("Generate words"),
        "generateQrCode":
            MessageLookupByLibrary.simpleMessage("Generate QR code"),
        "getReadyKeyWallet": MessageLookupByLibrary.simpleMessage(
            "Prepare a KeyWallet card to activate it and create a wallet. If you don\'t have a wallet, order it using the link below."),
        "goBack": MessageLookupByLibrary.simpleMessage("Go back"),
        "hashCopied":
            MessageLookupByLibrary.simpleMessage("Hash copied successfully"),
        "haveReadLegal": MessageLookupByLibrary.simpleMessage(
            "I have read and accept the Terms of Service and Privacy Policy"),
        "haveSecurelySavedPhrase": MessageLookupByLibrary.simpleMessage(
            "I have securely saved the phrase"),
        "hide": MessageLookupByLibrary.simpleMessage("Hide"),
        "hideStackTrace":
            MessageLookupByLibrary.simpleMessage("Hide stack trace"),
        "highForTransactionSpeed": MessageLookupByLibrary.simpleMessage("High"),
        "hourShort": MessageLookupByLibrary.simpleMessage("h"),
        "import": MessageLookupByLibrary.simpleMessage("Import"),
        "importWallet": MessageLookupByLibrary.simpleMessage("Import wallet"),
        "importWalletStandardName":
            MessageLookupByLibrary.simpleMessage("Multi-coin wallet"),
        "inProgressTransaction":
            MessageLookupByLibrary.simpleMessage("In progress"),
        "incomingTransaction":
            MessageLookupByLibrary.simpleMessage("Incoming transaction"),
        "information": MessageLookupByLibrary.simpleMessage("Information"),
        "insufficientBalance": MessageLookupByLibrary.simpleMessage(
            "Insufficient funds on the balance sheet"),
        "insufficientBalanceButtonTitle":
            MessageLookupByLibrary.simpleMessage("Insufficient funds"),
        "internalServer":
            MessageLookupByLibrary.simpleMessage("INTERNAL SERVER"),
        "invalidAddress": MessageLookupByLibrary.simpleMessage(
            "Invalid address for this network"),
        "invalidAssetState":
            MessageLookupByLibrary.simpleMessage("Invalid asset state"),
        "invalidAuthorization":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH INVALID"),
        "invalidAuthorizationToken":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH TOKEN INVALID"),
        "invalidBiometric":
            MessageLookupByLibrary.simpleMessage("Invalid biometrics"),
        "invalidMnemonic": MessageLookupByLibrary.simpleMessage(
            "The entered mnemonic phrase is not valid. Try again"),
        "invalidPassword":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "invalidPinCode":
            MessageLookupByLibrary.simpleMessage("Invalid PIN-code"),
        "invalidValue": MessageLookupByLibrary.simpleMessage("Invalid value"),
        "keyWallet": MessageLookupByLibrary.simpleMessage("KeyWallet"),
        "keyWalletActions":
            MessageLookupByLibrary.simpleMessage("KeyWallet actions"),
        "keyWalletCardAlreadyAdded": MessageLookupByLibrary.simpleMessage(
            "KeyWallet card already added"),
        "keyWalletCardData":
            MessageLookupByLibrary.simpleMessage("KeyWallet card information"),
        "keyWalletCardNotAddedYet": MessageLookupByLibrary.simpleMessage(
            "KeyWallet card not added yet"),
        "keyWalletMethodNotFoundError":
            MessageLookupByLibrary.simpleMessage("KeyWallet method not found"),
        "keyWalletPinChangedSuccessfullyChanged":
            MessageLookupByLibrary.simpleMessage(
                "KeyWallet PIN-code successfully changed"),
        "keyWalletSettings":
            MessageLookupByLibrary.simpleMessage("KeyWallet settings"),
        "keyWalletWallet":
            MessageLookupByLibrary.simpleMessage("KeyWallet wallet"),
        "keyWalletWallets":
            MessageLookupByLibrary.simpleMessage("KeyWallet wallets"),
        "legal": MessageLookupByLibrary.simpleMessage("Legal information"),
        "legalHint": MessageLookupByLibrary.simpleMessage(
            "To create a wallet, you must read the Terms of Service and Privacy Policy "),
        "letIsStart": MessageLookupByLibrary.simpleMessage("Let’s start"),
        "lowForTransactionSpeed": MessageLookupByLibrary.simpleMessage("Low"),
        "maxFeeSat":
            MessageLookupByLibrary.simpleMessage("MAX fee (satoshi/byte):"),
        "maxTotal": MessageLookupByLibrary.simpleMessage("Max Total"),
        "middleForTransactionSpeed":
            MessageLookupByLibrary.simpleMessage("Middle"),
        "min6Characters":
            MessageLookupByLibrary.simpleMessage("min. 6 characters"),
        "minFeeSat":
            MessageLookupByLibrary.simpleMessage("MIN fee (satoshi/byte):"),
        "minOneDigit": MessageLookupByLibrary.simpleMessage("min 1 digit"),
        "minOneLowercaseLetter":
            MessageLookupByLibrary.simpleMessage("min. 1 spelling letter"),
        "minOneUppercaseLetter":
            MessageLookupByLibrary.simpleMessage("min. 1 capital letter"),
        "minutesShort": MessageLookupByLibrary.simpleMessage("min"),
        "mnemonicHasCopied": MessageLookupByLibrary.simpleMessage(
            "Mnemonic is copied to clipboard"),
        "mnemonicQrCodeHint": MessageLookupByLibrary.simpleMessage(
            "This QR code contains your secret phrase. Store it securely and do not pass it on to anyone."),
        "multiCoinWallet":
            MessageLookupByLibrary.simpleMessage("Multi Coin Wallet"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nativeCoin": MessageLookupByLibrary.simpleMessage("Native coin"),
        "networkFee": MessageLookupByLibrary.simpleMessage("Network fee"),
        "networkFeeWc": MessageLookupByLibrary.simpleMessage("Network Fee"),
        "networkTokenType":
            MessageLookupByLibrary.simpleMessage("Network type"),
        "networks": MessageLookupByLibrary.simpleMessage("Networks"),
        "newConnection": MessageLookupByLibrary.simpleMessage("New connection"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "nfcIsDisable": MessageLookupByLibrary.simpleMessage("NFC is disable"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAvailableWallets":
            MessageLookupByLibrary.simpleMessage("No available wallets"),
        "noConnectionToOurServers": MessageLookupByLibrary.simpleMessage(
            "No connection to our servers"),
        "noContractInGivenToken":
            MessageLookupByLibrary.simpleMessage("No contract in this token"),
        "noInternetError":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "noPermission":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH NO PERMISSION"),
        "noSelectedCitiesYet": MessageLookupByLibrary.simpleMessage(
            "No selected cities yet. Select from search page"),
        "noTokenForSwapException": MessageLookupByLibrary.simpleMessage(
            "You do not have tokens for swap"),
        "noTransactions": MessageLookupByLibrary.simpleMessage(
            "Your future transactions will be displayed here"),
        "noWallets": MessageLookupByLibrary.simpleMessage("No wallets"),
        "nonce": MessageLookupByLibrary.simpleMessage("Nonce"),
        "nonceCopied": MessageLookupByLibrary.simpleMessage("Nonce copied"),
        "nonceTooLowTransactionException":
            MessageLookupByLibrary.simpleMessage("Nonce value is too low"),
        "none": MessageLookupByLibrary.simpleMessage("None"),
        "notAuthError":
            MessageLookupByLibrary.simpleMessage("User is not authorized"),
        "notEnoughResourcesForTransaction":
            MessageLookupByLibrary.simpleMessage(
                "Insufficient funds for commission"),
        "notEnoughTrxToCompleteTransaction":
            MessageLookupByLibrary.simpleMessage(
                "Not enough TRX to complete the transaction"),
        "notEnoughUtxo": MessageLookupByLibrary.simpleMessage(
            "Not enough UTXO for the current transaction"),
        "notFound": MessageLookupByLibrary.simpleMessage("Nothing is found"),
        "ohno": MessageLookupByLibrary.simpleMessage("Oh no!"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "onboarding1": MessageLookupByLibrary.simpleMessage(
            " that will never leave your device"),
        "onboarding1Underline":
            MessageLookupByLibrary.simpleMessage("Private keys"),
        "onboarding2": MessageLookupByLibrary.simpleMessage(
            " all cryptocurrency in one place"),
        "onboarding2Underline":
            MessageLookupByLibrary.simpleMessage("Safe storage of "),
        "onboarding3":
            MessageLookupByLibrary.simpleMessage(" of cryptocurrencies"),
        "onboarding3Underline":
            MessageLookupByLibrary.simpleMessage("Fast and anonymous exchange"),
        "onboarding4": MessageLookupByLibrary.simpleMessage(
            " with access to decentralized applications"),
        "onboarding4Underline":
            MessageLookupByLibrary.simpleMessage("Earn, spend and trade"),
        "onlyLatinLetter":
            MessageLookupByLibrary.simpleMessage("only latin letters"),
        "openSetting": MessageLookupByLibrary.simpleMessage("Open settings"),
        "openSettingToEnableCamera": MessageLookupByLibrary.simpleMessage(
            "Camera permission denied completely. You need to give permission in the settings.\nOpen settings?"),
        "openWallet": MessageLookupByLibrary.simpleMessage(
            "Open a cryptocurrency wallet"),
        "orderEnterKeyWallet": MessageLookupByLibrary.simpleMessage(
            "Order or connect your KeyWallet"),
        "orderKeyWallet":
            MessageLookupByLibrary.simpleMessage("Order KeyWallet"),
        "otherNetworks": MessageLookupByLibrary.simpleMessage("Other networks"),
        "otherWalletTypes":
            MessageLookupByLibrary.simpleMessage("Available wallets"),
        "outgoingTransaction":
            MessageLookupByLibrary.simpleMessage("Outgoing transaction"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordNotMatch": MessageLookupByLibrary.simpleMessage(
            "Password code doesn\'t match"),
        "passwordValidityToRules": MessageLookupByLibrary.simpleMessage(
            "The password must meet the conditions:"),
        "paste": MessageLookupByLibrary.simpleMessage("Paste"),
        "pendingTransaction":
            MessageLookupByLibrary.simpleMessage("Pending transaction"),
        "permissionDenied":
            MessageLookupByLibrary.simpleMessage("PERMISSION DENIED"),
        "pinCode": MessageLookupByLibrary.simpleMessage("PIN-code"),
        "pinCodeEnter": MessageLookupByLibrary.simpleMessage("Enter by PIN"),
        "pinNotMatch":
            MessageLookupByLibrary.simpleMessage("PIN-code doesn\'t match"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "qrCode": MessageLookupByLibrary.simpleMessage("QR code"),
        "rawTransactionHex":
            MessageLookupByLibrary.simpleMessage("Raw transaction hex"),
        "rawTransactionHexCopied":
            MessageLookupByLibrary.simpleMessage("Raw transaction hex copied"),
        "receive": MessageLookupByLibrary.simpleMessage("Receive"),
        "recipientAddress":
            MessageLookupByLibrary.simpleMessage("Recipient\'s address"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "removeKeyWalletCard":
            MessageLookupByLibrary.simpleMessage("Remove KeyWallet card"),
        "repeatPassword":
            MessageLookupByLibrary.simpleMessage("Repeat password"),
        "repeatPinCode":
            MessageLookupByLibrary.simpleMessage("Confirm PIN-code"),
        "replacementTransactionUnderpricedException":
            MessageLookupByLibrary.simpleMessage(
                "Replacement transaction underpriced error"),
        "requestCurrency":
            MessageLookupByLibrary.simpleMessage("Request currency"),
        "requestMoneyType": m5,
        "satoshiPerByte": MessageLookupByLibrary.simpleMessage("sat/byte"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "searchCities": MessageLookupByLibrary.simpleMessage("Search cities"),
        "searchInputTitle": MessageLookupByLibrary.simpleMessage("Search..."),
        "secretPhrase": MessageLookupByLibrary.simpleMessage("Secret phrase"),
        "secretPhraseHint": MessageLookupByLibrary.simpleMessage(
            "Write down and keep these words in the correct order. Store it securely and do not pass it on to anyone."),
        "security": MessageLookupByLibrary.simpleMessage("Safety"),
        "seedIsNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH SEED NOT SET"),
        "seedNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH SEED NOT FOUND"),
        "selectNetwork": MessageLookupByLibrary.simpleMessage("Select network"),
        "selectWallet": MessageLookupByLibrary.simpleMessage("Select a wallet"),
        "selectWalletError":
            MessageLookupByLibrary.simpleMessage("Failed to select wallet"),
        "selectWalletSuccess": MessageLookupByLibrary.simpleMessage(
            "Wallet selected successfully"),
        "selectWalletType":
            MessageLookupByLibrary.simpleMessage("Select wallet type"),
        "sendMax": MessageLookupByLibrary.simpleMessage("Send max"),
        "sendMoney": m6,
        "senderAddress": MessageLookupByLibrary.simpleMessage("Sender address"),
        "serverRequestError":
            MessageLookupByLibrary.simpleMessage("Server request error"),
        "sessionWasDisconnected":
            MessageLookupByLibrary.simpleMessage("Session was disconnected"),
        "setAmount": MessageLookupByLibrary.simpleMessage("Specify the amount"),
        "setPassword": MessageLookupByLibrary.simpleMessage("Set password"),
        "setPinCode":
            MessageLookupByLibrary.simpleMessage("Setting the PIN Code"),
        "setPinCodeRecommendation": MessageLookupByLibrary.simpleMessage(
            "For your safety, we recommend setting a PIN to your KeyWallet. If you lose access to KeyWallet, we will ask for this code."),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share": MessageLookupByLibrary.simpleMessage("Share this"),
        "shareTransaction":
            MessageLookupByLibrary.simpleMessage("Share transaction"),
        "showQrCode": MessageLookupByLibrary.simpleMessage("Show QR code"),
        "showSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Show secret phrase"),
        "showStackTrace":
            MessageLookupByLibrary.simpleMessage("Show stack trace"),
        "sizeOfFeeSat":
            MessageLookupByLibrary.simpleMessage("Size of fee (satoshi/byte)"),
        "smartContractCall":
            MessageLookupByLibrary.simpleMessage("Smart Contract Call"),
        "startEnteringCityName":
            MessageLookupByLibrary.simpleMessage("Start entering city name"),
        "startVerification":
            MessageLookupByLibrary.simpleMessage("Start verification"),
        "submit": MessageLookupByLibrary.simpleMessage("Send"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "successTransaction":
            MessageLookupByLibrary.simpleMessage("Successful "),
        "successfullyCopied":
            MessageLookupByLibrary.simpleMessage("Copied successfully"),
        "successfullyPushedTransaction": MessageLookupByLibrary.simpleMessage(
            "Transaction successfully sent"),
        "sureToChangeNetwork": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to switch network?"),
        "switchTo": MessageLookupByLibrary.simpleMessage("switch to"),
        "symbol": MessageLookupByLibrary.simpleMessage("Symbol"),
        "symbolsNotUse": MessageLookupByLibrary.simpleMessage(
            "symbols are not used (brackets, punctuation, etc.)"),
        "termsOfUse": MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "thisWalletAlreadyExist": MessageLookupByLibrary.simpleMessage(
            "This wallet has already been imported"),
        "title": MessageLookupByLibrary.simpleMessage("Weather App"),
        "toAccessTheApplication":
            MessageLookupByLibrary.simpleMessage("to access the application"),
        "toUnlock": MessageLookupByLibrary.simpleMessage("to unlock"),
        "tokenAlreadyAdded":
            MessageLookupByLibrary.simpleMessage("Token already added"),
        "tooSmallDustValueForTransactionException":
            MessageLookupByLibrary.simpleMessage(
                "Too small \"dust\" value for transaction. Try to increase value"),
        "totalBalance": MessageLookupByLibrary.simpleMessage("Total balance"),
        "transactionData":
            MessageLookupByLibrary.simpleMessage("Transaction data"),
        "transactionDetails":
            MessageLookupByLibrary.simpleMessage("Transaction details"),
        "transactionHash":
            MessageLookupByLibrary.simpleMessage("Transaction hash"),
        "transactionHint": MessageLookupByLibrary.simpleMessage(
            "Lowering the price might cause transaction to get delayed or cancelled"),
        "transactionNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR TRX NOT FOUND"),
        "transactionNotSet":
            MessageLookupByLibrary.simpleMessage("ERROR TRX NOT SET"),
        "transactionSpeed":
            MessageLookupByLibrary.simpleMessage("Transaction speed"),
        "transactionStatus":
            MessageLookupByLibrary.simpleMessage("Transaction status"),
        "transactionTime":
            MessageLookupByLibrary.simpleMessage("Transaction time"),
        "transactionTimeExpired": MessageLookupByLibrary.simpleMessage(
            "Transaction time has expired. Try again."),
        "transactions": MessageLookupByLibrary.simpleMessage("Transactions"),
        "transfer": MessageLookupByLibrary.simpleMessage("Send"),
        "transferCurrency":
            MessageLookupByLibrary.simpleMessage("Request currency"),
        "trc10TokenRequires7Digits": MessageLookupByLibrary.simpleMessage(
            "Token TRC10 requires exactly 7 digit contract address"),
        "trc20TokenRequires34stringLength":
            MessageLookupByLibrary.simpleMessage(
                "Token TRC20 requires exactly 34 character contract address"),
        "tronNetworkProhibitsTransactionsToYourself":
            MessageLookupByLibrary.simpleMessage(
                "Tron network prohibits transactions to yourself"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
        "turnOff": MessageLookupByLibrary.simpleMessage("Turn off"),
        "turnOn": MessageLookupByLibrary.simpleMessage("Turn on"),
        "unauthorized": MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "unexpectedError":
            MessageLookupByLibrary.simpleMessage("Unexpected error"),
        "unknownTronNodeError": m7,
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("ERROR AUTH USER NOT FOUND"),
        "validationDecimalError":
            MessageLookupByLibrary.simpleMessage("Should be a valid number"),
        "validationExactLengthError": m8,
        "validationLatinLowerCaseError": MessageLookupByLibrary.simpleMessage(
            "Only Latin lowercase are accepted"),
        "validationMinLengthError": m9,
        "validationNonNegativeNumberError":
            MessageLookupByLibrary.simpleMessage(
                "Only positive numbers are allowed"),
        "validationNonZeroNumberError":
            MessageLookupByLibrary.simpleMessage("Can\'t be zero"),
        "validationOnlyDigitsError":
            MessageLookupByLibrary.simpleMessage("The value cannot be zero"),
        "validationPasswordError": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least 6 characters, including: at least one uppercase and lowercase latin letter and number"),
        "validationRequiredError":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "validationWordCountError": m10,
        "verify": MessageLookupByLibrary.simpleMessage("Confirm"),
        "verifyPhrase":
            MessageLookupByLibrary.simpleMessage("Verify your recovery phrase"),
        "verifyPhraseHint": MessageLookupByLibrary.simpleMessage(
            "Click on the words in the correct order to create a wallet."),
        "verifyTransactionPageTile":
            MessageLookupByLibrary.simpleMessage("Verify"),
        "version": MessageLookupByLibrary.simpleMessage("Version:"),
        "viewCardData":
            MessageLookupByLibrary.simpleMessage("View card details"),
        "wallet": MessageLookupByLibrary.simpleMessage("Wallet"),
        "walletAlreadyExists":
            MessageLookupByLibrary.simpleMessage("The wallet already exists"),
        "walletConnect": MessageLookupByLibrary.simpleMessage("WalletConnect"),
        "walletConnectInfo": MessageLookupByLibrary.simpleMessage(
            "WalletConnect is an open source protocol that allows you to connect your mobile wallet to decentralized applications (dApps) using a QR code. Remember to disconnect when you\'re done with dApps for security reasons."),
        "walletConnectInfoText": MessageLookupByLibrary.simpleMessage(
            "Connect your wallet to WalletConnect to make transactions"),
        "walletConnectText1": MessageLookupByLibrary.simpleMessage(
            "View wallet balance and activity"),
        "walletConnectText2": MessageLookupByLibrary.simpleMessage(
            "Request for approval of transactions"),
        "walletDeleteSuccessfully":
            MessageLookupByLibrary.simpleMessage("Wallet deleted successfully"),
        "walletNameCannotBeSpace": MessageLookupByLibrary.simpleMessage(
            "Wallet name can not be space"),
        "walletNameChanged":
            MessageLookupByLibrary.simpleMessage("Wallet name changed"),
        "walletPublicKeyLabel":
            MessageLookupByLibrary.simpleMessage("Wallet public key"),
        "walletWithThisNameAlreadyExists": MessageLookupByLibrary.simpleMessage(
            "Wallet with this name already exists"),
        "wallets": MessageLookupByLibrary.simpleMessage("Wallets"),
        "wantsToConnect": MessageLookupByLibrary.simpleMessage(
            "wants to connect your wallet"),
        "wcAddressChange": MessageLookupByLibrary.simpleMessage(
            "\nAddresses of active sessions on WalletConnect will be changed in the following DApps:"),
        "wcWarningText": MessageLookupByLibrary.simpleMessage(
            "Make sure you trust this site. By interacting with it, you authorize this site to access your funds"),
        "whatIsAsecretPhrase":
            MessageLookupByLibrary.simpleMessage("What is a secret phrase?"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "yourSecretPhrase":
            MessageLookupByLibrary.simpleMessage("Your secret phrase")
      };
}
