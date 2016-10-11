Particle[] a;
Particle[] b;
OddballParticle[] c;
void setup()
{
	size (600,600)
	a = new Particle[100];
	for (int i = 0; i < a.length; i++)
	{
		a[i] = new NormalParticle();
	}
	b = new Particle[50];
	for (int j = 0; j < b.length; j++)
	{
		b[j] = new OddballParticle();
	}
	c = new JumboParticle();

}
void draw()
{
	background(1);
	framerate(1);
	for (int i = 0; i < a.length; i++);
	{
		a[1].move();
		a[1].show();
	}
	for (int j = 0; j < b.length; j++);
	{
		b[j].move();
		b[j].show();
	}
	c.move();
	c.show();
}
class NormalParticle
{
	int dude1,dude2,dude3;
	int myX, myY;
	double myX,myY,angle,speed;
	void NormalParticle()
	{
		myX = (int)(Math.random()*300);
	    myY = (int)(Math.random()*300);
	    Speed = Math.random()*10;
	    Direction = Math.PI*2*Math.random();
	 }
}
interface Particle
{
	
}
class OddballParticle 
{
	
}
class JumboParticle 
{
	
}

