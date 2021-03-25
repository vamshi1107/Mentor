package com.mentor;

import java.util.ArrayList;

public class catMain {

	public ArrayList<category> getCat(){
		ArrayList<category> al=new ArrayList<category>();
		al.add(new category("Web","https://www.elegantthemes.com/blog/wp-content/uploads/2018/12/top11.png"));
		al.add(new category("Python","https://analyticsindiamag.com/wp-content/uploads/2019/10/python-1.jpg"));
		al.add(new category("Java","https://images.idgesg.net/images/article/2019/05/java_binary_code_gears_programming_coding_development_by_bluebay2014_gettyimages-1040871468_2400x1600-100795798-large.jpg"));
		al.add(new category("Data science","https://i1.wp.com/thedatascientist.com/wp-content/uploads/2019/06/what-is-data-science.jpg?fit=1920%2C1080&ssl=1"));
		al.add(new category("Career","https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs2/130802898/original/2c183568b2abbbc7059173422150805cd5f7adc1/give-you-career-advice-job-interview-and-resume-tips.png"));
		al.add(new category("Maths","https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/120741054/original/f301801c6cc73cad6fe4b6f39d093612a63bb9e2/help-you-in-mathematics-discrete-maths-algebra-calculus.png"));
		return al;
	}
}
