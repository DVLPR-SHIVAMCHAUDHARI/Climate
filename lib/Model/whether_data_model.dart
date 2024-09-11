class WhetherDataModel {
  num? lat;
  num? lon;
  String? timezone;
  num? timezoneOffset;
  Current? current;
  List<Minutely>? minutely;
  List<Hourly>? hourly;
  List<Daily>? daily;

  WhetherDataModel(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezoneOffset,
      this.current,
      this.minutely,
      this.hourly,
      this.daily});

  WhetherDataModel.fromJson(Map<String, dynamic> json) {
    lat = json["lat"];
    lon = json["lon"];
    timezone = json["timezone"];
    timezoneOffset = json["timezone_offset"];
    current =
        json["current"] == null ? null : Current.fromJson(json["current"]);
    minutely = json["minutely"] == null
        ? null
        : (json["minutely"] as List).map((e) => Minutely.fromJson(e)).toList();
    hourly = json["hourly"] == null
        ? null
        : (json["hourly"] as List).map((e) => Hourly.fromJson(e)).toList();
    daily = json["daily"] == null
        ? null
        : (json["daily"] as List).map((e) => Daily.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["lat"] = lat;
    data["lon"] = lon;
    data["timezone"] = timezone;
    data["timezone_offset"] = timezoneOffset;
    if (current != null) {
      data["current"] = current?.toJson();
    }
    if (minutely != null) {
      data["minutely"] = minutely?.map((e) => e.toJson()).toList();
    }
    if (hourly != null) {
      data["hourly"] = hourly?.map((e) => e.toJson()).toList();
    }
    if (daily != null) {
      data["daily"] = daily?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Daily {
  num? dt;
  num? sunrise;
  num? sunset;
  num? moonrise;
  num? moonset;
  num? moonPhase;
  String? summary;
  Temp? temp;
  FeelsLike? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPonum;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather2>? weather;
  num? clouds;
  num? pop;
  num? rain;
  num? uvi;

  Daily(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.summary,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPonum,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.clouds,
      this.pop,
      this.rain,
      this.uvi});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json["dt"];
    sunrise = json["sunrise"];
    sunset = json["sunset"];
    moonrise = json["moonrise"];
    moonset = json["moonset"];
    moonPhase = json["moon_phase"];
    summary = json["summary"];
    temp = json["temp"] == null ? null : Temp.fromJson(json["temp"]);
    feelsLike = json["feels_like"] == null
        ? null
        : FeelsLike.fromJson(json["feels_like"]);
    pressure = json["pressure"];
    humidity = json["humidity"];
    dewPonum = json["dew_ponum"];
    windSpeed = json["wind_speed"];
    windDeg = json["wind_deg"];
    windGust = json["wind_gust"];
    weather = json["weather"] == null
        ? null
        : (json["weather"] as List).map((e) => Weather2.fromJson(e)).toList();
    clouds = json["clouds"];
    pop = json["pop"];
    rain = json["rain"];
    uvi = json["uvi"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["dt"] = dt;
    data["sunrise"] = sunrise;
    data["sunset"] = sunset;
    data["moonrise"] = moonrise;
    data["moonset"] = moonset;
    data["moon_phase"] = moonPhase;
    data["summary"] = summary;
    if (temp != null) {
      data["temp"] = temp?.toJson();
    }
    if (feelsLike != null) {
      data["feels_like"] = feelsLike?.toJson();
    }
    data["pressure"] = pressure;
    data["humidity"] = humidity;
    data["dew_ponum"] = dewPonum;
    data["wind_speed"] = windSpeed;
    data["wind_deg"] = windDeg;
    data["wind_gust"] = windGust;
    if (weather != null) {
      data["weather"] = weather?.map((e) => e.toJson()).toList();
    }
    data["clouds"] = clouds;
    data["pop"] = pop;
    data["rain"] = rain;
    data["uvi"] = uvi;
    return data;
  }
}

class Weather2 {
  num? id;
  String? main;
  String? description;
  String? icon;

  Weather2({this.id, this.main, this.description, this.icon});

  Weather2.fromJson(Map<String, dynamic> json) {
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

class FeelsLike {
  num? day;
  num? night;
  num? eve;
  num? morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json["day"];
    night = json["night"];
    eve = json["eve"];
    morn = json["morn"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["day"] = day;
    data["night"] = night;
    data["eve"] = eve;
    data["morn"] = morn;
    return data;
  }
}

class Temp {
  num? day;
  num? min;
  num? max;
  num? night;
  num? eve;
  num? morn;

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  Temp.fromJson(Map<String, dynamic> json) {
    day = json["day"];
    min = json["min"];
    max = json["max"];
    night = json["night"];
    eve = json["eve"];
    morn = json["morn"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["day"] = day;
    data["min"] = min;
    data["max"] = max;
    data["night"] = night;
    data["eve"] = eve;
    data["morn"] = morn;
    return data;
  }
}

class Hourly {
  num? dt;
  num? temp;
  num? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPonum;
  num? uvi;
  num? clouds;
  num? visibility;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather1>? weather;
  num? pop;

  Hourly(
      {this.dt,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPonum,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.pop});

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json["dt"];
    temp = json["temp"];
    feelsLike = json["feels_like"];
    pressure = json["pressure"];
    humidity = json["humidity"];
    dewPonum = json["dew_ponum"];
    uvi = json["uvi"];
    clouds = json["clouds"];
    visibility = json["visibility"];
    windSpeed = json["wind_speed"];
    windDeg = json["wind_deg"];
    windGust = json["wind_gust"];
    weather = json["weather"] == null
        ? null
        : (json["weather"] as List).map((e) => Weather1.fromJson(e)).toList();
    pop = json["pop"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["dt"] = dt;
    data["temp"] = temp;
    data["feels_like"] = feelsLike;
    data["pressure"] = pressure;
    data["humidity"] = humidity;
    data["dew_ponum"] = dewPonum;
    data["uvi"] = uvi;
    data["clouds"] = clouds;
    data["visibility"] = visibility;
    data["wind_speed"] = windSpeed;
    data["wind_deg"] = windDeg;
    data["wind_gust"] = windGust;
    if (weather != null) {
      data["weather"] = weather?.map((e) => e.toJson()).toList();
    }
    data["pop"] = pop;
    return data;
  }
}

class Weather1 {
  num? id;
  String? main;
  String? description;
  String? icon;

  Weather1({this.id, this.main, this.description, this.icon});

  Weather1.fromJson(Map<String, dynamic> json) {
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

class Minutely {
  num? dt;
  num? precipitation;

  Minutely({this.dt, this.precipitation});

  Minutely.fromJson(Map<String, dynamic> json) {
    dt = json["dt"];
    precipitation = json["precipitation"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["dt"] = dt;
    data["precipitation"] = precipitation;
    return data;
  }
}

class Current {
  num? dt;
  num? sunrise;
  num? sunset;
  num? temp;
  num? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPonum;
  num? uvi;
  num? clouds;
  num? visibility;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;

  Current(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPonum,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather});

  Current.fromJson(Map<String, dynamic> json) {
    dt = json["dt"];
    sunrise = json["sunrise"];
    sunset = json["sunset"];
    temp = json["temp"];
    feelsLike = json["feels_like"];
    pressure = json["pressure"];
    humidity = json["humidity"];
    dewPonum = json["dew_ponum"];
    uvi = json["uvi"];
    clouds = json["clouds"];
    visibility = json["visibility"];
    windSpeed = json["wind_speed"];
    windDeg = json["wind_deg"];
    windGust = json["wind_gust"];
    weather = json["weather"] == null
        ? null
        : (json["weather"] as List).map((e) => Weather.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["dt"] = dt;
    data["sunrise"] = sunrise;
    data["sunset"] = sunset;
    data["temp"] = temp;
    data["feels_like"] = feelsLike;
    data["pressure"] = pressure;
    data["humidity"] = humidity;
    data["dew_ponum"] = dewPonum;
    data["uvi"] = uvi;
    data["clouds"] = clouds;
    data["visibility"] = visibility;
    data["wind_speed"] = windSpeed;
    data["wind_deg"] = windDeg;
    data["wind_gust"] = windGust;
    if (weather != null) {
      data["weather"] = weather?.map((e) => e.toJson()).toList();
    }
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
