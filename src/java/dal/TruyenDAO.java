package dal;

import dal.MyDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Chapter;
import model.Library;
import model.Truyen;

public class TruyenDAO extends MyDAO {

//    public List<Truyen> getTruyens() {
//        List<Truyen> truyens = new ArrayList<>();
//        String sql = "SELECT * FROM product where name like'%De%"; // Câu lệnh SQL để lấy dữ liệu từ bảng Truyen
//        try {
//            ps = con.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                // Lấy thông tin từ cơ sở dữ liệu
//                int id = rs.getInt("id");
//                String name = rs.getString("name");
//                String image = rs.getString("image");
//                String author = rs.getString("Author");
//                String publishedBy = rs.getString("PublishedBy");
//                String description = rs.getString("description");
//                int cateID = rs.getInt("cateID");
//
//                // Tạo đối tượng Truyen từ thông tin lấy được
//                Truyen truyen = new Truyen(id, name, image, author, publishedBy, description, cateID);
//                // Thêm đối tượng Truyen vào danh sách truyens
//                truyens.add(truyen);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace(); // In ra lỗi nếu có
//        }
//        return truyens;
//    }
    
    public List<Truyen> getTruyens() {
        List<Truyen> truyens = new ArrayList<>();
        String sql = "SELECT * FROM product"; // Câu lệnh SQL để lấy dữ liệu từ bảng Truyen
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Lấy thông tin từ cơ sở dữ liệu
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String image = rs.getString("image");
                String author = rs.getString("Author");
                String publishedBy = rs.getString("PublishedBy");
                String description = rs.getString("description");
                int cateID = rs.getInt("cateID");

                // Tạo đối tượng Truyen từ thông tin lấy được
                Truyen truyen = new Truyen(id, name, image, author, publishedBy, description, cateID);
                // Thêm đối tượng Truyen vào danh sách truyens
                truyens.add(truyen);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
        return truyens;
    }
    
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    
        public Truyen getTruyensByID(String id) {
    String sql = "SELECT * FROM product WHERE id = ?";
    try {
        ps = con.prepareStatement(sql);
        ps.setString(1, id);
        rs = ps.executeQuery();
        if (rs.next()) {
            int truyenId = rs.getInt("id");
            String name = rs.getString("name");
            String image = rs.getString("image");
            String author = rs.getString("Author");
            String publishedBy = rs.getString("PublishedBy");
            String description = rs.getString("description");
            int cateID = rs.getInt("cateID");

            // Assuming Truyen is your custom class
            Truyen truyen = new Truyen(truyenId, name, image, author, publishedBy, description, cateID);
            return truyen;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return null;
}
        
         public List<Chapter> getChapterByProductID(String ProductID) {
        List<Chapter> chapters = new ArrayList<>();
        String sql = "SELECT * FROM Chapter where ProductID = ?"; // Câu lệnh SQL để lấy dữ liệu từ bảng Truyen
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, ProductID);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Lấy thông tin từ cơ sở dữ liệu
                int idchapter = rs.getInt("idchapter");
                String namechapter = rs.getString("namechapter");
                String descriptionchapter = rs.getString("descriptionchapter");
                int productID = rs.getInt("ProductID");

                // Create a Chapter object from the retrieved information
                Chapter chapter = new Chapter(idchapter, namechapter, descriptionchapter, productID);
                // Add the Chapter object to the list of chapters
                chapters.add(chapter);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
        return chapters;
    }

    public Chapter getChapterByIDChapter(String idchapter) {
        String sql = "SELECT * FROM Chapter where ProductID = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, idchapter);
            rs = ps.executeQuery();
            if (rs.next()) {
                int chapterId = rs.getInt("idchapter");
                String namechapter = rs.getString("namechapter");
                String descriptionchapter = rs.getString("descriptionchapter");
                int productID = rs.getInt("ProductID");
                Chapter chapter = new Chapter(chapterId, namechapter, descriptionchapter, productID);
                return chapter;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
        return null;
    }
        
        public List<Truyen> searchByName(String txtSearch) {
    List<Truyen> list = new ArrayList<>();
    String query = "SELECT * FROM product WHERE [name] LIKE ?";
    
    try (PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setString(1, "%" + txtSearch + "%");

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                list.add(new Truyen(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("Author"),
                        rs.getString("PublishedBy"),
                        rs.getString("description"),
                        rs.getInt("cateID")
                ));
            }
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Log or print the exception for debugging
    }
    
    return list;
}


    public Account login(String user, String pass) {
        String query = "select * from account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where [user] = ?\n";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass) {
        String query = "insert into account\n"
                + "values(?,?,0)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

//    public Truyen getTruyenByID(int id) {
//    String query = "SELECT * FROM product WHERE id = ?";
//    try (PreparedStatement ps = connection.prepareStatement(query)) {
//        ps.setInt(1, id);
//        try (ResultSet rs = ps.executeQuery()) {
//            if (rs.next()) {
//                int truyenId = rs.getInt("id");
//                String name = rs.getString("name");
//                String image = rs.getString("image");
//                String author = rs.getString("author");
//                String publishedBy = rs.getString("publishedBy");
//                String description = rs.getString("description");
//                int cateID = rs.getInt("cateID");
//
//                return new Truyen(truyenId, name, image, author, publishedBy, description, cateID);
//            }
//        }
//    } catch (SQLException e) {
//        e.printStackTrace(); // Handle exceptions properly in a real application
//    }
//    return null;
//}

   public List<Library> getLibrary() {
    List<Library> libraryList = new ArrayList<>();
    String sql = "SELECT * FROM Library"; // SQL query to retrieve data from the Library table
    try {
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            // Retrieve information from the database
            int accountID = rs.getInt("AccountID");
            int productID = rs.getInt("ProductID");

            // Create a Library object from the retrieved information
            Library library = new Library(accountID, productID);

            // Add the Library object to the list
            libraryList.add(library);
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Print the error if it occurs
    }
    return libraryList;
}

    
    public List<Truyen> getLibraryByID(int id) {
    List<Truyen> list = new ArrayList<>();
    String query = "SELECT * FROM library WHERE AccountID = ?";
    try (PreparedStatement ps = connection.prepareStatement(query)) {
        ps.setInt(1, id);
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                // Assuming you have a method to retrieve a Truyen object from the product ID
                Truyen truyen = getTruyensByID(rs.getString("ProductID"));
                if (truyen != null) {
                    list.add(truyen);
                }
            }
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Handle exceptions properly in a real application
    }
    return list;
}
    
    public void insertLibrary(String AccountID, String productID) {
        String query = "insert into library\n"
                + "values(?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ps.setString(1, AccountID);
            ps.setString(2, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
   public boolean checkInsertLibrary(String accountID, String productID) {
    String query = "SELECT * FROM library WHERE AccountID = ? AND ProductID = ?";
    try {
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, accountID);
        ps.setString(2, productID);
        ResultSet rs = ps.executeQuery();
        
        // If there is at least one row in the result set, the record exists
        return rs.next();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false; // Return false if an exception occurs or the record doesn't exist
}


    public void deleteProductLibrary(String AccountID, String productID) {
    String query = "DELETE FROM library\n" + "WHERE AccountID = ? AND ProductID = ?";
    try {
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, AccountID);
        ps.setString(2, productID);
        // Use executeUpdate for DELETE operation
        int rowsAffected = ps.executeUpdate();
        // Handle success or provide feedback
    } catch (Exception e) {
        e.printStackTrace(); // Handle exceptions properly in a real application
    }
}
    
    public void deleteProductID(String productID) {
        String query = "delete from library\n"
                + "where productID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, productID);
            ResultSet rs = ps.executeQuery();
            
        } catch (Exception e) {
        }
    }
    
    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, pid);
            ResultSet rs = ps.executeQuery();
            
        } catch (Exception e) {
        }
    }

public void insertProduct( String name, String image, String author, String publishedBy, String description, String cateID) {
    String query = "INSERT INTO [dbo].[product] \n"
            + "([name], [image], [author], [publishedBy], [description], [cateID])\n"
            + "VALUES(?,?,?,?,?,?)";
    try {
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2, image);
        ps.setString(3, author);
        ps.setString(4, publishedBy);
        ps.setString(5, description);
        ps.setString(6, cateID);
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle exceptions
    }
}

public void editProduct(String id, String name, String image, String author, String publishedBy, String description, String cateID) {
    String query = "UPDATE product\n"
            + "SET [name] = ?,\n"
            + "[image] = ?,\n"
            + "author = ?,\n"
            + "publishedBy = ?,\n"
            + "[description] = ?,\n"
            + "cateID = ?\n"
            + "WHERE id = ?";
    try {
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2, image);
        ps.setString(3, author);
        ps.setString(4, publishedBy);
        ps.setString(5, description);
        ps.setString(6, cateID);
        ps.setString(7, id);  // Use the correct parameter index
        ps.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle exceptions
    }
}



    public static void main(String[] args) {
    TruyenDAO dao = new TruyenDAO();
    List<Truyen> listC = dao.getTruyens();

        for (Truyen category : listC) {
            System.out.println(category);
        }
}

}
