package model;

public class Truyen {
    private int id;
    private String name;
    private String image;
    private String author;
    private String publishedBy;
    private String description;
    private int cateID;

    public Truyen() {
    }
    
    public Truyen(int id, String name, String image, String author, String publishedBy, String description, int cateID) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.author = author;
        this.publishedBy = publishedBy;
        this.description = description;
        this.cateID = cateID;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublishedBy() {
        return publishedBy;
    }

    public void setPublishedBy(String publishedBy) {
        this.publishedBy = publishedBy;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }
    
    @Override
    public String toString() {
        return "Truyen{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", author='" + author + '\'' +
                ", publishedBy='" + publishedBy + '\'' +
                ", description='" + description + '\'' +
                ", cateID=" + cateID +
                '}';
    }
} 
