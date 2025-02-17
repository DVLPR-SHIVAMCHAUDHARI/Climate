class CurrentWeatherDataModel {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  num? visibility;
  Wind? wind;
  Clouds? clouds;
  num? dt;
  Sys? sys;
  num? timezone;
  num? id;
  String? name;
  num? cod;

  CurrentWeatherDataModel(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  CurrentWeatherDataModel.fromJson(Map<String, dynamic> json) {
    coord = json["coord"] == null ? null : Coord.fromJson(json["coord"]);
    weather = json["weather"] == null
        ? null
        : (json["weather"] as List).map((e) => Weather.fromJson(e)).toList();
    base = json["base"];
    main = json["main"] == null ? null : Main.fromJson(json["main"]);
    visibility = json["visibility"];
    wind = json["wind"] == null ? null : Wind.fromJson(json["wind"]);
    clouds = json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]);
    dt = json["dt"];
    sys = json["sys"] == null ? null : Sys.fromJson(json["sys"]);
    timezone = json["timezone"];
    id = json["id"];
    name = json["name"];
    cod = json["cod"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (coord != null) {
      data["coord"] = coord?.toJson();
    }
    if (weather != null) {
      data["weather"] = weather?.map((e) => e.toJson()).toList();
    }
    data["base"] = base;
    if (main != null) {
      data["main"] = main?.toJson();
    }
    data["visibility"] = visibility;
    if (wind != null) {
      data["wind"] = wind?.toJson();
    }
    if (clouds != null) {
      data["clouds"] = clouds?.toJson();
    }
    data["dt"] = dt;
    if (sys != null) {
      data["sys"] = sys?.toJson();
    }
    data["timezone"] = timezone;
    data["id"] = id;
    data["name"] = name;
    data["cod"] = cod;
    return data;
  }
}

class Sys {
  String? country;
  num? sunrise;
  num? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<String, dynamic> json) {
    country = json["country"];
    sunrise = json["sunrise"];
    sunset = json["sunset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["country"] = country;
    data["sunrise"] = sunrise;
    data["sunset"] = sunset;
    return data;
  }
}

class Clouds {
  num? all;

  Clouds({this.all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["all"] = all;
    return data;
  }
}

class Wind {
  num? speed;
  num? deg;
  num? gust;

  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json["speed"];
    deg = json["deg"];
    gust = json["gust"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["speed"] = speed;
    data["deg"] = deg;
    data["gust"] = gust;
    return data;
  }
}

class Main {
  num? temp;
  num? feelsLike;
  num? tempMin;
  num? tempMax;
  num? pressure;
  num? humidity;
  num? seaLevel;
  num? grndLevel;

  Main(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity,
      this.seaLevel,
      this.grndLevel});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json["temp"];
    feelsLike = json["feels_like"];
    tempMin = json["temp_min"];
    tempMax = json["temp_max"];
    pressure = json["pressure"];
    humidity = json["humidity"];
    seaLevel = json["sea_level"];
    grndLevel = json["grnd_level"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["temp"] = temp;
    data["feels_like"] = feelsLike;
    data["temp_min"] = tempMin;
    data["temp_max"] = tempMax;
    data["pressure"] = pressure;
    data["humidity"] = humidity;
    data["sea_level"] = seaLevel;
    data["grnd_level"] = grndLevel;
    return data;
  }
}

class Weather {
  num? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    main = json["main"];
    description = json["description"];
    icon = json["icon"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["main"] = main;
    data["description"] = description;
    data["icon"] = icon;
    return data;
  }
}

class Coord {
  num? lon;
  num? lat;

  Coord({this.lon, this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json["lon"];
    lat = json["lat"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["lon"] = lon;
    data["lat"] = lat;
    return data;
  }
}
