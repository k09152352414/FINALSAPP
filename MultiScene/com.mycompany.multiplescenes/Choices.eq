
/*
 * Choices
 * Created by Eqela Studio 2.0b7.4
 */

public class Choices : SEScene
{
	SESprite carpark;
    SESprite lacson;
    SESprite pnoval;
    SESprite dapitan;
	SESprite back;
	
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("black"), get_scene_width(),get_scene_height()));
        
		rsc.prepare_image("carpark","carpark",0.5*get_scene_width(),0.5*get_scene_height());
        carpark = add_sprite_for_image(SEImage.for_resource("carpark"));
        carpark.move(0,0);

        rsc.prepare_image("lacson","lacson",0.5*get_scene_width(),0.5*get_scene_height());
        lacson = add_sprite_for_image(SEImage.for_resource("lacson"));
        lacson.move(0.5*get_scene_width(),0);

		rsc.prepare_image("pnoval","pnoval",0.5*get_scene_width(),0.5*get_scene_height());
        pnoval = add_sprite_for_image(SEImage.for_resource("pnoval"));
        pnoval.move(0,0.5*get_scene_height());

		rsc.prepare_image("dapitan","dapitan",0.5*get_scene_width(),0.5*get_scene_height());
        dapitan = add_sprite_for_image(SEImage.for_resource("dapitan"));
        dapitan.move(0.5*get_scene_width(),0.5*get_scene_height());


    }
	 public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new MainScene());
        }
        else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new MainScene2());
        }
        else if(pi.is_inside(0,0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new MainScene4());
        }
        else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(), 0.5*get_scene_height())) {
            switch_scene(new MainScene3());
        }
    

   
    }

    public void cleanup() {
        base.cleanup();
    }
}
