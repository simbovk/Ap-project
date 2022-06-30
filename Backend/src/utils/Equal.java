package utils;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

public class Equal {
    public static boolean mapCheck(Map<String , String> map1 , Map<String , String> map2){
        Set<String> map1Key = map1.keySet();
        Set<String> map2Key = map2.keySet();

        for (String key1 : map1Key){
            for (String key2 : map2Key){
                if(key1.equals(key2)){
                    if(map1.get(key1).equals(map2.get(key2))){
                        System.out.println("mapcheck:true");
                        return true;
                    }
                }
            }
        }
        System.out.println("mapcheck:false");
        return false;

    }

}
