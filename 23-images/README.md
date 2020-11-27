`image_get_1`: introduces `PImage.get`. This sketch uses the mouse as a
magnifying glass, that shows a big circle at the mouse position that is the
color of the pixel that is right under the mouse.

`image_get_2`: uses `lerpColor` to draw a darker border around the "magnifying
glass" circle.

`pointillism_1`: sample the image to create a halftone effect.

`pointillism_2`: use the x position of the mouse to adjust the dot size

`pointillism_3`: use the mouse x to adjust the dot spacing, mouse y to adjust the dot size

`halftone_1`: draw just the brightness; ignore the hue and saturation

`halftone_2`: change the circle size based on the image brightness

`play_while_pressed`: demonstrate the role of `movie.read()`. The next frame is
read only while the mouse is pressed.
