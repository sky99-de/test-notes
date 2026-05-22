// 第一步：导入所有需要的东西
import { test, expect, describe } from 'vitest'
import { generateMonthlyBill } from './billing.js'

// 第二步：给这个测试文件分组
describe('企业级宿舍月度账单生成系统', () => {
  // 第三步：写第一个测试用例
  test('普通宿舍，非毕业季，用电100度，无欠费', () => {
    // 给定输入
    const result = generateMonthlyBill(100)

    // 验证输出
    expect(result.baseCost).toBe(50) // 100度 * 0.5元 = 50元
    expect(result.publicShareCost).toBe(15) // 公摊15元
    expect(result.discount).toBe(0) // 无优惠
    expect(result.lateFee).toBe(0) // 无滞纳金
    expect(result.totalAmount).toBe(65) // 50+15=65元
  })
})