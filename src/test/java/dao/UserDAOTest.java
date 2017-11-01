package dao;

import org.junit.Test;

import static org.junit.Assert.*;

public class UserDAOTest {

    @Test
    public void manageUserLoginTest() {
        assertEquals("Vlad",new UserDAO().login("Vlad","Hnes").getFirstName());
    }

    @Test
    public void manageUserRegistryTet(){
        assertEquals(false, new UserDAO().signUp("Vlad","Hnes", "Vlad",
                "Hnes"));
    }

}