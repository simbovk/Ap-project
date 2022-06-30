package DataBase;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class DataBase {
    private static DataBase instance = null;
    private Map<String , Table> tables;

    private DataBase() throws IOException {
        tables = new HashMap<String,Table>();
        tables.put("Signup" , new Table("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt"));
    }

    public static DataBase getInstance() throws IOException {
        if(instance == null){
            instance = new DataBase();
        }
        return instance;
    }

    public Table getTable(String tableName){
        System.out.println("got table");
        return tables.get(tableName);
    }

}
