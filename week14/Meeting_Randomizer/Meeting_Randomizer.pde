//Array list is a java array. It has a useful function to easily remove from the existing array without making a new one
ArrayList <String> names;
String [] eachName;

//Starting time of meetings
int hours = 1;
int minutes = 10;

//Y position of the text display
int yPos = 20;

void setup(){
size (800, 600);
background(255);

//Load the names from the .csv file. Each new line becomes a new array value, which is ideal
eachName = loadStrings("studentRoster.csv");  
//This is similar to objects in that we have to make a new one
names = new ArrayList<String>();
//Add each name to the array
for (int i = 0; i<eachName.length; i++){
  names.add(eachName[i]);
}
fill(0);
textSize(16);


}


void draw(){
  //Make a loop as large as the students list
  for (int i = 0; i<names.size(); i++){
    //Randomize a number from 0 to 22. 
    int scheduledNumber = int(random(0, names.size()));
    //Get the name at that slot
    String scheduledName = names.get(scheduledNumber);
    //Write the name down
    text(hours +  ":" + minutes + " - " + scheduledName, 10, yPos); 
    //Remove that name from the arraylist
    names.remove(scheduledNumber);
    //Change the y position for text position
    yPos += 20;
    //Call a function to figure out time, specifically when to change to new hours
    timeChange();
  }
}

void timeChange(){
    //Increment by 7 minutes
   minutes += 7;
   //If it should be the next hour, add the hour, and figure out how many leftover minutes there are
   if (minutes > 59){
      hours++;
      minutes = minutes - 60;
   }
}