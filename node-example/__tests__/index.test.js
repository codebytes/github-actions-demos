const removespace = require('../index');

describe('removespace utility', () => {
  test('removes spaces from a string', () => {
    expect(removespace('a b c')).toBe('abc');
  });

  test('removes tabs and newlines', () => {
    expect(removespace('a\tb\nc')).toBe('abc');
  });

  test('returns empty string when given only whitespace', () => {
    expect(removespace('   ')).toBe('');
  });

  test('returns same string when no whitespace present', () => {
    expect(removespace('abc')).toBe('abc');
  });

  test('throws TypeError for non-string input', () => {
    expect(() => removespace(123)).toThrow(TypeError);
  });
});
