package DataBase;

import utils.Convertor;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Table {
    private String path;
    private  List<String> listOfPath;
    {
        listOfPath = Files.readAllLines(Paths.get("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\path.txt"));
    }
    private ArrayList<Map<String , String>> accounts = new ArrayList<>();

    public Table(String path) throws IOException {
        FileWriter fileWriter = new FileWriter("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\path.txt");
        fileWriter.write("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt");
        this.path = path;
    }

    public void insert(Map<String , String> map , String path) throws IOException {
        FileWriter fileWriter = new FileWriter(path , true);
        fileWriter.write(Convertor.mapToStringSignUp(map) + "\n");
        fileWriter.flush();
        System.out.println("writed in file");
        fileWriter.close();
    }

    public String getPath() throws IOException {
        refreshFile("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt");
        return path;
    }

    public ArrayList<Map<String , String>> get() throws IOException {
        refreshFile("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt");
        return accounts;
    }

    public void refreshFile(String path) throws IOException {
        ArrayList<Map<String , String>> arrayList = new ArrayList<>();
        List<String> list = Files.readAllLines(Paths.get(path));
        for (String s : list) {
            System.out.println(s);
            if(!s.equals(""))
                arrayList.add(Convertor.stringToMapSignUp(s));
        }
        for (int i = 0; i < arrayList.size(); i++) {
            for (String key : arrayList.get(i).keySet()){
                System.out.println(key + ":" + arrayList.get(i).get(key));
            }

        }
        accounts = arrayList;
    }

    private String getPathFromList(String command){
        return "";
    }

}
