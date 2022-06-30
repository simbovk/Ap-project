package utils;

import java.util.HashMap;
import java.util.Map;

public class Convertor {
    public static Map<String , String> stringToMapSignUp(String str){
        String[] info = str.split("/");
        System.out.println(info.length);
        Map<String , String> signUpInfo = new HashMap<>();
        System.out.println(info[1]);
        System.out.println(info[2]);
        signUpInfo.put("firstName" , info[0]);
        signUpInfo.put("lastName" , info[1]);
        signUpInfo.put("password" , info[2]);
        signUpInfo.put("phoneNumber" , info[3]);
        signUpInfo.put("email" , info[4]);
        return signUpInfo;
    }

    public static String mapToStringSignUp(Map<String , String> map){
        int counter = 0;
        StringBuilder stringBuilder = new StringBuilder();

        for(Map.Entry<String , String> entry:map.entrySet()){
            stringBuilder.append(String.format("%s" , entry.getValue()));
            if(counter < 4){
                stringBuilder.append("/");
            }
            counter++;
        }
        stringBuilder.append("\n");

        return stringBuilder.toString();
    }

    public static Map<String , String> stringToMapLogin(String str){
        String[] info = str.split("/");
        Map<String , String> signUpInfo = new HashMap<>();
        signUpInfo.put("password" , info[1]);
        signUpInfo.put("phoneNumber" , info[0]);

        return signUpInfo;
    }

    public static Map<String , String> stringToMapEdit(String str){
        String[] info = str.split("/");
        Map<String , String> signUpInfo = new HashMap<>();
        signUpInfo.put("firstName" , info[0]);
        signUpInfo.put("lastName" , info[1]);
        signUpInfo.put("phoneNumber" , info[2]);
        signUpInfo.put("email" , info[3]);
        signUpInfo.put("password" , info[4]);
        return signUpInfo;
    }

}
