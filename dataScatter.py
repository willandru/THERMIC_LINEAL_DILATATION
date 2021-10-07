from  matplotlib import pyplot as plt

x_temperature=[31.2, 33.2, 35.2, 37.2, 39.2, 41.2, 43.2, 45.2, 47.2, 49.2, 51.2, 53.2, 55.2, 57.2]

y_lenght= [0, 0.05, 0.07, 0.1, 0.13, 0.16, 0.18, 0.21, 0.24, 0.25, 0.29, 0.32, 0.33, 0.35]

plt.plot(x_temperature, y_lenght, 'x', color='black')
plt.xlabel('Δ Temperatura [°C]')
plt.ylabel('Δ Longitud [mm]')


plt.show()
