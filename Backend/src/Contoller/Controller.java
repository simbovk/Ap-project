package Contoller;

import DataBase.DataBase;
import utils.Convertor;
import utils.Equal;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

import static java.lang.String.format;

public class Controller {
    private void signUp(Map<String, String> data){
        try {
            DataBase.getInstance().getTable("Signup").insert(data , "C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt");
        } catch (IOException e){
            e.printStackTrace();
        }
    }

    public boolean run(String command , String data) throws IOException {
        switch (command){
            case "Signup":
                Map<String , String> dataMapSignIn = Convertor.stringToMapSignUp(data);
                signUp(dataMapSignIn);break;
            case "Login":
                Map<String , String> dataMapLogin = Convertor.stringToMapLogin(data);
                for (int i = 0; i < dataMapLogin.size(); i++) {
                    System.out.println(dataMapLogin.keySet().toArray()[i] + ":" + dataMapLogin.get(dataMapLogin.keySet().toArray()[i]));
                }
                return login(dataMapLogin);
            case "EditProfile":
                Map<String , String> dataMapEdit = Convertor.stringToMapEdit(data);
                return editProfile(dataMapEdit);
        }

        return false;

    }

    public String accountInfo(String data) throws IOException {
        String result = "";
        ArrayList<Map<String , String>> arrayList = DataBase.getInstance().getTable("Signup").get();
        for (Map<String, String> map : arrayList) {
            for (int j = 0; j < map.size(); j++) {
                if (data.equals(map.get("phoneNumber"))) {
                    Collection<String> values = map.values();
                    String userName = values.toArray()[0] + " " + values.toArray()[1];
                    result = format("%s/%s/%s", userName, values.toArray()[3], values.toArray()[4]);
                }
            }
        }
        return result;
    }

    private boolean login(Map<String, String> data) throws IOException {
        if(checkDuplicateAcc(data , DataBase.getInstance().getTable("Signup").get()))
            return true;
        return false;
    }

    private boolean checkDuplicateAcc(Map<String , String> map , ArrayList<Map<String , String>> arrayList){
        for (Map<String, String> StringMap : arrayList) {
            if (Equal.mapCheck(StringMap, map))
                return true;
        }
        return false;
    }

    private boolean editProfile(Map<String , String> map) throws IOException {
        boolean flag = false;
        if(checkDuplicateAcc(map , DataBase.getInstance().getTable("Signup").get())){
            List<String> list = Files.readAllLines(Paths.get("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt"));
            for (int i = 0; i < list.size(); i++) {
                if (!list.get(i).equals("")) {
                    Map<String, String> accInfo = Convertor.stringToMapSignUp(list.get(i));
                    if (accInfo.get("password").equals(map.get("password"))) {
                        flag = true;
                        String[] info = list.get(i).split("/");
                        info[0] = map.get("firstName");
                        info[1] = map.get("lastName");
                        info[3] = map.get("phoneNumber");
                        info[4] = map.get("email");
                        list.set(i, format("%s/%s/%s/%s/%s", info[0], info[1], info[2], info[3], info[4]));
                    }
                }
                if (flag) {
                    FileWriter fileWriter = new FileWriter("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt");
                    fileWriter.write("");
                    FileWriter fileWriterEdited = new FileWriter("C:\\Users\\Lenovo\\Desktop\\ap_project\\Backend\\src\\Data\\signup.txt", true);
                    for (String s : list) {
                        fileWriterEdited.write(s + "\n");
                        fileWriterEdited.flush();
                    }
                    fileWriterEdited.close();
                    fileWriter.close();
                    return true;
                }
            }
        }
        return false;
    }

}
