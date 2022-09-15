public class totalOpptyAmountHandler {
    public static void totalAmount(List<Opportunity> newList,List<Opportunity> oldList){
        set<Id> accId = new set<Id>();
        if(newList!=null){
            for(Opportunity opp:newList){
                if(opp.AccountId != null){
                    accId.add(opp.AccountId);
                }
            }
        }
        if(oldList!=null){
            for(Opportunity opp:oldList){
                if(opp.AccountId != null){
                    accId.add(opp.AccountId);
                }
            }
        }
        List<Account> listToUpdate = new List<Account>();
	//AggregateResult result = [select Sum(Amount)totalAmt,AccountID accId from Opportunity where AccountId IN: accId Group By AccountID];
for(AggregateResult res:[select Sum(Amount)totalAmt,AccountID accId from Opportunity where AccountId IN: accId Group By AccountID]){
            Account acc = new Account();
    		acc.Id = (id)res.get('accId');
    		acc.Total_Opportunity_Amount__c = (decimal)res.get('totalAmt');
    listToUpdate.add(acc);
        }
        if(listToUpdate!=null){
            update listToUpdate;
        }
    }
}