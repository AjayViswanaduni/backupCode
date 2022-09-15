public with sharing class AccounttController {
        @AuraEnabled(cacheable=true)
        public static List<Account> getAccounts(){
            return [select Id,Name,Type,Industry from Account LIMIT 5 ];
        }
        @AuraEnabled(cacheable=true)
        public static List<Account> filterAccountByType(String type){
            return [select Id,Name,Type,Industry from Account where Type=:type LIMIT 5 ];
        }
        @AuraEnabled(cacheable=true)
        public static List<Account> searchAccounts(String searchKey){
            String key='%' + searchKey + '%';
            return [select Id,Name,Type,Industry from Account WHERE Name LIKE:key LIMIT 5 ];
        }
    }