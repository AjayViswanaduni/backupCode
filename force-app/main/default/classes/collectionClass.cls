public class collectionClass {
     public static List<Integer> getscore(Integer a){
        List<Integer> scores = new List<Integer>();
        scores.add(126);
        scores.add(165);
        scores.add(223);
        scores.add(163);
        scores.add(149);
        scores.add(112);
        for(Integer score : scores){
            score = score + a ;
            System.debug('Score are : ' + score);
        }
        return scores;   
	}
}