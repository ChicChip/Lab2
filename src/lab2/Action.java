package lab2;

import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class Action {
	ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
    private String ISBN;
    private String Title;
    private String AuthorID;
    private String Publisher;
    private String PublishDate;
    private String Price;
    private String Name;
    private String Age;
    private String Country;
    private String result;
    public String getResult() {
		return result;
	}
	public void setresult(String result) {
		this.result = result;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getAuthorID() {
		return AuthorID;
	}
	public void setAuthorID(String authorID) {
		AuthorID = authorID;
	}
	public String getPublisher() {
		return Publisher;
	}
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	public String getPublishDate() {
		return PublishDate;
	}
	public void setPublishDate(String publishDate) {
		PublishDate = publishDate;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String gotoUpdate() {
		return "Success";
	}
	public String Query() {
		List<String> res = new LinkedList<String>();
		String sql="select * from Author where Name=?";
		DBConnection con = new DBConnection();
		if(Name.equals("")) {
			result="作者不能为空";
			return "Fail";
		}
		res = con.Select(sql, Name);
		if(res.size()==0){
			result="作者不存在";
			return "Fail";
		}
		else {
			AuthorID=res.get(0);
			sql = "select Title from Book where AuthorID=?";
			res.clear();
			res = con.Select(sql,AuthorID.toString());
			if(res.size()==0) {
				result="此作者还未有书记录，但已存在";
				return "Fail";
			}
			else {
				session.setAttribute("book", res);
			    return "Success";
			}
		}
	}
	public String addBook() {
		List<String> res = new LinkedList<String>();
		DBConnection con = new DBConnection();
		String sql = "select AuthorID from Author where Name=?";
		String sql1 = "insert into Book(ISBN,Title,AuthorID,Publisher,PublishDate,Price) values(?,?,?,?,?,?)";
	    if(!Name.equals(""))
		    res = con.Select(sql, Name);
		if(res.size()==0 && !Name.equals("")) {
			con.Insert("insert into Author(AuthorID,Name,Age,Country) values(null,?,?,?)", Name, "?", "?");
			res.clear();
			res = con.Select(sql, Name);
			con.Insert(sql1, ISBN, Title, Integer.parseInt(res.get(0)), Publisher, PublishDate, Price);
			return "Add";
		}
		else {
			if(Name.equals("")) {
				result = "作者不可为空";
				return "Fail";
			}
			if(ISBN.isEmpty()&&Title.isEmpty()&&Publisher.isEmpty()&&PublishDate.isEmpty()&&Price.isEmpty()) {
				result = "除作者外，至少再添一项";
				return "Fail";
			}
			if(con.Insert(sql1, ISBN, Title, Integer.parseInt(res.get(0)), Publisher, PublishDate, Price)==1) {
				result="";
			    return "Success";
			}
			else { 
				result="";
				return "Fail";
			}
		}
	}
	public String addAuthor(){
		DBConnection con = new DBConnection();
		String sql = "insert into Author(AuthorID,Name,Age,Country) values(null,?,?,?)";
		if(Name.equals("")) {
			result = "名字不能为空";
			return "Fail";
		}
		if(con.Insert(sql, Name, Age, Country)==1) {
			result="现在可去修改为本作者";
			return "Success";
		}
		else {
            result="";
            return "Fail";
		}
	}
	public String upAuthor(){
		DBConnection con = new DBConnection();
		//String sql = "insert into Author(AuthorID,Name,Age,Country) values(null,?,?,?)";
		String sql="update Author set Age=? where Name=?";
		String sql1="update Author set Country=? where Name=?";
		int flag=0,count=0;
		if(!Age.equals("")) {
			flag+=con.Update(sql, Age, Name);
			count++;
		}
	    if(!Country.equals("")) {
			flag+=con.Update(sql1, Country, Name);
			count++;
		}
	    if(count==flag && flag!=0) {
	    	result = "书本同时加入成功";
	    	return "Success";
	    }
	    else {
	    	result="";
	    	return "Fail";
	    }
	}
	public String Show() {
		List<String> res = new LinkedList<String>();
		List<String> res1 = new LinkedList<String>();
		DBConnection con = new DBConnection();
		String sql="select * from Book where Title=?";
		res = con.Select(sql, Title);
		AuthorID=res.get(2);
		session.setAttribute("bookinf", res);
		String sql1 = "select * from Author where AuthorID=?";
		res1 =  con.Select(sql1,AuthorID.toString());
		session.setAttribute("authorinf", res1);
		return "Success"; 
	}
	public String showAll() {
		List<String> res = new LinkedList<String>();
		DBConnection con = new DBConnection();
		String sql="select * from Book";
		res = con.Select(sql,"");
		if(res.size()!=0) {
		    session.setAttribute("bookinf", res);
		    return "Success";
		}
		else {
			result="";
			return "Fail";
		}
	}
	public String bookDelete() {
		DBConnection con = new DBConnection();
		String sql = "delete from Book where ISBN=?";
		if(con.Delete(sql, ISBN)==1) {
			result="";
			return "Success";
		}
		else {
			result="";
			return "Fail";
		}
	}
	public String Update() {
		DBConnection con = new DBConnection();
		List<String> res = new LinkedList<String>();
		int count = 0,flag=0;
		String sql0 = "update Book set Publisher=? where ISBN=?";
		String sql1 = "update Book set PublishDate=? where ISBN=?";
		String sql2 = "update Book set Price=? where ISBN=?";
		String sql3 = "";
		String sql4 = "select AuthorID from Author where Name=?";
		if(!Name.equals("")) {
		    res = con.Select(sql4, Name);
		    if(res.size()==0)
			    return "Add";
		    else
				sql3 += ("update Book set AuthorID="+ res.get(0) +" where ISBN=?");
		}
	    if(!Publisher.equals("")) {
			flag+=con.Update(sql0, Publisher, ISBN);
			count++;
		}
	    if(!PublishDate.equals("")) {
			flag+=con.Update(sql1, PublishDate, ISBN);
			count++;
		}
	    if(!Price.equals("")) {
			flag+=con.Update(sql2, Price, ISBN);
			count++;
		}
	    if(!sql3.equals("")) {
			flag+=con.Update(sql3, "", ISBN);
			count++;
		}	
	    if(count==flag && flag!=0) {
	    	result="";
	    	return "Success";
	    }
	    else {
	    	result="";
	    	return "Fail";
	    }
	}
}