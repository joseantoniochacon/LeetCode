class Solution {

    /**
     * @param Integer $n
     * @return String[]
     */
    function fizzBuzz($n) {
        $fizzBuzz = array();
        for($i = 1; $i <= $n; $i++){
            if($i%3 == 0 && $i%5 == 0){
                $fizzBuzz[] = 'FizzBuzz';
            }else if($i%3 == 0){
                $fizzBuzz[] = 'Fizz';
            }else if($i%5 == 0){
                $fizzBuzz[] = 'Buzz';
            }else{
                $fizzBuzz[] = strval($i);
            }
        }
        return $fizzBuzz;
    }
}