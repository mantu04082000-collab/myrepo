Array = []
while True:
        principle = float(input("Enter the principle amount(P):-"))
        rate = float(input("Enter the anual interest(in %):-"))
        years = float(input("Enter the time preiod (in years):-"))
        simple_interest = (principle * rate * years) / 100
        print("Simple Interest =", simple_interest)
        Array.append(simple_interest)
        choice = input("Do yo want any key  continue (yes/no):-")
        if choice == "no":
           break
        print("All Simple Interest =", Array)