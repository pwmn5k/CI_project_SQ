import pandas as pd  # type: ignore

df = pd.read_csv("../data/sensor.csv")

print(df)

print("\nAverage temperature:")
print(df["temp"].mean())