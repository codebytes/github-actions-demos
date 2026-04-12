const removespace = require('./index');

describe('removespace', () => {
  test('removes spaces from a string', () => {
    expect(removespace('hello world')).toBe('helloworld');
  });

  test('removes tabs and newlines', () => {
    expect(removespace('hello\tworld\n')).toBe('helloworld');
  });

  test('returns empty string for empty input', () => {
    expect(removespace('')).toBe('');
  });

  test('returns same string when no whitespace', () => {
    expect(removespace('helloworld')).toBe('helloworld');
  });

  test('throws on non-string input', () => {
    expect(() => removespace(123)).toThrow();
    expect(() => removespace(null)).toThrow();
  });
});
