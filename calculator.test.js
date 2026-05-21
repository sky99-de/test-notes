import { add, subtract } from './calculator';

test('加法函数测试', () => {
  expect(add(1, 2)).toBe(3);
  expect(add(-1, 1)).toBe(0);
  expect(add(0, 0)).toBe(0);
});

test('减法函数测试', () => {
  expect(subtract(5, 3)).toBe(2);
  expect(subtract(3, 5)).toBe(-2);
  expect(subtract(0, 0)).toBe(0);
});