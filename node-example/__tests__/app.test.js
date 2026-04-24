const request = require('supertest');
const app = require('../src/app');

describe('API endpoints', () => {
  test('GET / returns welcome message', async () => {
    const res = await request(app).get('/');
    expect(res.status).toBe(200);
    expect(res.body.message).toContain('Node.js Example API');
  });

  test('GET /health returns healthy status', async () => {
    const res = await request(app).get('/health');
    expect(res.status).toBe(200);
    expect(res.body.status).toBe('healthy');
  });

  test('POST /removespace removes whitespace from text', async () => {
    const res = await request(app)
      .post('/removespace')
      .send({ text: 'hello world' });
    expect(res.status).toBe(200);
    expect(res.body.result).toBe('helloworld');
  });

  test('POST /removespace returns 400 when text is missing', async () => {
    const res = await request(app)
      .post('/removespace')
      .send({});
    expect(res.status).toBe(400);
    expect(res.body.error).toContain('Missing');
  });

  test('POST /removespace returns 400 for non-string input', async () => {
    const res = await request(app)
      .post('/removespace')
      .send({ text: 123 });
    expect(res.status).toBe(400);
  });
});
