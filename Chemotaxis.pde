Bacteria[] bob;
 void setup()   
 {     
 	frameRate(10);
	size(600,600);
	bob = new Bacteria[15];
	for (int i = 0; i<bob.length; i++)
	{
		bob[i] = new Bacteria();
	}

 }   
 void draw()   

 {    
 	 background(59, 191, 214);
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
		myX = (int)(Math.random()*600);
		myY = (int)(Math.random()*600);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	
	}

	void show() 
	{	fill(myColor);
		noStroke();

		ellipse(myX,myY,30,30);
	}
	void walk()
	{
				
		myX = myX + (int)(Math.random()*27-13);
		myY = myY + (int)(Math.random()*27-13); 

		if ((mouseX-myX)>0)
		{
			myX = myX + ((mouseX-myX)/20-4);
		myY = myY + ((mouseY-myY)/20-4); 
		}

		if ((mouseX-myX)<0)
		{
			myX = myX + ((mouseX-myX)/20+4);
		myY = myY + ((mouseY-myY)/20+4); 
		}
	


	}

 }    

