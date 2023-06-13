import numpy as np

iterations = 0
c = 0.2


weights = np.array([0.75, 0.5, -0.6])

# Define training data
data = np.array([[1.0, 1.0, 1.0, 1.0],
                 [9.4, 6.4, 1.0, -1.0],
                 [2.5, 2.1, 1.0, 1.0],
                 [8.0, 7.7, 1.0, -1.0],
                 [0.5, 2.2, 1.0, 1.0],
                 [7.9, 8.4, 1.0, -1.0],
                 [7.0, 7.0, 1.0, -1.0],
                 [2.8, 0.8, 1.0, 1.0],
                 [1.2, 3.0, 1.0, 1.0],
                 [7.8, 6.1, 1.0, -1.0]])
count = data.shape[0]

while count > 0:
    count = 0
    for i in range(data.shape[0]):
        x = data[i,:3] # input values
        desired = data[i,3]  # desired output
        output = np.sign(np.dot(weights, x)) # multiply the weights, the input values, and the sign
        if output != desired: # make sure output is different than desired before incrementing
            count += 1
            weights += c*(desired - output)*x # update weights using given formula
    iterations += 1

print("Weights after one full iteration:", weights)
print("Number of iterations through the data for zero error:", iterations)