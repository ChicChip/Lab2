package lab2;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.sql.Connection;

public class DBConnection {
	private String dbDriver="com.mysql.jdbc.Driver";   
    private String dbUrl="jdbc:mysql://w.rdc.sae.sina.com.cn:3306/app_sjd1997?characterEncoding=utf8";  
    private String dbUser="51l4lzwkwm";  
    private String dbPassword="y23mwhzm3lxyz3103030i20ii1zj30h435xiwhw2";
    DBConnection(){
    	
    }
    
    public Connection ConnectMysql() {
    	Connection connect = null;
    	try {
    		Class.forName(dbDriver);
    	}
    	catch(ClassNotFoundException e){
    		e.printStackTrace();
    	}
    	try {
    		connect = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    	}
    	return connect;
    }
    
    public int Insert(String sql,String ISBN,String Title,int AuthorID,String Publisher,String PublishDate,String Price) {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
    	PreparedStatement add = con.prepareStatement(sql);
    	add.setString(1, ISBN);
    	add.setString(2, Title);
    	add.setInt(3, AuthorID);
    	add.setString(4, Publisher);
    	add.setString(5, PublishDate);
    	add.setString(6, Price);
    	flag = add.executeUpdate();
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    	}
    	return flag;
    }
    public int Insert(String sql,String Name,String Age,String Country) {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	add.setString(1, Name);
        	add.setString(2, Age);
        	add.setString(3, Country);
        	flag = add.executeUpdate();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
        	return flag;
    }
    
    public int Delete(String sql,String ISBN) {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
    		PreparedStatement add = con.prepareStatement(sql);
        	add.setString(1, ISBN);
        	flag = add.executeUpdate();
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    	}
    	return flag;
    }
    
    public int Update(String sql,String x,String y) {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	if(!x.equals("")) {
        		add.setString(1, x);
        		add.setString(2, y);
            }
        	else
        		add.setString(1, y);
        	flag = add.executeUpdate();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
        	return flag;
    }
    
    public List<String> Select(String sql,String x){
    	List<String> SelResult = new LinkedList<String>();
    	Connection con = ConnectMysql();
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	if (!x.equals(""))
        	    add.setString(1, x);
        	ResultSet rs = add.executeQuery();
        	while(rs.next())  
            {  
                for(int i = 1;i<=rs.getMetaData().getColumnCount();i++){
                SelResult.add(rs.getString(i));}
            }  
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	return SelResult;
    }
}
