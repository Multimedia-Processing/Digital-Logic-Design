- IC設計中的基本邏輯閘
- 容易製作
- 表現傑出
- 發展許久，可以實踐許多邏輯閘-->也稱為「[萬用閘](/docs/knowledge-network-database-repository/萬用閘.md)」([Universal Gate](/docs/knowledge-network-database-repository/Universal%20Gate.md))

```verilog
```

通常會通過「[反相器](/docs/knowledge-network-database-repository/反相器.md)」([NOT](/docs/knowledge-network-database-repository/NOT.md))的組合方式達到，以下是最小單元[AND](/docs/knowledge-network-database-repository/AND.md)跟[OR](/docs/knowledge-network-database-repository/OR.md)使用[NAND](/docs/knowledge-network-database-repository/NAND.md)與[NOT](/docs/knowledge-network-database-repository/NOT.md)實現。

# 轉換方式

1. 最簡[[/docs/knowledge-network-database-repository/布林函數]]，使用[[/docs/knowledge-network-database-repository/積項和]]
1. 轉換成[NAND](/docs/knowledge-network-database-repository/NAND.md)，[AND](/docs/knowledge-network-database-repository/AND.md)用[NAND](/docs/knowledge-network-database-repository/NAND.md)，[OR](/docs/knowledge-network-database-repository/OR.md)用[OR-NOT](/docs/knowledge-network-database-repository/OR-NOT.md)
