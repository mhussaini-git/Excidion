package Model;

import java.sql.DriverManager;
import java.awt.List;
import java.io.IOException;
import java.sql.Connection;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Statement;
import java.util.ArrayList;

public class SelectRecords {  
   
    private Connection connect() {  
        // SQLite connection string  
        String url = "jdbc:sqlite:phone.db";  
        Connection conn = null;  
        try {  
            conn = DriverManager.getConnection(url);  
        } catch (SQLException e) {  
            System.out.println(e.getMessage());  
        }  
        return conn;  
    }  
   
  
    public void selectAll(){  
        String sql = "SELECT * FROM phone_nbrs";  
          
        
        try {  
            Connection conn = this.connect();  
            Statement stmt  = conn.createStatement();  
            ResultSet rs    = stmt.executeQuery(sql);  
            
            
            while (rs.next()) {  
               
            	System.out.println(rs.getString("first_name") +  "\t" +   
                                   rs.getString("last_name") + "\t" +  
                                   rs.getString("phone"));  
            }
       
           
        } catch (SQLException e) {  
            System.out.println(e.getMessage());  
        }
		
      
    }    
    
    public static void main(String[] args) {
    	
    	SelectRecords sr = new SelectRecords();
    	sr.selectAll();
    }
   
}  
