# Collaboration Networks

Authors: Josef Liem, Frannie Cataldo, An Adhikari

## Our Paper
##[📄 View the paper](overleaf/CollaboratorNetworksReport.pdf)##

## Setting Things Up for the First Time

In the terminal **ON THE CLUSTER** where you have cloned this repository:
```
chmod +x setup.sh
./setup.sh
```

Verify that your data is there afterwards. Verify that you can run `conda activate collab`. Otherwise you
will have to manually create the environment and install relevant packages.
Additionally verify that relevant packages: igraph, networkx, matplotlib, numpy, etc... are installed by running:
```
conda activate collab
pip list
```

If not, with conda environment activated:
```
pip install YOUR_PACKAGE
```
Or if you are able to open the Notebook by following the step below, in a jupyter notebook cell:
```
!pip install YOUR_PACKAGE
```

## Running the Notebook on the Cluster

From the correct directory level, run:
```
sbatch launchNotebook.sh
more logs/jupyter-notebook.log
```

You should see something like this:
```
==========================================================
MacOS or linux terminal command to create your ssh tunnel:
ssh -N -L 9328:node002:9328 MYUSERNAME@ada.middlebury.edu

Forwarded port: same as remote port
Remote server: node002
Remote port: 9328
SSH server: ada.middlebury.edu
SSH login: MYUSERNAME
SSH port: 22

Use a Browser on your local machine to go to:
https://9328  (prefix w/ https:// if using password)
==========================================================
```

Copy the ssh line as seen above **from the log file** (NOT from this README) and replace MYUSERNAME with your username. For example:
```
ssh -N -L 9328:node002:9328 jliem@ada.middlebury.edu
```

In a new terminal paste the above ssh line you formatted **from the log file** (not from README). It should prompt you to log in. **DO NOT CLOSE THIS TERMINAL WHILE WORKING ON YOUR NOTEBOOK**. This is your tunnel into the cluster from your local machine.

In a browser of your choice paste in the line that appears **IN THE LOG FILE** that looks something like this:
```
http://127.0.0.1:9328/tree?token=957ba389cf205ab794c9d3925da0747c717cfd0fafae7d6e
```
