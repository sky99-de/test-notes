import { defineConfig } from 'vitest/config'

export default defineConfig({
  test: {
    globals: true, // 开启全局API，自动注入test、expect等
  },
})