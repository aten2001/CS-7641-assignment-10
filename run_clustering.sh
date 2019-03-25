#!/bin/sh

# # Replace 'X' below with the optimal values found
# # If you want to first generate data and updated datasets, remove the "--skiprerun" flags below

# python run_experiment.py --ica --dataset1 --dim 7 --skiprerun --verbose --threads -1 > ica-dataset1-clustering.log 2>&1
# # python run_experiment.py --ica --dataset2 --dim 4 --skiprerun --verbose --threads -1 > ica-dataset2-clustering.log 2>&1
# python run_experiment.py --pca --dataset1 --dim 6 --skiprerun --verbose --threads -1 > pca-dataset1-clustering.log 2>&1
# # python run_experiment.py --pca --dataset2 --dim 3 --skiprerun --verbose --threads -1 > pca-dataset2-clustering.log 2>&1
# python run_experiment.py --rp  --dataset1 --dim 8 --skiprerun --verbose --threads -1 > rp-dataset1-clustering.log  2>&1
# # python run_experiment.py --rp  --dataset2 --dim 8 --skiprerun --verbose --threads -1 > rp-dataset2-clustering.log  2>&1
# python run_experiment.py --rf  --dataset1 --dim 7 --skiprerun --verbose --threads -1 > rf-dataset1-clustering.log  2>&1
# # python run_experiment.py --rf  --dataset2 --dim 16 --skiprerun --verbose --threads -1 > rf-dataset2-clustering.log  2>&1

# #python run_experiment.py --svd --dataset1 --dim X --skiprerun --verbose --threads -1 > svd-dataset1-clustering.log 2>&1
# #python run_experiment.py --svd --dataset2 --dim X --skiprerun --verbose --threads -1 > svd-dataset2-clustering.log 2>&1


## Part 1

# python run_experiment.py --benchmark --threads -1 --plot

## part 2
# python run_experiment.py --ica --pca --rf --rp --threads -1 --plot

# ## part 3

# python run_experiment.py --skiprerun --dim 7 --ica  --threads -1 --plot > ica-dataset1-clustering.log 2>&1
# python run_experiment.py --skiprerun --dim 6 --pca --threads -1 --plot > pca-dataset1-clustering.log 2>&1
# python run_experiment.py --skiprerun --dim 8 --rf  --threads -1 --plot > rf-dataset1-clustering.log  2>&1
# python run_experiment.py --skiprerun --dim 7 --rp   --threads -1 --plot > rp-dataset1-clustering.log  2>&1


## part 4  Apply the dimensionality reduction algorithms to one of your datasets from assignment #1 (if you’ve reused the datasets from assignment #1 to do experiments 1-3 above then you’ve already done this) and rerun your neural network learner on the newly projected data.
python run_experiment.py --dataset1 --skiprerun --dim 7 --ica  --threads -1 --plot  > ica-dataset1-clustering.log 2>&1
python run_experiment.py --dataset1 --skiprerun --dim 6 --pca --threads -1 --plot  > pca-dataset1-clustering.log 2>&1
python run_experiment.py --dataset1 --skiprerun --dim 8 --rf    --threads -1 --plot  > rf-dataset1-clustering.log 2>&1
python run_experiment.py --dataset1 --skiprerun --dim 7 --rp   --threads -1 --plot  > rp-dataset1-clustering.log 2>&1


# ## part 5
## run_experiment.py --dataset1 --benchmark --threads -1 --plot