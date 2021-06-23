# -*- coding: utf-8 -*-

import math

import matplotlib.pyplot as plt
import numpy as np


def impulse(count_deb, name, factor=1):
    x = [x * 0.0005 for x in range(-int(factor * math.pi / 0.0005), int(factor * math.pi / 0.0005))]
    y = []

    for X in x:
        summa = []
        for j in range(0, count_deb):
            summa.append((count_deb - j) / count_deb * math.cos((j + 1) * X))
        y.append(sum(summa))
        summa.clear()

    plt.figure(figsize=(7, 7))
    plt.plot(x, y, linewidth=2)
    plt.grid()
    plt.xlabel('Время (с)')
    plt.ylabel('Сила импульса')
    plt.savefig("./grap/{0}.{1}".format(name, 'pdf'))
    # plt.savefig('./grap/impulse.pgf')


impulse(1, "impulse_1")
impulse(2, "impulse_2")
impulse(3, "impulse_3")
impulse(7, "impulse_7")
