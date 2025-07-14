/* You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. */

console.time("Ejecución")

function mergeAlternately(word1 = 'abc', word2 = 'def') {
    let merged = [];
    const maxLength = Math.max(word1.length, word2.length);

    for (let i = 0; i < maxLength; i++) {
        if (i < word1.length) {
            merged.push(word1[i]);
        }
        if (i < word2.length) {
            merged.push(word2[i]);
        }
    }

    return merged.join('');
}

console.log(mergeAlternately('abc', 'def'));


let sum = 0;
for (let i = 0; i < 1e6; i++) sum += i;

console.timeEnd("Ejecución");
