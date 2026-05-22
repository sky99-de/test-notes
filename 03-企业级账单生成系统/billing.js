/**
 * 企业级宿舍月度账单生成函数
 * @param {number} degrees 本月用电度数
 * @param {boolean} isGraduationSeason 是否毕业季（6-7月）
 * @param {boolean} isPoorStudent 是否贫困生
 * @param {number} lastMonthArrears 上月欠费金额
 * @param {boolean} isCheckedOut 是否已退宿
 * @returns {object} 完整账单信息
 */
export function generateMonthlyBill(
  degrees,
  isGraduationSeason = false,
  isPoorStudent = false,
  lastMonthArrears = 0,
  isCheckedOut = false
) {
  // 1. 输入验证
  if (typeof degrees !== 'number' || isNaN(degrees) || degrees < 0) {
    throw new Error('用电度数必须是非负数字')
  }

  if (typeof lastMonthArrears !== 'number' || isNaN(lastMonthArrears) || lastMonthArrears < 0) {
    throw new Error('上月欠费必须是非负数字')
  }

  // 2. 已退宿，不产生任何费用
  if (isCheckedOut) {
    return {
      baseCost: 0,
      publicShareCost: 0,
      lateFee: 0,
      discount: 0,
      totalAmount: 0,
      isCheckedOut: true
    }
  }

  // 3. 计算基础电费（阶梯电价）
  let baseCost = 0
  if (degrees <= 200) {
    baseCost = degrees * 0.5
  } else if (degrees <= 400) {
    baseCost = 200 * 0.5 + (degrees - 200) * 0.6
  } else {
    baseCost = 200 * 0.5 + 200 * 0.6 + (degrees - 400) * 0.8
  }

  // 4. 公摊电费（每月固定15元）
  const publicShareCost = 15

  // 5. 计算优惠
  let discountRate = 1
  if (isPoorStudent) discountRate *= 0.8
  if (isGraduationSeason) discountRate *= 0.9

  const totalBeforeDiscount = baseCost + publicShareCost
  const discount = totalBeforeDiscount * (1 - discountRate)
  const totalAfterDiscount = totalBeforeDiscount - discount

  // 6. 计算滞纳金（上月欠费的5%）
  const lateFee = lastMonthArrears * 0.05

  // 7. 总金额
  const totalAmount = totalAfterDiscount + lastMonthArrears + lateFee

  // 8. 返回完整账单（所有金额保留两位小数）
  return {
    baseCost: Math.round(baseCost * 100) / 100,
    publicShareCost: Math.round(publicShareCost * 100) / 100,
    lateFee: Math.round(lateFee * 100) / 100,
    discount: Math.round(discount * 100) / 100,
    totalAmount: Math.round(totalAmount * 100) / 100,
    isCheckedOut: false
  }
}