# トロッター分解のサンプル

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

Japanese/ [English](README.md)

## 概要

非可換な演算子X, Y, Zがあり、 Z=X+Yであるとする。この時、以下の公式が成り立つ。

* 通常の分解
  * Exp(h Z) = (Exp(h/n X) Exp(h/n Y))^n + O(h^2/n)
* 二次の対称分解
  * Exp(h Z) = (Exp(h/2n X) Exp(h/n Y) Exp(h/2n X))^n + O(h^3/n^2)

ここでhはc-数(数値計算上では時間刻みに対応)、nが分解数である。
この公式は[リー・トロッター公式](https://ja.wikipedia.org/wiki/%E3%83%AA%E3%83%BC%E3%83%BB%E3%83%88%E3%83%AD%E3%83%83%E3%82%BF%E3%83%BC%E7%A9%8D%E5%85%AC%E5%BC%8F)などと呼ばれるが、業界や用途によってはトロッター分解、鈴木・トロッター分解などとも呼ばれ、
exp(h (X+Y))を厳密に評価することは難しいが、exp(tX)やexp(tY)は簡単に計算できる場合などに用いられる。
このサンプルは、X, Y, Zを行列とし、トロッター分解の近似のエラーが公式通りであるか確認する。なお、誤差はフロベニウスノルムで評価している。

## 使い方

```sh
make
```

## 実行結果

### 通常の分解

誤差の時間刻みh依存性。h^2に比例していることがわかる。

![h_1.png](h_1.png)

誤差の分解数n依存性。1/nに比例していることがわかる。

![n_1.png](n_1.png)

### 二次の対称分解

誤差の時間刻みh依存性。h^2に比例していることがわかる。

![h_2.png](h_2.png)

誤差の分解数n依存性。1/nに比例していることがわかる。

![n_2.png](n_2.png)

## Jupyter Notebook版

Jupyter notebook 版(`lie_trotter_sample.ipynb`)もあります。Thanks [TejasAvinashShetty](https://github.com/TejasAvinashShetty)!.
