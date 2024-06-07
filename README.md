
# Rave Flock

Мобильное приложение "Rave Flock" предназначено для организации локальных мероприятий. Приложение коснулось одной из важнейших сфер человека, а именно организации людей в рамках локальных мероприятий. На рынке существуем множество решений, смежно схожих по функциональности, но все они по большей степени выполняют другую важную функцию: мессенджер, социальная сеть и так далее.


## Features

-	создание мероприятия
-	установление дружбы с другим пользователем по никнейму
-	отправление приглашения на мероприятие
-	добавление корзины в мероприятие
-	добавление продуктов в корзину мероприятия
-	разделение цены корзины на использующих продукты и организаторов, которые будут эти продукты закупать
-	поиск открытых, публичных мероприятий


## Установка проекта и сборка

Note: by default only mocked data is provided. To enable actual data you should provide your AmbeeApi key and enable networking using the following dart-defines:
```
AMBEE_KEY=<YOUR_KEY_HERE>
PROD_NETWORK=true //false by default
```

To build and run this project:

1. Get Flutter [here](https://flutter.dev) if you don't already have it
2. Clone this repository.
3. `flutter pub get` and `flutter packages pub get` for resolve dependencies.
4. `dart run build_runner build --delete-conflicting-outputs` for codegeneration
5. `flutter gen-l10n` localizations generation
6. run `flutter run-android` or `flutter run-ios` to build the app.

### Необходимые компоненты
- Flutter SDK
- Dart SDK
- Andorid Studio / XCode

## Авторы
Ivan
