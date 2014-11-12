
/*
 * MainScene3
 * Created by Eqela Studio 2.0b7.4
 */

public class MainScene3 : SEScene
{
	int h;
	int w;
	public static int x;
	public static int y;
	int i;
    SESprite armynavy;
    SESprite star;
    SESprite dimsum;
    SESprite sex;
	SESprite back;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("white"), 0.5*get_scene_width(),0.5*get_scene_height()));
        
		rsc.prepare_image("armynavy","armynavy",0.5*get_scene_width(),0.5*get_scene_height());
		armynavy = add_sprite_for_image(SEImage.for_resource("armynavy"));
        armynavy.move(0,0);

		rsc.prepare_image("sex","sex",0.5*get_scene_width(),0.5*get_scene_height());
		sex = add_sprite_for_image(SEImage.for_resource("sex"));
        sex.move(0.5*get_scene_width(),0);

		rsc.prepare_image("star","star",0.5*get_scene_width(),0.5*get_scene_height());
		star = add_sprite_for_image(SEImage.for_resource("star"));
        star.move(0,0.5*get_scene_height());
			
		rsc.prepare_image("dimsum","dimsum",0.5*get_scene_width(),0.5*get_scene_height());
		dimsum = add_sprite_for_image(SEImage.for_resource("dimsum"));
        dimsum.move(0.5*get_scene_width(),0.5*get_scene_height());

		rsc.prepare_image("back","back",0.1*get_scene_width(),0.1*get_scene_height());
		back = add_sprite_for_image(SEImage.for_resource("back"));
        back.move(0.9*get_scene_width(),0.9*get_scene_height());


    }
	 public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Armynavy());
        }
        if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Sex());
        }
        if(pi.is_inside(0,0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new Star());
        }
        if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width()-0.1*get_scene_width()
		, 0.5*get_scene_height()-0.1*get_scene_height())) {
            switch_scene(new Dimsum());
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
