Particle[] a;
Particle[] b;
OddballParticle c;
void setup()
{
	size(600,600);
	a = new Particle [100];
	for (int i = 0; i < a.length; i++)
	{
		a[i] = new NormalParticle();
	}
	b = new Particle [50];
	for (int j = 0; j < b.length; j++)
	{
		b[j] = new OddballParticle();
	}
	c = new JumboParticle();
}
void draw()
{
	background(1);
	frameRate(100);
	for (int i = 0; i < a.length; i++)
	{
		a[i].move();
		a[i].show();
	}
	for (int j = 0; j < b.length; j++)
	{
		b[j].move();
		b[j].show();
	}	
	c.move();
	c.show();
}
class NormalParticle implements Particle
{
	int dude1,dude2,dude3;
	double x,y,angle,speed;
	NormalParticle()
	{
		x = 300.0;
		y = 300.0;
		angle = Math.random()*(2*Math.PI);
		speed = Math.random()*10;
		dude1 = (int)(Math.random()*255);
		dude2 = (int)(Math.random()*255);
		dude3 = (int)(Math.random()*255);
	}
	public void move()
	{
		x = x + Math.cos(angle)*speed;
		y = y + Math.sin(angle)*speed;
		angle = angle + 0.04;
	}
	public void show()
	{
		noStroke();
		fill(dude1,dude2,dude3,200);
		ellipse((float)x,(float)y,10,10);
	}
}
interface Particle
{
	public void show(); 
	public void move(); 
}
class OddballParticle implements Particle 
	double x,y,angle,speed;
	OddballParticle()
	{
		x = 300;
		y = 300;
		angle = Math.random()*(2*Math.PI);
		speed = (Math.random()*10);
	}
	public void show()
	{
		noStroke();
		fill(255,255,255,200);
		ellipse((float)x, (float)y, 10, 10);
	}
	public void move()
	{
    	x = x + Math.sin(angle)*speed;
		y = y + Math.cos(angle)*speed;
		angle = angle + 0.08;		
	}
}
class JumboParticle extends OddballParticle
{
	JumboParticle()
	{
	}
	void show()
	{
		fill(0,255,255);
		ellipse((float)x, (float)y, 45,45);
	}
	void move()
	{
		x = x + Math.sin(angle)*speed;
		y = y + Math.cos(angle)*speed;
		
		if (x > 600 || x < 0 || y < 0 || y > 600)
		{
			x = 300;
			y = 300;
			angle = Math.random()*(2*Math.PI);
			speed = (Math.random()*5)+5;
		}
	}
}