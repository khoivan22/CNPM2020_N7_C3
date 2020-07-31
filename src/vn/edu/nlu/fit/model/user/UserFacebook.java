package vn.edu.nlu.fit.model.user;

public class UserFacebook {
    private String user_name, id;
    public UserFacebook() {
    }
    public UserFacebook(String user_name, String id) {
        this.user_name = user_name;
        this.id = id;
             }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
