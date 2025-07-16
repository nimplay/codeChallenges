/* For two strings s and t, we say "t divides s"
if and only if s = t + t + t + ... + t + t
(i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x
such that x divides both str1 and str2. */

console.time("Ejecución")

var gcdOfStringsTs = function(str1, str2) {
    if (str1 + str2 !== str2 + str1) {
        return "";
    }

    const gcd = (a, b) => {
        console.log(a, b, 'a, b');
        while (b !== 0) {
            let temp = b;
            console.log(temp, 'temp');
            b = a % b;
            console.log(b, 'b');
            a = temp;
            console.log(a, 'a');
            console.log('---');
        }
        return a;
    };

    const len1 = str1.length;
    const len2 = str2.length;
    const gcdLength = gcd(len1, len2);

    return str1.substring(0, gcdLength);
};

console.log(gcdOfStrings('ABCABCABC', 'ABC'));


for (let i = 0; i < 1e6; i++) sum += i;

console.timeEnd("Ejecución");
