#temperature_fahrenheit to temperature_celsius
#Formula ==> (TempTochange °F − 32) × 5/9 = temperature_celsius °C
def ftoc (x)
    temperature_celsius = (x - 32) * 5/9.0
end
#temperature_celsius to temperature_fahrenheit
#Formula ==> (TempToChange °C × 9/5) + 32 = temperature_fahrenheit °F
def ctof (y)
    temperature_fahrenheit = (y * 9.0/5) + 32
end