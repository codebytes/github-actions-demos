module.exports = function removespace(string) {
    if (typeof string !== "string") throw new TypeError("Meh! Enter a string!!");
    return string.replace(/\s/g, "");
};
