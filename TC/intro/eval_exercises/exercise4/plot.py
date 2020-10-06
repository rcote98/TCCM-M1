import matplotlib.pyplot as plt
import numpy as np

r, energy = np.loadtxt("result.out", unpack=True)

plt.plot(r, energy, c="r")
plt.ylabel("$V(r)$", fontsize=14)
plt.xlabel("$r$", fontsize=14)
plt.tight_layout()
plt.grid(True)
plt.show()