#!/bin/bash

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'stg', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
      --project=fmulti-dev \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=com.example.multiFirebaseProjectFlavors.dev \
      --ios-out=ios/flavors/dev/GoogleService-Info.plist \
      --android-package-name=com.example.multi_firebase_project_flavors.dev \
      --android-out=android/app/src/dev/google-services.json
    ;;
  stg)
    flutterfire config \
      --project=fmulti-stg \
      --out=lib/firebase_options_stg.dart \
      --ios-bundle-id=com.example.multiFirebaseProjectFlavors.stg \
      --ios-out=ios/flavors/stg/GoogleService-Info.plist \
      --android-package-name=com.example.multi_firebase_project_flavors.stg \
      --android-out=android/app/src/stg/google-services.json
    ;;
  prod)
    flutterfire config \
      --project=fmulti-prod \
      --out=lib/firebase_options_prod.dart \
      --ios-bundle-id=com.example.multiFirebaseProjectFlavors \
      --ios-out=ios/flavors/prod/GoogleService-Info.plist \
      --android-package-name=com.example.multi_firebase_project_flavors \
      --android-out=android/app/src/prod/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'stg', or 'prod'."
    exit 1
    ;;
esac