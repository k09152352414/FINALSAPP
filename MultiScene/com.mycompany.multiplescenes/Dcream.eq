
/*
 * Dcream
 * Created by Eqela Studio 2.0b7.4
 */

public class Dcream : SEScene
{
	int h;
	int w;
	public static int x;
	public static int y;
	int i;
SESprite dcreammenu;

public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		rsc.prepare_image("dcreammenu","dcreammenu",get_scene_width(),get_scene_height());
		dcreammenu = add_sprite_for_image(SEImage.for_resource("dcreammenu"));
		dcreammenu.move(0,0);

}


public void on_pointer_press(SEPointerInfo pi) {
SESprite dcreammenu;
   
     if(pi.is_inside(0,0,get_scene_width(),get_scene_height())) {
            switch_scene(new MainScene4());
        }
   
    }

		public void on_pointer_move(SEPointerInfo pi) {
		base.on_pointer_move(pi);
		x = pi.get_x();
		y = pi.get_y();
	}
}
