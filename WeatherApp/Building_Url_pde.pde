String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentKelowna;
String URLForecastKelowna;
String URLCurrentVancouver;
String URLForecastVancouver;

JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentKelowna;
JSONObject jsonForecastKelowna;
JSONObject jsonCurrentVancouver;
JSONObject jsonForecastVancouver;

void BuildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String edmontonId = "q=Edmonton";
  String kelownaId = "q=Kelowna";
  String vancouverId = "q=Vancouver";
  String apiKey = "appid=06ee4dfaf9a7c9bdf9024604eda99160";
  String unitMetric = "units=metric";
  String and = "&";
  
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+unitMetric;
  URLForecastEdmonton = baseURL_Forecast+edmontonId+and+apiKey+and+unitMetric;
  URLCurrentKelowna = baseURL_Current+kelownaId+and+apiKey+and+unitMetric;
  URLForecastKelowna = baseURL_Forecast+kelownaId+and+apiKey+and+unitMetric;
  URLCurrentVancouver = baseURL_Current+vancouverId+and+apiKey+and+unitMetric;
  URLForecastVancouver = baseURL_Forecast+vancouverId+and+apiKey+and+unitMetric;
}//End BuildingURL

void APICall() {
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentKelowna = loadJSONObject(URLCurrentKelowna);
  jsonForecastKelowna = loadJSONObject(URLForecastKelowna);
  jsonCurrentVancouver = loadJSONObject(URLCurrentVancouver);
  jsonForecastVancouver = loadJSONObject(URLForecastVancouver);
}
