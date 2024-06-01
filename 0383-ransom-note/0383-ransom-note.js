/**
 * @param {string} ransomNote
 * @param {string} magazine
 * @return {boolean}
 */
var canConstruct = function(ransomNote, magazine) {
    while(magazine.search(ransomNote[0]) != -1 && ransomNote.length > 0){
        magazine = magazine.replace(ransomNote[0],'');
        ransomNote = ransomNote.slice(1);
    }
    if(ransomNote == ''){
       return true;
    }
    return false;
};