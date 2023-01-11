//Colours

//Edmonton
float EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight;
//Kelowna
float KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight;
//Vancouver
float VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight;
//Buttons
float titleX, titleY, titleRectWidth, titleRectHeight;
float quitX, quitY, quitRectWidth, quitRectHeight;
float currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight;
float currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight;

void GUI_Setup() {
  //Create Title
  titleX = width*2/10;
  titleY = height*0;
  titleRectWidth = width*9/10;
  titleRectHeight = height*2/10;
  rect(titleX, titleY, titleRectWidth, titleRectHeight); 
  //Create Quit Button
  quitX = width * 8/10;
  quitY = height * 0;
  quitRectWidth = width * 2/10;
  quitRectHeight = height * 2/10;
  rect(quitX, quitY, quitRectWidth, quitRectHeight);
  // Edmonton
  EdmontonCallX = width * 0;
  EdmontonCallY = height * 0;
  EdmontonBoxWidth = width * 60/300;
  EdmontonBoxHeight = height * 1/3;
  rect(EdmontonCallX, EdmontonCallY, EdmontonBoxWidth, EdmontonBoxHeight);
  // Kelowna
  KelownaCallX = width *0;
  KelownaCallY = height * 1/3;
  KelownaBoxWidth = width * 60/300;
  KelownaBoxHeight = height * 1/3;
  rect(KelownaCallX, KelownaCallY, KelownaBoxWidth, KelownaBoxHeight);
  // Vancouver
  VancouverCallX = width * 0;
  VancouverCallY = height * 2/3;
  VancouverBoxWidth = width * 60/300;
  VancouverBoxHeight = height * 1/3;
  rect(VancouverCallX, VancouverCallY, VancouverBoxWidth, VancouverBoxHeight);
  //Current Temperature Display
  currentTempX = width * 5/10;
  currentTempY = height * 1/4;
  currentTempRectWidth = width * 1/2.8;
  currentTempRectHeight = height * 1/2.8;
  rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
}
