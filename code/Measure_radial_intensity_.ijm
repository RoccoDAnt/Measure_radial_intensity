sample=getTitle();
path_output=getDirectory("Choose an output directory");
getPixelSize(pixel_unit, pixelWidth, pixelHeight);

Stack.setChannel(1); //1-starting counter
run("Duplicate...", "duplicate channels=1");
run("Gaussian Blur...", "sigma=5");
setAutoThreshold("Default dark");
//run("Threshold...");
setAutoThreshold("Huang dark");
setOption("BlackBackground", true);
run("Convert to Mask");
rename("binary");
run("Duplicate...", " ");

run("Ultimate Points");
setAutoThreshold("Huang dark");
setOption("BlackBackground", true);
run("Convert to Mask");
rename("ultimate_point");
run("Create Selection");
roiManager("Add");
Roi.getContainedPoints(x_center, y_center);

selectWindow("binary");
run("Create Selection");
roiManager("Add");
run("Fit Spline");
run("Interpolate", "interval=2 smooth adjust");
Roi.getSplineAnchors(x_spline, y_spline);

for(ch=1; ch<=2; ch++)
	{
	selectWindow(sample);
	Stack.setChannel(ch);
	for (i=0; i<x_spline.length; i++)
		{
			makeLine(x_center[0],y_center[0], x_spline[i], y_spline[i]);
			roiManager("Add");
            
            run("Clear Results");
		    profile = getProfile();
			for (k=0; k<profile.length; k++)			
				{setResult("Distance", k, k*pixelWidth);
				 setResult("Intensity (a.u.)", k, profile[k]);
				 setResult("Profile", k, "Profile_"+IJ.pad(i, 3));
				 setResult("Sample", k, sample);
				 setResult("Ch", k, "Ch"+IJ.pad((ch-1), 2));				 				 
				}
			updateResults;
			Plot.create("Profile", "X", "Intensity (a.u.)", profile);
            saveAs("Measurements", path_output+sample+"_Ch"+IJ.pad((ch-1), 2)+"_Plot_Values_"+IJ.pad(i, 3)+".csv");        
			}
	roiManager("Show All");
	roiManager("Save", path_output+sample+"_ch"+IJ.pad((ch-1), 2)+"_AllROIs.zip");
	}