//Draw textbox
draw_sprite(spr_textbox, 0, x, y);

//Draw text
draw_set_font(fnt_npcText);		// Set the font
draw_text_ext(x + (boxWidth - 5), y, text, stringHeight, boxWidth);	// Draws text in textbox and wraps the text if needed