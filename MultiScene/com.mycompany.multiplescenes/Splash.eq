public class Splash : SESplashScene
{        
	public void initialize(SEResourceCache rsc) {
        	base.initialize(rsc);
                add_image_centered("splee",Color.instance("black"),20);
                set_next_scene(new StartScene());
        }
}