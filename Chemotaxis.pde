Bacteria[] bob;
 void setup()   
 {     
	size(400,400);
	bob = new Bacteria[50];
	for (int i = 0; i<bob.length; i++)
	{
		bob[i] = new Bacteria();
	}

 }   
 void draw()   

 {    
 	 background(0);
for (int i = 0; i<bob.length; i++) 
	{
	bob[i].show();
	bob[i].walk();
	}
	
 }  
 class Bacteria    
 {     
	int myX;
	int myY;
	int myColor;

	Bacteria() 
	{
		myX = 200;
		myY = 200;
		int myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	
	}

	void show() 
	{	
		//fill(myColor);
		ellipse(myX,myY,30,30);
	}
	void walk()
	{
		myX = myX + (int)(Math.random()*8-4);
		myY = myY + (int)(Math.random()*8-4);

	}

 }    