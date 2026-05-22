// 把所有用到的Vitest API都手动导入
import { test, expect, describe } from 'vitest'
import { calculateElectricityCost } from './electricity.js'

describe('阶梯电费计算函数', () => {
  // 第一阶梯测试
  test('第一阶梯：0度电费为0', () => {
    expect(calculateElectricityCost(0)).toBe(0)
  })

  test('第一阶梯：100度电费50元', () => {
    expect(calculateElectricityCost(100)).toBe(50)
  })

  test('第一阶梯边界：200度电费100元', () => {
    expect(calculateElectricityCost(200)).toBe(100)
  })

  // 第二阶梯测试
  test('第二阶梯：300度电费160元', () => {
    expect(calculateElectricityCost(300)).toBe(160)
  })

  test('第二阶梯边界：400度电费220元', () => {
    expect(calculateElectricityCost(400)).toBe(220)
  })

  // 第三阶梯测试
  test('第三阶梯：500度电费300元', () => {
    expect(calculateElectricityCost(500)).toBe(300)
  })

  test('第三阶梯：1000度电费700元', () => {
    expect(calculateElectricityCost(1000)).toBe(700)
  })

  // 异常输入测试
  test('输入负数抛出错误', () => {
    expect(() => calculateElectricityCost(-10)).toThrow('用电度数不能为负数')
  })

  test('输入字符串抛出错误', () => {
    expect(() => calculateElectricityCost('100')).toThrow('用电度数必须是数字')
  })

  test('输入NaN抛出错误', () => {
    expect(() => calculateElectricityCost(NaN)).toThrow('用电度数必须是数字')
  })

  test('输入null抛出错误', () => {
    expect(() => calculateElectricityCost(null)).toThrow('用电度数必须是数字')
  })
})