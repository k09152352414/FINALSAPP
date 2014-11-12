
/*
 * StartScene
 * Created by Eqela Studio 2.0b7.4
 */

public class StartScene : SEScene
{
		public static int x;
	public static int y;
	int h;
	int w;
	int i;
SESprite starte;

public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		AudioClipManager.prepare("love");	
		AudioClipManager.play("love");
		
		rsc.prepare_image("starte","starte",get_scene_width(),get_scene_height());
		starte = add_sprite_for_image(SEImage.for_resource("starte"));
		starte.move(0,0);

}


public void on_pointer_press(SEPointerInfo pi) {
SESprite bonchonmenu;
   
     if(pi.is_inside(0,0,get_scene_width(),get_scene_height())) {
            switch_scene(new Choices());
        }
    }


		public void on_pointer_move(SEPointerInfo pi) {
		base.on_pointer_move(pi);
		x = pi.get_x();
		y = pi.get_y();
	}

}

