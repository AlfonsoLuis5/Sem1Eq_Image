
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite Image1;
	SESprite Image2;
	SESprite Image3;
	SESprite Image4;
	SESprite text;

	double transparency = 0;

	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("red"), get_scene_width(), get_scene_height());
	
		rsc.prepare_image("mycloud1","mybull",0.5*get_scene_width(),0.5*get_scene_height());
		Image1 = add_sprite_for_image(SEImage.for_resource("mycloud1"));
		Image1.move(0,0);

		rsc.prepare_image("mycloud2","myhawk",0.5*get_scene_width(),0.5*get_scene_height());
		Image2 = add_sprite_for_image(SEImage.for_resource("mycloud2"));
		Image2.move(0.5*get_scene_width(),0);

		rsc.prepare_image("mycloud3","myrocket",0.5*get_scene_width(),0.5*get_scene_height());
		Image3 = add_sprite_for_image(SEImage.for_resource("mycloud3"));
		Image3.move(0,0.5*get_scene_height());

		rsc.prepare_image("mycloud4","mysuperman",0.5*get_scene_width(),0.5*get_scene_height());
		Image4 = add_sprite_for_image(SEImage.for_resource("mycloud4"));
		Image4.move(0.5*get_scene_width(),0.5*get_scene_height());

		rsc.prepare_font("myfont","arial bold color=white", 40);
		text= add_sprite_for_text(" ","myfont");
		text.move(50,50);
		
	}

	public void on_key_press(String name, String str)
	{
		base.on_key_press(name, str);
		text.set_text("KEY IS PRESSED");
	}

	public void on_key_release(String name, String str) 
	{
		base.on_key_press(name, str);
		text.set_text("KEY IS RELEASED");
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
  
		if(pi.is_inside(0,0,get_scene_width()*0.5,get_scene_height()*0.5)) 
		{
			text.set_text("Chicago Bulls");
			text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-text.get_height()*0.5);
			Image1.set_alpha(0.5);
			Image2.set_alpha(1);
			Image3.set_alpha(1);
			Image4.set_alpha(1);
		}
		else if(pi.is_inside(get_scene_width()*0.5,0,get_scene_width()*0.5,get_scene_height()*0.5)) 
		{
			text.set_text("Atlanta Hawks");
			text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-text.get_height()*0.5);
			Image1.set_alpha(1);
			Image2.set_alpha(0.5);
			Image3.set_alpha(1);
			Image4.set_alpha(1);
		} 
		else if(pi.is_inside(0,get_scene_height()*0.5,get_scene_width()*0.5,get_scene_height()*0.5)) 
		{
			text.set_text("Charlotte Hornets");
			text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-text.get_height()*0.5);
			Image1.set_alpha(1);
			Image2.set_alpha(1);
			Image3.set_alpha(0.5);
			Image4.set_alpha(1);
		}
		else 
		{
			text.set_text("NBA Eastern Conference");
			text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-text.get_height()*0.5);
			Image1.set_alpha(1);
			Image2.set_alpha(1);
			Image3.set_alpha(1);
			Image4.set_alpha(0.5);
		}

	}
	public void set_alpha(double alpha) 
	{

		transparency=alpha;
	
	}

	public void cleanup() 
	{
		base.cleanup();
	}
	
}
