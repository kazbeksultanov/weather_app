#!/bin/bash

flutter clean &&
flutter pub cache repair &&
flutter pub get &&
flutter pub upgrade &&
flutter clean &&
flutter pub get