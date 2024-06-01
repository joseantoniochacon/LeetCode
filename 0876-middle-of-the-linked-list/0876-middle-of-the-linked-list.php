/**
 * Definition for a singly-linked list.
 * class ListNode {
 *     public $val = 0;
 *     public $next = null;
 *     function __construct($val = 0, $next = null) {
 *         $this->val = $val;
 *         $this->next = $next;
 *     }
 * }
 */
class Solution {

    /**
     * @param ListNode $head
     * @return ListNode
     */
    function middleNode($head) {
        $size = 0;
        $navigationNode = $head;
        while($navigationNode != null){
            $navigationNode = $navigationNode->next;
            $size++;
        }
        // Dividing by 2 without round
        $size = bcdiv($size, 2, 0);
        for($i=0;$i<$size;$i++){
            $head = $head->next;
        }
        return $head;
    }
}