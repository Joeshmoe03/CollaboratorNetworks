# Collaboration Networks

Authors: Josef Liem, Frannie Cataldo, An Adhikari

## Setting Things Up for the First Time

In the terminal where you have cloned this repository:
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

## Running the Notebook on the Cluster

From the correct directory level, run:
```
sbatch launchNotebook.sh
cd logs
more jupyter-notebook.log
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

Copy the ssh line **from the log file** and replace in your username inplace of MYUSERNAME. For example:
```
ssh -N -L 9328:node002:9328 jliem@ada.middlebury.edu
```

In a new terminal paste line you copied **from the log file** (not from here). It should prompt you to log in. **DO NOT CLOSE THIS TERMINAL WHILE WORKING ON YOUR NOTEBOOK**. This is your tunnel into the cluster from your local machine.

In a browser of your choice paste in the line that appears **IN THE LOG FILE** that looks something like this:
```
http://127.0.0.1:9328/tree?token=957ba389cf205ab794c9d3925da0747c717cfd0fafae7d6e
```
