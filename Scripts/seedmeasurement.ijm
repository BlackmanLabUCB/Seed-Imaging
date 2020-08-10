//  Here you will enter your measurement information. D = the distance in pixels, K = What you know the distance represents U = the unit of measurement.

U = mm 
D = 114.7051
K = 2.54



// Converts the file to an 8-bit image
run("8-bit");

// Converts the image to a binary image. Seed = black, everything else = white 
setAutoThreshold("Default");
run("Threshold...");
setThreshold(0, 158);
setOption("BlackBackground", true);
run("Convert to Mask");

// Set scale -- This is your scale

run("Set Scale...", "distance=D known=K pixel=1 unit=U global");

// Analyzes everything -- appends to results file.

run("Analyze Particles...", "size=0.2-Infinity show=Outlines display exclude summarize");

