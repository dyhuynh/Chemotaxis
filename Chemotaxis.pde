Bacteria[] bob;
 void setup()   
 {     
 	frameRate(10);
	size(400,400);
	bob = new Bacteria[5];
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
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	
	}

	void show() 
	{	fill(myColor);

		ellipse(myX,myY,30,30);
	}
	void walk()
	{
				int direct = (int)(Math.random()*4+1);


		if (direct == 1) 
			{
				myX = myX + 5;
				
			}
		else if (direct == 2)
			{
				myX = myX - 5;
				
			}
		else if (direct == 3)
			{
				myY = myY - 5;
			
			}
		else if (direct == 4)
			{
				myY = myY + 5;
			}
		/*myX = myX + (int)(Math.random()*8-4);
		myY = myY + (int)(Math.random()*8-4); */

	}

 }    

