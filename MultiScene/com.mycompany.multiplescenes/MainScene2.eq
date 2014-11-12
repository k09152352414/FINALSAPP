
/*
 * MainScene2
 * Created by Eqela Studio 2.0b7.4
 */

public class MainScene2 : SEScene
{

	int h;
	int w;
	public static int x;
	public static int y;
	int i;
    SESprite greenbox;
    SESprite ilars;
    SESprite jollibee;
    SESprite yellowcab;
	SESprite back;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("white"), 0.5*get_scene_width(),0.5*get_scene_height()));
        
		rsc.prepare_image("greenbox","greenbox",0.5*get_scene_width(),0.5*get_scene_height());
		greenbox = add_sprite_for_image(SEImage.for_resource("greenbox"));
        greenbox.move(0,0);

		rsc.prepare_image("ilars","ilars",0.5*get_scene_width(),0.5*get_scene_height());
		ilars = add_sprite_for_image(SEImage.for_resource("ilars"));
        ilars.move(0.5*get_scene_width(),0);

		rsc.prepare_image("jollibee","jollibee",0.5*get_scene_width(),0.5*get_scene_height());
		jollibee = add_sprite_for_image(SEImage.for_resource("jollibee"));
        jollibee.move(0,0.5*get_scene_height());
			
		rsc.prepare_image("yellowcab","yellowcab",0.5*get_scene_width(),0.5*get_scene_height());
		yellowcab = add_sprite_for_image(SEImage.for_resource("yellowcab"));
        yellowcab.move(0.5*get_scene_width(),0.5*get_scene_height());

		rsc.prepare_image("back","back",0.1*get_scene_width(),0.1*get_scene_height());
		back = add_sprite_for_image(SEImage.for_resource("back"));
        back.move(0.9*get_scene_width(),0.9*get_scene_height());


    }
	 public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Greenbox());
        }
        if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Ilars());
        }
        if(pi.is_inside(0,0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Jollibee());
        }
        if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width()-0.1*get_scene_width()
		, 0.5*get_scene_height()-0.1*get_scene_height())) {
            switch_scene(new Yellow());
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
