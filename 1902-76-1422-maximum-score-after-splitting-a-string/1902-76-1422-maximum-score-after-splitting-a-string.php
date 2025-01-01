class Solution {

    /**
     * @param String $s
     * @return Integer
     */
    function maxScore($s) {
        $scores_array = array_fill(0,strlen($s),0);
        $zeros_count = 0;
        $ones_count = substr_count($s,"1");
        for($i=0;$i<strlen($s)-1;$i++){
            switch($s[$i]){
                case "0":
                    $zeros_count++;
                break;
                case "1":
                    $ones_count--;
                break;
            }
            $scores_array[$i] = $zeros_count + $ones_count;
        }
        return max($scores_array);
    }
}