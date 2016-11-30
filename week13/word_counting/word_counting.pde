IntDict wordCounter;
String [] words;

void setup() {
  size(400, 400);
  String [] lines = loadStrings("dickens.txt");
  String fullText = join(lines, " ");
  words = splitTokens(fullText, " .,!?:()");
  wordCounter = new IntDict();
  
  for (int i = 0; i<words.length; i++){
     wordCounter.increment(words[i].toLowerCase()); 
  }
  wordCounter.sortValuesReverse();
}

void draw(){
  background(0);
  fill(255);
  String [] keys = wordCounter.keyArray();
  for(int i = 0; i < 100; i++){
    int count = wordCounter.get(keys[i]);
    println(keys[i], count);
  }
  noLoop();
}