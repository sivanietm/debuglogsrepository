public without sharing class SetDebugLogsClass {

public string userId{get;set;}
public DateTime startTime{get;set;}
public DateTime endTime{get;set;}
public string debugLevel{get;set;}
public Event evt{get;set;}
public testNamespaceSi__debugLog_Object__c deBugLog{get;set;}
public string str2{get;set;}
public blob pdfCon{get;set;}
public string dBValue{get;set;}
public string wFValue{get;set;}
public string validValue{get;set;}
public string callValue{get;set;}
public string apexValue{get;set;}
public string profilValue{get;set;}
public string vfValue{get;set;}
public string sysValue{get;set;}
public string waveValue{get;set;}
public string nbaValue{get;set;}
public boolean showdebugInput{get;set;}
public string selectedOrg{get;set;}
Public List<TraceFlag> traceList{get;set;}
Public boolean alReadyTraced{get;set;}
Public boolean newlyCreated{get;set;}
Public List<ApexLog> apexLogList{get;set;}
public string apexLogid{get;set;}
public boolean showDebugLogDeleteMsg{get;set;}
    

public SetDebugLogsClass(){

showdebugInput=true;
alReadyTraced=false;
newlyCreated=false;
traceList= new List<TraceFlag>();
apexLogList= new List<ApexLog>();
evt= new Event();
deBugLog= new testNamespaceSi__debugLog_Object__c();
showDebugLogDeleteMsg=false;
   /* DateTime startDateTime = dateTime.valueOf(startTime);
    DateTime endDateTime = dateTime.valueOf(endTime);
    system.debug(startDateTime);
    system.debug(endDateTime); */
}

public class TraceFlag
{
public string traceFlagId{get;set;}
public String editString{get;set;}
public String delString{get;set;}
public string UserName{get;set;}
public string logType{get;set;}
public string StartDate{get;set;}
public String ExpirationDate{get;set;}
public String DebugLevelName{get;set;}

public TraceFlag(String tFlagId,String U,String l,String s,String e,String d)
{
traceFlagId=tFlagId;
editString='Edit';
delString='Delete';
UserName=u;
logType =l;
StartDate= s;
ExpirationDate =e;
DebugLevelName =d;

}




}

public class ApexLog
{
public string logId{get;set;}
public string DownloadString{get;set;}
public String Application{get;set;}
public string DurationMilliseconds{get;set;}
public string Location{get;set;}
public string LogLength{get;set;}
public String LogUserId{get;set;}
public String Operation{get;set;}
public String Request{get;set;}

public String StartTime{get;set;}

public String Status{get;set;}



public ApexLog(string lId,String a,String d,String l,String logLen,String logUser,string o,string r,string STime,string st )
{
logId=lId;
downLoadString='Download';
Application=a;
DurationMilliseconds=d;
Location =l;
LogLength= logLen;
LogUserId =logUser;
Operation =o;
Request=r;
StartTime=STime;
Status=st;

}




}

public List<SelectOption> getItems() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Debug','Debug'));
            options.add(new SelectOption('None','None'));
            options.add(new SelectOption('Error','Error'));
            options.add(new SelectOption('Warn','Warn'));
            options.add(new SelectOption('Info','Info'));
            
            options.add(new SelectOption('Fine','Fine'));
            options.add(new SelectOption('Finer','Finer'));
            options.add(new SelectOption('Finest','Finest'));
            return options;
        }
public List<SelectOption> getItemsdB() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            
            
            
            options.add(new SelectOption('Finest','Finest'));
            return options;
        }        
public List<SelectOption> getItemsWF() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            options.add(new SelectOption('Error','Error'));
            options.add(new SelectOption('Warn','Warn'));
            
            
            options.add(new SelectOption('Fine','Fine'));
            options.add(new SelectOption('Finer','Finer'));
           
            return options;
         }   
    public List<SelectOption> getItemsValid() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            
          
            
            
            
           
            return options;           
        }
        public List<SelectOption> getItemscallOut() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            options.add(new SelectOption('Error','Error'));
            
            
            
           
            options.add(new SelectOption('Finer','Finer'));
            options.add(new SelectOption('Finest','Finest'));
            return options;
        }
        public List<SelectOption> getItemsapexProfile() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            
            
            
            
           
            options.add(new SelectOption('Fine','Fine'));
            options.add(new SelectOption('Finest','Finest'));
            return options;
        }
        public List<SelectOption> getItemsvfPage() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            
            
            
            
           
            options.add(new SelectOption('Fine','Fine'));
            options.add(new SelectOption('Finer','Finer'));
            return options;
        }
        public List<SelectOption> getItemsSystem() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Debug','Debug'));
            options.add(new SelectOption('None',''));
            
            
            options.add(new SelectOption('Info','Info'));
            
           
            options.add(new SelectOption('Fine','Fine'));
            
            return options;
        }
        public List<SelectOption> getItemsWave() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('Info','Info'));
            options.add(new SelectOption('None','None'));
            options.add(new SelectOption('Error','Error'));
            
            
            
            options.add(new SelectOption('Fine','Fine'));
            options.add(new SelectOption('Finer','Finer'));
            options.add(new SelectOption('Finest','Finest'));
            return options;
        }
   
    public List<SelectOption> getOrgs() {
    
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('',''));
        for(testNamespaceSi__Organizations__c org : [select testNamespaceSi__OrganizationId__c, testNamespaceSi__Org_Name__c from testNamespaceSi__Organizations__c])
        {
            
            options.add(new SelectOption(org.testNamespaceSi__OrganizationId__c,org.testNamespaceSi__Org_Name__c));
            
         }   
            return options;
        }


public pagereference setDebugLogs(){


DateTime startDateTime = dateTime.valueOf(deBugLog.testNamespaceSi__Start_Date_Time__c);
    DateTime endDateTime = dateTime.valueOf(deBugLog.testNamespaceSi__End_Date_Time__c);
    system.debug(startDateTime);
    system.debug(endDateTime); 
 
 
   system.debug('deBugLog.StartDateTime' +deBugLog.testNamespaceSi__Start_Date_Time__c);
   system.debug('deBugLog.EndDateTime' +deBugLog.testNamespaceSi__End_Date_Time__c);
if(selectedOrg==null || selectedOrg=='')
{
ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'Please select an org in which you want to set debug Logs');
ApexPages.addmessage(myMsg);

}   
if(startDateTime>endDateTime){
ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'Start Time cannot be greater than end Time');
ApexPages.addmessage(myMsg);
}
if(startDateTime<system.Now() ){
ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'Start Time  cannot be less than current Time');
ApexPages.addmessage(myMsg);
}
if(endDateTime<system.now()){
ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'End Time  cannot be less than current Time');
ApexPages.addmessage(myMsg);
}
if(startDateTime==endDateTime){
ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, 'Start Time and End Time Cannot be Same');
ApexPages.addmessage(myMsg);
}

else
{
showdebugInput=false;
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


DateTime currentTime = system.now();
string formattedCuttentTime = currentTime.format('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'');
//System.debug('DATETIME:'+dt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\''));

req.setEndpoint(domainUrl+'services/data/v40.0/tooling/query/?q=SELECT+Id,+TracedEntityId,+StartDate,+DebugLevelId,+LogType,+ExpirationDate+from+TraceFlag+where+TracedEntityId=+' +'\'' + userId +'\'' + 'AND+ExpirationDate>'+formattedCuttentTime);
req.setMethod('GET');
HttpResponse res = hR.send(req);
string resForQuery = res.getBody();
system.debug(resForQuery);

JSON2Apex objList = JSON2Apex.parse(resForQuery);
if(Integer.ValueOf(objList.size)>0)
{
 alReadyTraced=true;
 string traceFlagId = objList.records[0].Id;
 string userId = objList.records[0].TracedEntityId;
 string logType1 = objList.records[0].logType;
 string StartDate= objList.records[0].StartDate;
 String ExpirationDate= objList.records[0].ExpirationDate;
 String DebugLevelName= objList.records[0].DebugLevelId;
 traceList.add(new TraceFlag(traceFlagId,userId,logType1,StartDate,ExpirationDate,DebugLevelName));

 
}

if(Integer.ValueOf(objList.size)==0)        
{

string debugLevelName = 'debug'+string.ValueOf(system.Now());
debugLevelName=debugLevelName.replaceAll( '\\s+', '');
debugLevelName=debugLevelName.replaceAll('-' ,'');
debugLevelName=debugLevelName.replaceAll(':' ,'');

system.debug(debugLevelName);
// id debugLevelId=queryList.records[0].Id;
 Http hR2 = new Http();
HttpRequest setDebugLevelReq = new HttpRequest();
setDebugLevelReq.setHeader('Authorization', 'Bearer ' + loginsessionString.get('access_token'));
setDebugLevelReq.setHeader('Content-Type', 'application/json');
setDebugLevelReq.setEndpoint(domainUrl+'services/data/v40.0/tooling/sobjects/DebugLevel' );
String reqBody1 = '{\n' +
    ' "Workflow" : '+ json.serialize(wFValue)+',\n' +
    ' "DeveloperName" :'+ '\"' + debugLevelName +'\"' +',\n' +
    ' "MasterLabel" :'+ '\"' + debugLevelName +'\"' +',\n' +
    ' "Validation" :'+ json.serialize(validValue) +',\n' + 
     ' "Callout" :'+ json.serialize(callValue) +',\n' + 
      ' "ApexCode" :'+ json.serialize(apexValue) +', \n' + 
       ' "ApexProfiling" :'+ json.serialize(profilValue) +',\n' + 
        ' "Visualforce" :'+ json.serialize(vfValue) +',\n' + 
         ' "System" :'+ json.serialize(sysValue) +',\n' + 
         ' "Database" :'+ json.serialize(dBValue) +',\n' + 
         ' "Wave" :'+ json.serialize(waveValue) +'\n' +
         '}';
    system.debug(reqBody1);
 setDebugLevelReq.setBody(reqBody1);   
setDebugLevelReq.setMethod('POST');
HttpResponse updateResult = new HttpResponse();
try{
updateResult = hR2.send(setDebugLevelReq);
system.debug('body:'+updateResult.getBody());
}
                
catch(system.CalloutException e){            
    system.debug('error'+e);
}

//JSON2Apex newDebugLevelRes = JSON2Apex.parse(updateResult.getBody());
//if(Integer.ValueOf(newDebugLevelRes.size)>0)
Map<string,Object> newDebugLevel = (Map<string,Object>)JSON.deserializeUntyped(updateResult.getBody());
system.debug(newDebugLevel);
if(newDebugLevel.get('success')==true)
{
newlyCreated=true;
HttpRequest creareReq = new HttpRequest();
creareReq.setHeader('Authorization', 'Bearer ' + loginsessionString.get('access_token'));
//req.setHeader('Authorization', 'Bearer ' + sessionId);
creareReq.setHeader('Content-Type', 'application/json');

system.debug('********domainUrl:'+domainUrl);
creareReq.setEndpoint(domainUrl+'services/data/v40.0/tooling/sobjects/TraceFlag');
creareReq.setMethod('POST');

Http hR3 = new Http();

String creReqBody = '{\n' +
    ' "ExpirationDate" :' +JSON.serialize(endDateTime) +',\n' +
    ' "LogType" :  "USER_DEBUG", \n' + 
      
    
    ' "StartDate" : ' +JSON.serialize(startDateTime)+',\n' +
    ' "TracedEntityId" :'+ json.serialize(userId) +',\n' +
    ' "DebugLevelId" : '+ json.serialize(newDebugLevel.get('id')) +'\n' +
    
    '}';
    system.debug(creReqBody);
creareReq.setBody(creReqBody);
HttpResponse createTraceFlag = new HttpResponse();
try{
createTraceFlag = hR3.send(creareReq);
system.debug('body:'+createTraceFlag.getBody());
}
                
catch(system.CalloutException e){            
    system.debug('error'+e);
}
//JSON2Apex newTraceFlag = JSON2Apex.parse(createTraceFlag.getBody());
Map<string,Object> newTraceFlag = (Map<string,Object>)JSON.deserializeUntyped(createTraceFlag.getBody());
//Map<String,Object> traceFlagRes = (Map<string,Object>)JSON.deserializeUntyped(createTraceFlag.getBody());
if(newTraceFlag.get('success')==True)
{
string traceFlagId1 = string.valueOf(newTraceFlag.get('id'));
string userId2 = userId;
 string logType2 = 'USER_DEBUG';
 string StartDate2= string.ValueOf(startDateTime);
 String ExpirationDate2= string.ValueOf(endDateTime);
 String DebugLevelName2= string.valueOf(newDebugLevel.get('id'));
 traceList.add(new TraceFlag(traceFlagId1,userId2,logType2,StartDate2,ExpirationDate2,DebugLevelName2));

}
}


    
    
    
}


}


  return null;







}
public PageReference retreiveApexLogs(){


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
DateTime startDateTime = dateTime.valueOf(deBugLog.testNamespaceSi__Start_Date_Time__c);
    DateTime endDateTime = dateTime.valueOf(deBugLog.testNamespaceSi__End_Date_Time__c);
    system.debug(startDateTime);
    system.debug(endDateTime); 

DateTime currentTime = system.now();
string formattedCuttentTime = startDateTime.format('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'');
//System.debug('DATETIME:'+dt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\''));

req.setEndpoint(domainUrl+'/services/data/v40.0/tooling/query/?q=SELECT+Status,+StartTime,+Request,+Id,+Application,+DurationMilliseconds,+Location,+LogLength,+LogUserId,+Operation+FROM+ApexLog+where+LogUserId=+' +'\'' + userId +'\'' + 'AND+StartTime>'+formattedCuttentTime);
req.setMethod('GET');
HttpResponse res = hR.send(req);
string resForQuery = res.getBody();
system.debug(resForQuery);
Map<string,string> removeDuplicates = new Map<string,string>();
JSON2Apex2 objList = JSON2Apex2.parse(resForQuery);
if(Integer.ValueOf(objList.size)>0)
{
 //alReadyTraced=true;
 apexLogList = new List<apexLog>();
 for(integer i=0 ;i<objList.size ;i++)
 {
 string lid1 = objList.Records[i].Id;
 string Application1 = objList.Records[i].Application;
 string DurationMilliseconds1 = string.ValueOf(objList.records[i].DurationMilliseconds);
 string Location1 = objList.records[i].Location;
 String LogLength1 = string.ValueOf(objList.records[i].LogLength);
 String LogUserId1 = objList.records[i].LogUserId;
 String Operation1 = objList.records[i].Operation;
 String Request1 = objList.records[i].Request;
 String StartTime1 = objList.records[i].StartTime;
 String Status1 = objList.records[i].Status;
 if(removeDuplicates.containsKey(objList.Records[i].Id))
 {
 }
 else
 {
 removeDuplicates.put(objList.Records[i].Id,Location1);
 apexLogList.add(new ApexLog(lid1,Application1,DurationMilliseconds1,Location1,LogLength1,LogUserId1,Operation1,Request1,StartTime1,Status1));
 }
 }

 
}
return null;
}
public PageReference downloadLog(){
string selectedid= System.currentPageReference().getParameters().get('apexLogId');
system.debug(selectedid + apexLogId);
PageReference pageRef = new PageReference('/apex/SetDebugLogpdf');
    pageRef.setRedirect(true);
    pageRef.getParameters().put('id',apexLogid);
    pageRef.getParameters().put('selectedOrg',selectedOrg);
    
    return pageRef;
}

Public PageReference EditTraceFlag(){



return null;
}


Public PageReference delTraceFlag(){
string traceFlagId=System.currentPageReference().getParameters().get('traceFlagId1');

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


DateTime currentTime = system.now();
string formattedCuttentTime = currentTime.format('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'');
//System.debug('DATETIME:'+dt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\''));

req.setEndpoint(domainUrl+'services/data/v40.0/tooling/sobjects/TraceFlag/' +traceFlagId);
req.setMethod('DELETE');
HttpResponse res = hR.send(req);
string resForQuery = res.getBody();
system.debug(res);
system.debug(resForQuery);



traceList.clear();
showDebugLogDeleteMsg=true;


return null;
}


public pageReference deleteAllApexLogs(){


return null;





}

}