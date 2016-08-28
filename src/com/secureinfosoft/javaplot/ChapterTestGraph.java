package com.secureinfosoft.javaplot;

import javax.swing.JFrame;

import org.math.plot.Plot2DPanel;
import javax.swing.*;

import javax.swing.*;

import org.math.plot.*;

public class ChapterTestGraph {

	
	public static void crategraph(double x[],double y[])
	{
		Plot2DPanel plot = new Plot2DPanel();

		// define the legend position
		plot.addLegend("SOUTH");

		// add a line plot to the PlotPanel
		plot.addLinePlot("myplot", y);//Plot("my plot", x, y);

		// put the PlotPanel in a JFrame like a JPanel
		JFrame frame = new JFrame("a plot panel");
		frame.setSize(900, 900);
		frame.setContentPane(plot);
		frame.setVisible(true);
	}
	
}
