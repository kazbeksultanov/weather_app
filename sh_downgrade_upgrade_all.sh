#!/bin/bash

flutter pub downgrade packages/localization/
flutter pub downgrade packages/forms/
flutter pub downgrade packages/drivers/
flutter pub downgrade

flutter pub upgrade packages/localization/
flutter pub upgrade packages/forms/
flutter pub upgrade packages/drivers/
flutter pub upgrade
