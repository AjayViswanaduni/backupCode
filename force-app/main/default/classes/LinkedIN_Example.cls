public class LinkedIN_Example {
     public String clientId  {set;get;} 
     public String clientSecret  {set;get;} 
     public String redirectUrl  {set;get;} 
     public String code  {set;get;} 
     public String accessToken {set;get;} 
     public String state  {set;get;} 
    public String scope {set;get;}
    public string result{set;get;}
     public LinkedIN_Example(){
        redirecturl = 'https://oscarit-5b-dev-ed--c.visualforce.com/apex/LinkedIN_Response';
        
    }
    public PageReference requestCode(){
       String url = 'https://www.linkedin.com/oauth/v2/authorization';
        url = url+'?response_type=code';
        url = url+'&client_id='+clientId;
        url = url+'&redirect_uri='+redirectUrl;
        url = url+'&state='+state;
        url = url+'&scope=r_liteprofile%20r_emailaddress%20';
        PageReference p = new PageReference(url);
        return p; 
        
    }
}