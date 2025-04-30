package jdbcc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
public class EmpDao {
JdbcTemplate template;
public void setTemplate(JdbcTemplate template) {
	this.template=template;
}
public int save(Emp p) {
	String sql="insert into Emp2(name,salary,designation)values('"+p.getName()+"','"+p.getSalary()+"','"+p.getDesignation()+"')";
	return template.update(sql);
}
public int update(Emp p) {
	String sql="update Emp2 set name=?,salary=?,designation=? where id=?";
	return template.update(sql,p.getName(),p.getSalary(),p.getDesignation(),p.getId());
}
public int delete(int id) {
	String sql="delete from Emp2 where id="+id+"";
	return template.update(sql);
}

public List <Emp>getEmployees(){
	return template.query("select*from Emp2", new RowMapper<Emp>() {
		public Emp mapRow(ResultSet rs,int row)throws SQLException{
			Emp e=new Emp();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setSalary(rs.getInt(3));
			e.setDesignation(rs.getString(4));
			return e;
		}
	});
	
}
public Emp getEmpById(int id) {
	String sql="select*from Emp2 where id=?";
	return template.queryForObject(sql,new BeanPropertyRowMapper<Emp>(Emp.class),id);
}

}
