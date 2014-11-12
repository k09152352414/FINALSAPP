
/*
 * MainScene4
 * Created by Eqela Studio 2.0b7.4
 */

public class MainScene4 : SEScene
{
	int h;
	int w;
	public static int x;
	public static int y;
	int i;
    SESprite starbucks;
    SESprite dcream;
    SESprite rufo;
    SESprite cafeuk;
	SESprite back;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("white"), 0.5*get_scene_width(),0.5*get_scene_height()));
        
		rsc.prepare_image("starbucks","starbucks",0.5*get_scene_width(),0.5*get_scene_height());
		starbucks = add_sprite_for_image(SEImage.for_resource("starbucks"));
        starbucks.move(0,0);

		rsc.prepare_image("dcream","dcream",0.5*get_scene_width(),0.5*get_scene_height());
		dcream = add_sprite_for_image(SEImage.for_resource("dcream"));
        dcream.move(0.5*get_scene_width(),0);

		rsc.prepare_image("rufo","rufo",0.5*get_scene_width(),0.5*get_scene_height());
		rufo = add_sprite_for_image(SEImage.for_resource("rufo"));
        rufo.move(0,0.5*get_scene_height());
			
		rsc.prepare_image("cafeuk","cafeuk",0.5*get_scene_width(),0.5*get_scene_height());
		cafeuk = add_sprite_for_image(SEImage.for_resource("cafeuk"));
        cafeuk.move(0.5*get_scene_width(),0.5*get_scene_height());

		rsc.prepare_image("back","back",0.1*get_scene_width(),0.1*get_scene_height());
		back = add_sprite_for_image(SEImage.for_resource("back"));
        back.move(0.9*get_scene_width(),0.9*get_scene_height());


    }
	 public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Starbucks());
        }
        if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Dcream());
        }
        if(pi.is_inside(0,0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Rufo());
        }
        if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width()-0.1*get_scene_width()
		, 0.5*get_scene_height()-0.1*get_scene_height())) {
            switch_scene(new Cafeuk());
        }
		if(pi.is_inside(0.9*get_scene_width(),0.9*get_scene_height(),0.9*get_scene_width()
									+0.1*get_scene_width(),0.9*get_scene_height()+0.1*get_scene_height())) {
            switch_scene(new Choices());
        }
    

   
    }

    public void cleanup() {
        base.cleanup();
    }
}
