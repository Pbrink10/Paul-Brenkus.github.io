# 07/09/2020 Machine Learning Responses

### Titanic Simulation

#### 1.) What is this code doing?

    - This simulation formula begins by importing a dataset with information in the following categories: survived sex, age, n_siblings_spouses, parch, fare, deck, embark_town,
    and alone. That data contains data form 5 individuals, giving their sex, age, whether they have siblings or spouses, the class in which they were given, deck onboard the
    Titanic, what town they embarked from, and whether they were alone or not. By doing this, the data is able to be split into different series of data for further testing. Next,
    the data continues by creating a temporary training set for setting defaults before sending it into the formula. The data is then normalized and each individual category is
    run through a mean and standard deviation normalizer. Finally, the data is run through a Tensorflow, Keras, Sequential model with the first dense layer being 128 neurons and
    relu attached. The next dense layer has 128 neurons with relue attached, followed by a third dense layer with just a single neuron attached. Two sets of data (training,
    testing) are sent through the algorithm being split roughly 80-20 respectively. Each algorithm runs 20 epochs in order to achieve a higher percentage of accuracy. Finally,
    the predicted results are posted on the 5 individuals in the dataset of whether they had survived the sinking of the Titanic or sank with her.


Predicted survival: 12.84%  | Actual outcome:  DIED
 
Predicted survival: 79.40%  | Actual outcome:  SURVIVED

Predicted survival: 53.08%  | Actual outcome:  SURVIVED

Predicted survival: 6.63%  | Actual outcome:  SURVIVED

Predicted survival: 1.79%  | Actual outcome:  DIED       
