public without sharing class downLoadLogs{


public string debugLogString{get;set;}
public pageReference downLoadlogsBYClick(){

string apexLogId=ApexPages.currentPage().getParameters().get('id');
string selectedOrg=ApexPages.currentPage().getParameters().get('selectedOrg');
String endpoint='https://login.salesforce.com/services/oauth2/token';
 Map<string,testNamespaceSi__Organizations__c> orgDetailMap = new Map<string,testNamespaceSi__Organizations__c>();
 for(testNamespaceSi__Organizations__c org : [select Id,testNamespaceSi__OrganizationId__c,testNamespaceSi__MyDomain__c, testNamespaceSi__Org_Name__c, testNamespaceSi__CLIENTSECRET__c, testNamespaceSi__ConsumerKey__c, testNamespaceSi__Password__c, testNamespaceSi__UserName__c from testNamespaceSi__Organizations__c])
 {
  orgDetailMap.put(org.testNamespaceSi__OrganizationId__c, org);
 }


String domainUrl = orgDetailMap.get(selectedOrg).testNamespaceSi__MyDomain__c;
String username = orgDetailMap.get(selectedOrg).testNamespaceSi__UserName__c;
String password = orgDetailMap.get(selectedOrg).testNamespaceSi__Password__c;
string client_id = orgDetailMap.get(selectedOrg).testNamespaceSi__ConsumerKey__c;
string client_secret = orgDetailMap.get(selectedOrg).testNamespaceSi__CLIENTSECRET__c;
string logInString='grant_type=password&client_id='+client_id+'&client_secret='+client_secret+'&username='+username+'&password='+password;
Httprequest req1 = new HttpRequest();    
req1.setMethod('POST');    
req1.setHeader('Content-Type','application/x-www-form-urlencoded');

req1.setBody(logInString);    
req1.setEndpoint(endpoint);  
system.debug(req1);       
Http http = new Http();
HttpResponse res1;       

try {
    res1 = http.send(req1);                
    system.debug('body:'+res1.getBody());                
}catch(system.CalloutException e){            
    system.debug('error'+e);
}

string loginResult = res1.getBody();
Map<String, Object> loginsessionString = 
   (Map<String, Object>)
      JSON.deserializeUntyped(loginResult);
      system.debug(loginsessionString);
Http hR = new Http();
HttpRequest req = new HttpRequest();
req.setHeader('Authorization', 'Bearer ' + loginsessionString.get('access_token'));
//req.setHeader('Authorization', 'Bearer ' + sessionId);
req.setHeader('Content-Type', 'application/json');


req.setEndpoint(domainUrl+'/services/data/v40.0/tooling/sobjects/ApexLog/' + apexLogId+'/Body');
req.setMethod('GET');
HttpResponse res = hR.send(req);
string resForQuery = res.getBody();
system.debug(resForQuery);
debugLogString=resForQuery;


return Null;

}





}