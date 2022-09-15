public class AuraEnabledClass3 {
@auraEnabled
    Public static Opportunity getOpp(string oppStage){
        return [SELECT ID,Name,Probability,StageName from Opportunity WHERE StageName =: oppStage Limit 1];
    }
}