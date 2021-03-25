package com.mentor;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;


public class sqlMain {

	
public  ArrayList<Mentor> GetAll() throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users;");
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		
		list.add(m);
	}
	con.close();
	return list;
}

public  ArrayList<Mentor> GetMentor() throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users where mentor like 'true' ;");
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		
		list.add(m);
	}
	con.close();
	return list;
}

public  ArrayList<Mentor> GetPros() throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users;");
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		
		list.add(m);
	}
	con.close();
	return list;
}

public  ArrayList<Mentor> GetStu() throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users where mentor like 'false' ;");
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		
		list.add(m);
	}
	con.close();
	return list;
}

public  Mentor Validate(String email,String pass) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users where  email like "+"'"+email+"'"+"and password like '"+pass+"'"+";");
	Mentor m=null;
	while(res.next()) {
		m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
	}
	con.close();
	return m;
}
public ArrayList<Mentor>  GetOneMentor(String email) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users where  email like "+"'"+email+"'"+"or name like '%"+email+"%' and mentor like 'true'"+";");
	
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		list.add(m);
	}
	con.close();
	return list;
}
public int  CreateUser(Mentor m) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	PreparedStatement res=(PreparedStatement) con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?,?)");
	res.setString(1,m.getemail());
	res.setString(2,m.getPass());
	res.setString(3,m.getName());
	res.setString(4,m.getProfession());
	res.setString(5,m.getCompany());
	res.setString(6,m.getCategory());
	res.setString(7,m.getSocial());
	res.setString(8,m.getLang());
	res.setString(9,m.getImage());
	res.setString(10,m.getAbout());
	res.setString(11,m.getMentor());
	res.setString(12,m.getCalendly());
	return res.executeUpdate();
}

String check(String s) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM users where  email like "+"'"+s+"'"+";");
	int i=0;
	while(res.next()) {
	  i++;
	}
	con.close();
    if(i==0) {
    	return "false";
    }
    else {
    	return "true";
    }
}

public ArrayList<Mentor>  GetByCategory(String cat) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	String sql="";
	if(cat.equals("all")) {
		sql="SELECT * FROM users where  mentor like 'true'"+";";
	}
	else {
	sql="SELECT * FROM users where  category like "+"'%"+cat+"%' and mentor like 'true'"+";";
	}
	ResultSet res=smt.executeQuery(sql);
	
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		list.add(m);
	}
	con.close();
	return list;
}

int addLink(String mentor,String mentee) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("SELECT * FROM links where  mentor like "+"'"+mentor+"' and mentee like "+"'"+mentee+"' ;");
	int k=0;
	while(res.next()) {
		k++;
	}
	if(k>0) {
		con.close();
		return 1;
	}
	else {
	PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into links values(?,?)");
	ps.setString(1,mentor);
	ps.setString(2,mentee);
	return ps.executeUpdate();
	}
}

public ArrayList<Mentor>  GetLinked(String email,String what) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	String one;
	String two;
	System.out.println();
	if(what.equals("true")) {
		one="mentee";
		two="mentor";
	}
	else {
		one="mentor";
		two="mentee";
	}
	String sql="SELECT * FROM users where  email in ( select "+one+" from links where "+two+" like '"+email+"');";
	ResultSet res=smt.executeQuery(sql);
	
	while(res.next()) {
		Mentor m=new Mentor();
		m.setemail(res.getString(1));
		m.setPass(res.getString(2));
		m.setName(res.getString(3));
		m.setProfession(res.getString(4));
		m.setCompany(res.getString(5));
		m.setCategory(res.getString(6));
		m.setSocial(res.getString(7));
		m.setLang(res.getString(8));
		m.setImage(res.getString(9));
		m.setAbout(res.getString(10));
		m.setMentor(res.getString(11));
		m.setCalendly(res.getString(12));
		list.add(m);
	}
	con.close();
	return list;
}

public Boolean  RemoveLinked(String email,String other,String what) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	String one;
	String two;
	System.out.println();
	if(what.equals("true")) {
		one="mentee";
		two="mentor";
	}
	else {
		one="mentor";
		two="mentee";
	}
	String sql=" delete from links where "+two+" like '"+email+"' and "+one+" like '"+other+"';";
	PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
	
	return ps.execute();
}

public ArrayList<review>  GetReview(String email) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<review> list=new ArrayList<review>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	Statement smt=(Statement) con.createStatement();
	ResultSet res=smt.executeQuery("select u.name,u.email,r2.review,u.mentor from users u inner join review r2 on u.email like r2.user and r2.mentor like "+"'"+email+"' ;");
	
	while(res.next()) {
		list.add(new review(res.getString(1),res.getString(2),res.getString(3),res.getString(4)));
	}
	con.close();
	return list;
}

public int  setReview(sreview r) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	PreparedStatement res=(PreparedStatement) con.prepareStatement("insert into review values(?,?,?)");
	res.setString(1,r.getMentor());
	res.setString(2,r.getUser());
	res.setString(3,r.getRev());
	
	return res.executeUpdate();
}

Boolean updatepass(String email,String pass) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	PreparedStatement ps=(PreparedStatement) con.prepareStatement("update users set password=? where email like ? ");
	ps.setString(1, pass);
	ps.setString(2, email);
	int i=ps.executeUpdate();
	if(i>0) {
		return true;
	}
	else {
		return false;
	}
	
}

Boolean updateDetails(Mentor m) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.jdbc.Driver");
	ArrayList<Mentor> list=new ArrayList<Mentor>();
	Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Mentor?autoReconnect=true&useSSL=false","root","Avk1234.");
	PreparedStatement ps=(PreparedStatement) con
			.prepareStatement("update users set password=?,name=?,profession=?,company=?,category=?,social=?,lang=?,image=?,about=?,mentor=?,calendy=? where email like ? ");
	ps.setString(1, m.getPass());
	ps.setString(2, m.getName());
	ps.setString(3, m.getProfession());
	ps.setString(4, m.getCompany());
	ps.setString(5, m.getCategory());
	ps.setString(6, m.getSocial());
	ps.setString(7, m.getLang());
	ps.setString(8, m.getImage());
	ps.setString(9, m.getAbout());
	ps.setString(10, m.getMentor());
	ps.setString(11, m.getCalendly());
	ps.setString(12, m.getemail());
	int i=ps.executeUpdate();
	if(i>0) {
		return true;
	}
	else {
		return false;
	}
	
}

}


