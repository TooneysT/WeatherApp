String edmTemp, KelTemp, VanTemp;
color black=#000000, white=#FFFFFF, green=#32CD32, red=#FF0000;

void setup() {
  background(0);
  BuildingURL();
  APICall();
  unwrapToVariables();
  size(800, 600); 

  GUI_Setup();

  println("Start of Console");
  textSetup();

  textDraw(selectedCity, titleFont, height, black, CENTER, CENTER, titleX, titleY, titleRectWidth, titleRectHeight);
  textDraw(quit, titleFont, height, black, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight);
  SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
  formatter = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z");
  String strDate = formatter.format(apiCurrentDateCall);
  textDraw(strDate, titleFont, height, black, LEFT, CENTER, currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight); //Time Stamp
  textDraw(nameEdm, titleFont, height, black, LEFT, CENTER, EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight); //Edmonton
  textDraw(nameKel, titleFont, height, black, LEFT, CENTER, KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight); //Kelowna
  textDraw(nameVan, titleFont, height, black, LEFT, CENTER, VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight); //Vancouver
}

void draw() {
  fill(green);
  rect(currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight);
  //Title
  fill(green);
  rect(titleX,titleY,titleRectWidth,titleRectHeight);
  textDraw(selectedCity, titleFont, height, black, CENTER, CENTER, titleX, titleY, titleRectWidth, titleRectHeight);
  //Quit Button
  if ( mouseX>quitX && mouseX<quitX+quitRectWidth && mouseY>quitY && mouseY<quitY+quitRectHeight ) {
    fill(red);
    rect(quitX, quitY, quitRectWidth, quitRectHeight);
    textDraw(quit, titleFont, height, black, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight);
  } else {
    fill(green);
    rect(quitX, quitY, quitRectWidth, quitRectHeight);
    textDraw(quit, titleFont, height, black, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight); 
  }
  //Edmonton
  if ( mouseX>EdmontonCallX && mouseX<EdmontonCallX+EdmontonBoxWidth && mouseY>EdmontonCallY && mouseY<EdmontonCallY+EdmontonBoxHeight ) {
    fill(red);
    rect(EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight);
    textDraw(nameEdm, titleFont, height, black, LEFT, CENTER, EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight);
  } else {
    fill(green);
    rect(EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight);
    textDraw(nameEdm, titleFont, height, black, LEFT, CENTER, EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight);
  }
  //Kelowna
  if ( mouseX>KelownaCallX && mouseX<KelownaCallX+KelownaBoxWidth && mouseY>KelownaCallY && mouseY<KelownaCallY+KelownaBoxHeight ) {
    fill(red);
    rect(KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight);
    textDraw(nameKel, titleFont, height, black, LEFT, CENTER, KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight); 
  } else {
    fill(green);
    rect(KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight);
    textDraw(nameKel, titleFont, height, black, LEFT, CENTER, KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight);
  }
  //Vancouver
  if ( mouseX>VancouverCallX && mouseX<VancouverCallX+VancouverBoxWidth && mouseY>VancouverCallY && mouseY<VancouverCallY+VancouverBoxHeight ) {
    fill(red);
    rect(VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight);
    textDraw(nameVan, titleFont, height, black, LEFT, CENTER, VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight); 
  } else {
    fill(green);
    rect(VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight);
    textDraw(nameVan, titleFont, height, black, LEFT, CENTER, VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight); 
  }
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall);

  if ( mouseX>quitX && mouseX<quitX+quitRectWidth && mouseY>quitY && mouseY<quitY+quitRectHeight ) {
    exit();
  }
  //
  if ( mouseX>EdmontonCallX && mouseX<EdmontonCallX+EdmontonBoxWidth && mouseY>EdmontonCallY && mouseY<EdmontonCallY+EdmontonBoxHeight ) {
    edmTemp = String.valueOf(tempEdmonton);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(edmTemp, titleFont, height, black, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Edmonton
    println(tempEdmonton, edmTemp);
    selectedCity = "Edmonton";
    println(selectedCity);
  }
  //
  if (mouseX>KelownaCallX && mouseX<KelownaCallX+KelownaBoxWidth && mouseY>KelownaCallY && mouseY<KelownaCallY+KelownaBoxHeight) {
    KelTemp = String.valueOf(tempKelowna);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(KelTemp, titleFont, height, black, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Kelowna
    println(tempKelowna, KelTemp);
    selectedCity = "Kelowna";
    println(selectedCity);
  }
  //
  if (mouseX>VancouverCallX && mouseX<VancouverCallX+VancouverBoxWidth && mouseY>VancouverCallY && mouseY<VancouverCallY+VancouverBoxHeight) {
    VanTemp = String.valueOf(tempVancouver);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(VanTemp, titleFont, height, black, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Vancouver
    println(tempVancouver, VanTemp);
    selectedCity = "Vancouver";
    println(selectedCity);
  }
  //
}

void keyPressed() {
}
