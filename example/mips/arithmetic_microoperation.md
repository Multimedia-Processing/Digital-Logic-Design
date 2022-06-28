# 算術微運算

---

## 電路

![4位元算術電路](https://i.imgur.com/ZP96kT2.jpg)

<!-- ![](assets/3a39017b.png) -->

---

## 波形模擬

![68aba0af](https://i.imgur.com/4t5CC4F.png)

<!-- ![](assets/68aba0af.png) -->

---

## 數值模擬

使用 iverilog 產生模擬數據。

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 0     | 1     | xxx     | x   | x   | 0    |
| 0     | 0     | xxx     | x   | x   | 0    |
| 1     | 0     | xxx     | x   | x   | 0    |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 000     | 0   | 6   | 0    |
| 0     | 0     | 000     | 0   | 6   | 0    |
| 1     | 0     | 000     | 0   | 6   | 6    |
| 1     | 0     | 000     | 4   | -3  | 6    |
| 0     | 0     | 000     | 4   | -3  | 6    |
| 1     | 0     | 000     | 4   | -3  | 1    |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 001     | 1   | -5  | 1    |
| 0     | 0     | 001     | 1   | -5  | 1    |
| 1     | 0     | 001     | 1   | -5  | 13   |
| 1     | 0     | 001     | -7  | -3  | 13   |
| 0     | 0     | 001     | -7  | -3  | 13   |
| 1     | 0     | 001     | -7  | -3  | -9   |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 010     | 3   | 6   | -9   |
| 0     | 0     | 010     | 3   | 6   | -9   |
| 1     | 0     | 010     | 3   | 6   | -4   |
| 1     | 0     | 010     | -2  | 2   | -4   |
| 0     | 0     | 010     | -2  | 2   | -4   |
| 1     | 0     | 010     | -2  | 2   | -5   |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 011     | 6   | -8  | -5   |
| 0     | 0     | 011     | 6   | -8  | -5   |
| 1     | 0     | 011     | 6   | -8  | 14   |
| 1     | 0     | 011     | 5   | 5   | 14   |
| 0     | 0     | 011     | 5   | 5   | 14   |
| 1     | 0     | 011     | 5   | 5   | 0    |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 100     | 5   | 1   | 0    |
| 0     | 0     | 100     | 5   | 1   | 0    |
| 1     | 0     | 100     | 5   | 1   | 5    |
| 1     | 0     | 100     | 4   | 0   | 5    |
| 0     | 0     | 100     | 4   | 0   | 5    |
| 1     | 0     | 100     | 4   | 0   | 4    |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 101     | 7   | 2   | 4    |
| 0     | 0     | 101     | 7   | 2   | 4    |
| 1     | 0     | 101     | 7   | 2   | 8    |
| 1     | 0     | 101     | 6   | -3  | 8    |
| 0     | 0     | 101     | 6   | -3  | 8    |
| 1     | 0     | 101     | 6   | -3  | 7    |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 110     | 5   | -1  | 7    |
| 0     | 0     | 110     | 5   | -1  | 7    |
| 1     | 0     | 110     | 5   | -1  | 4    |
| 1     | 0     | 110     | -5  | 5   | 4    |
| 0     | 0     | 110     | -5  | 5   | 4    |
| 1     | 0     | 110     | -5  | 5   | -6   |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 1     | 0     | 111     | -6  | 7   | -6   |
| 0     | 0     | 111     | -6  | 7   | -6   |
| 1     | 0     | 111     | -6  | 7   | -6   |
| 1     | 0     | 111     | 1   | -4  | -6   |
| 0     | 0     | 111     | 1   | -4  | -6   |
| 1     | 0     | 111     | 1   | -4  | 1    |

---

| clock | reset | s carry | a   | b   | data |
| ----- | ----- | ------- | --- | --- | ---- |
| 0     | 0     | 111     | 1   | -4  | 1    |
| 0     | 1     | 111     | 1   | -4  | 1    |
| 1     | 1     | 111     | 1   | -4  | 1    |
| 0     | 1     | 111     | 1   | -4  | 1    |