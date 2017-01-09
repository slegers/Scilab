import java.util.ArrayList;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicInteger;


public class Main {
	static int[][] points;
	public static void main(String[] args) throws FileNotFoundException {
		points = new int[1000000][2];
		Scanner input = new Scanner(new File("resources/Point.txt"));
		input.useDelimiter(",|;");
		
		for (int i = 0; i < 1000000; i++) {
			points[i][0] = Integer.valueOf(input.next().trim());
			points[i][1] = Integer.valueOf(input.next().trim());
		}
		
		input.close();
		
		int dist = (int) Math.ceil(100*shortestDistance(points));
		System.out.println(dist);
	}
	
	public static double shortestDistance(int[][] ps) {
		ArrayList<int[]> list = new ArrayList<>();
		Collections.addAll(list, ps);
		final int[] count = {0};
		final double[] curnt = {Double.MAX_VALUE};
		list.parallelStream().forEach(obj ->{
			count[0]++;
			if(count[0] %1000 == 1)
			{
				System.out.println(count[0]);
			}
			int varI = list.indexOf(obj);
			List<int[]> varInts = list.subList(varI, list.size());
			varInts.parallelStream().forEach(dist -> curnt[0] = Math.min(curnt[0],distance(obj,dist)));
		});
//		for (int j = 0; j < ps.length - 1; j++) {
//			if (j%1000 == 1)
//				System.out.println(j);
//
//			for (int i = j + 1; i < ps.length; i++)
//				current = Math.min(current, distance(ps[j], ps[i]));

		return curnt[0];
	}
	
	public static double distance(int[] p1, int[] p2) {
		return Math.sqrt(Math.pow(p1[0] + p2[0], 2) + Math.pow(p1[1] + p2[1], 2));
	}
}
