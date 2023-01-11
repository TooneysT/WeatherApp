import java.text.ParseException;  
import java.text.SimpleDateFormat;  
import java.util.Date;
import java.util.Locale; 

String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherKelowna, descriptionKelowna, iconKelowna, countryKelowna, nameKelowna;
float tempKelowna, tempMinKelowna, tempMaxKelowna;
int apiCallTimeKelowna, sunriseKelowna, sunsetKelowna;

String mainWeatherVancouver, descriptionVancouver, iconVancouver, countryVancouver, nameVancouver;
float tempVancouver, tempMinVancouver, tempMaxVancouver;
int apiCallTimeVancouver, sunriseVancouver, sunsetVancouver;

void unwrapToVariables() {
  
  currentEdmonton();
  currentKelowna();
  currentVancouver();
}

Date realDate(long unixTime) {
  Date dateReal = new Date(unixTime*1000);
  return dateReal;
}


void currentEdmonton() {
  JSONArray weatherEdmonton = jsonCurrentEdmonton.getJSONArray("weather"); //Unwrapping

  JSONObject allEdmonton = weatherEdmonton.getJSONObject(0); //Unwrap {}
  mainWeatherEdmonton = allEdmonton.getString("main");
  descriptionEdmonton = allEdmonton.getString("description");
  iconEdmonton = allEdmonton.getString("icon");

  JSONObject mainEdmonton = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  tempEdmonton = mainEdmonton.getFloat("temp");
  tempMinEdmonton = mainEdmonton.getFloat("temp_min");
  tempMaxEdmonton = mainEdmonton.getFloat("temp_max");

  long apiCallTimeEdmonton = jsonCurrentEdmonton.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = realDate(apiCallTimeEdmonton);

  JSONObject sysEdmonton = jsonCurrentEdmonton.getJSONObject("sys"); //Unwrap {}
  countryEdmonton = sysEdmonton.getString("country");
  sunriseEdmonton = sysEdmonton.getInt("sunrise");
  sunsetEdmonton = sysEdmonton.getInt("sunset");

  nameEdmonton = jsonCurrentEdmonton.getString("name");
}

void currentKelowna() {
  JSONArray weatherKelowna = jsonCurrentKelowna.getJSONArray("weather");

  JSONObject allKelowna = weatherKelowna.getJSONObject(0); 
  mainWeatherKelowna = allKelowna.getString("main");
  descriptionKelowna = allKelowna.getString("description");
  iconKelowna = allKelowna.getString("icon");

  JSONObject mainKelowna = jsonCurrentKelowna.getJSONObject("main"); 
  tempKelowna = mainKelowna.getFloat("temp");
  tempMinKelowna = mainKelowna.getFloat("temp_min");
  tempMaxKelowna = mainKelowna.getFloat("temp_max");

  apiCallTimeKelowna = jsonCurrentKelowna.getInt("dt");

  JSONObject sysKelowna = jsonCurrentKelowna.getJSONObject("sys");
  countryKelowna = sysKelowna.getString("country");
  sunriseKelowna = sysKelowna.getInt("sunrise");
  sunsetKelowna = sysKelowna.getInt("sunset");

  nameKelowna = jsonCurrentKelowna.getString("name");
}

void currentVancouver() {
  JSONArray weatherVancouver = jsonCurrentVancouver.getJSONArray("weather"); //Unwrapping

  JSONObject allVancouver = weatherVancouver.getJSONObject(0); //Unwrap {}
  mainWeatherVancouver = allVancouver.getString("main");
  descriptionVancouver = allVancouver.getString("description");
  iconVancouver = allVancouver.getString("icon");

  JSONObject mainVancouver = jsonCurrentVancouver.getJSONObject("main"); //Unwrap {}
  tempVancouver = mainVancouver.getFloat("temp");
  tempMinVancouver = mainVancouver.getFloat("temp_min");
  tempMaxVancouver = mainVancouver.getFloat("temp_max");

  apiCallTimeVancouver = jsonCurrentVancouver.getInt("dt");

  JSONObject sysVancouver = jsonCurrentVancouver.getJSONObject("sys"); //Unwrap {}
  countryVancouver = sysVancouver.getString("country");
  sunriseVancouver = sysVancouver.getInt("sunrise");
  sunsetVancouver = sysVancouver.getInt("sunset");

  nameVancouver = jsonCurrentVancouver.getString("name");
}
