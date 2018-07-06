String enumToString<T>(T value) => value.toString().split('.').last;

String toConstantCase(String value) => value
    .replaceAllMapped(new RegExp('([A-Z])'), (m) => '_${m[0]}')
    .toUpperCase();
