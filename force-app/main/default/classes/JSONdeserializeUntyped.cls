public class JSONdeserializeUntyped {
    public Map<String,Object> resultMap{set;get;}
    
    public JSONdeserializeUntyped(){
        String jsonString = '{"Name":"Rohit","Phone":"920392049","Team":"MumbaiIndians"}';
        resultMap =(Map<String,Object>)System.JSON.deserializeUntyped(jsonString);
    }
}