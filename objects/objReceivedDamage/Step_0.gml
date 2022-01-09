y += spd;
image_alpha += alphaSpd;

if (image_alpha <= 0) {
	instance_destroy();
}