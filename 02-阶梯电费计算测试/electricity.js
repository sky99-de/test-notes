/**
 * 阶梯电价计算函数
 * 第一阶梯：0-200度，0.5元/度
 * 第二阶梯：201-400度，0.6元/度
 * 第三阶梯：401度及以上，0.8元/度
 * @param {number} degrees 用电度数
 * @returns {number} 总电费
 */
export function calculateElectricityCost(degrees) {
  // 输入验证
  if (typeof degrees !== 'number' || isNaN(degrees)) {
    throw new Error('用电度数必须是数字')
  }

  if (degrees < 0) {
    throw new Error('用电度数不能为负数')
  }

  let cost = 0

  // 第一阶梯计算
  if (degrees <= 200) {
    cost = degrees * 0.5
  }
  // 第二阶梯计算
  else if (degrees <= 400) {
    cost = 200 * 0.5 + (degrees - 200) * 0.6
  }
  // 第三阶梯计算
  else {
    cost = 200 * 0.5 + 200 * 0.6 + (degrees - 400) * 0.8
  }

  // 保留两位小数（人民币）
  return Math.round(cost * 100) / 100
}