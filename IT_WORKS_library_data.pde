Table table;

void setup(){
  size(800,800);
  noStroke();
  table = loadTable("libhold.csv");
  
// Get row number 2 (you can get other rows)

  
}

void draw(){
  background(122);
    TableRow row = table.getRow(16);
  TableRow row2 = table.getRow(0);

  // Cycle through all of the columns in the row above.
  for (int i = 0; i < row.getColumnCount(); ++i)
  {
    // Get the floating point value at row, and column i
    float value = map(row.getFloat(i),63,18604,0,1); // min and max from excel sheet
    String name = row2.getString(i);
    fill(255,255,0,30);
    ellipse(width/2,height/2,value*width,value*width);

      }
    }

//    
//    // Push a matrix to allow easy rotation.
//    // See http://processing.org/tutorials/transform2d/
//    pushMatrix();
//  
//    // Move yoru draw position to the center.
//    translate(width / 2, height / 2);
//      
//    // Rotate around that draw position in equal increments.
//    rotate(2 * PI * row.getColumnCount() / (float)i);
//    
//    // Draw a horizontal line scaled by the value.  
//    // No need to worry about the trig.  It will be rotated
//    // by the transformation matrix.
//    line(0, 0, (width / 2 + 40)* value, 0);
//    
//    // Pop the matrix.
//    popMatrix();


