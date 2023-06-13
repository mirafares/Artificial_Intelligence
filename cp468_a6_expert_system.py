print("Welcome to our expert system, symptom checker!")

fever = input("Do you have a fever? (y/n) ")
cough = input("Do you have a cough? (y/n) ")
shortness_of_breath = input("Do you have shortness of breath? (y/n) ")
body_aches = input("Do you have body aches? (y/n) ")
headache = input("Do you have a headache? (y/n) ")
sore_throat = input("Do you have a sore throat? (y/n) ")
loss_of_taste_or_smell = input("Have you lost your sense of taste or smell? (y/n) ")
fatigue = input("Do you feel unusually tired or fatigued? (y/n) ")
nausea_or_vomiting = input("Do you have nausea or vomiting? (y/n) ")
diarrhea = input("Do you have diarrhea? (y/n) ")

if fever == "y" and cough == "y" and shortness_of_breath == "y":
    print("You may have COVID-19. Please seek medical attention.")
elif fever == "y" and body_aches == "y" and headache == "y" and fatigue == "y":
    print("You may have the flu. Rest and drink fluids.")
elif cough == "y" and shortness_of_breath == "y" and fever == "n" and sore_throat == "n" and loss_of_taste_or_smell == "n":
    print("You may have pneumonia. Please seek medical attention.")
elif sore_throat == "y" and loss_of_taste_or_smell == "y" and fever == "n" and cough == "n" and shortness_of_breath == "n":
    print("You may have COVID-19. Please seek medical attention.")
elif nausea_or_vomiting == "y" and diarrhea == "y" and fever == "n" and cough == "n" and shortness_of_breath == "n":
    print("You may have gastroenteritis. Rest and drink fluids.")
else:
    print("It's unclear what condition you may have. Please monitor your symptoms and seek medical attention if they worsen.")
