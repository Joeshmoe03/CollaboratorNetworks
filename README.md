# Collaboration Networks

Authors: Josef Liem, Frannie Cataldo, An Adhikari

## Our Paper

### Abstract

Studying scientific collaboration practices provides important insight into how impactful research is generated within academic disciplines. Using bibliometric datasets, we applied a network-based approach to analyzing and understanding co-authorship structures in medical research on psoriasis, and computer science (CS). We examined metrics such as degree assortativity, centrality, and cluster to asses author collaborations and their relationships with scholarly impact for metrics like relative citation ratio (RCR), NIH percentile, total citations for the health science, and h-index for computer science. We compared our metrics against null models generated through Chung-Lu and preferential attachment methods. Our analysis demonstrated that both the CS research and psoriasis research networks exhibited stronger degree assortativity than by chance, suggesting selective patterns of collaboration, largely clustered by nationality. Moreover, the collaboration centrality strongly correlated to previously mentioned metrics for author success. We further employed machine learning methods to quantify authors' publication success based solely on network structural features, which accounted for nearly 50\% of the variance in author impact. The number of collaborators emerged as the strongest individual predictor. These results offer critical insight into the underlying dynamics of collaboration among influential scientists in the fields of CS and medicine.

[**📄 View the paper**](overleaf/CollaboratorNetworksReport.pdf)

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
ssh -N -L 1234:node123:1234 MYUSERNAME@ada.middlebury.edu

Forwarded port: same as remote port
Remote server: node123
Remote port: 1234
SSH server: clusteraddress.edu
SSH login: MYUSERNAME
SSH port: 12

Use a Browser on your local machine to go to:
https://1234  (prefix w/ https:// if using password)
==========================================================
```

Copy the ssh line as seen above **from the log file** (NOT from this README) and replace MYUSERNAME with your username. For example:
```
ssh -N -L 1234:node123:1234 johnsmith@clusteraddress.edu
```

In a new terminal paste the above ssh line you formatted **from the log file** (not from README). It should prompt you to log in. **DO NOT CLOSE THIS TERMINAL WHILE WORKING ON YOUR NOTEBOOK**. This is your tunnel into the cluster from your local machine.

In a browser of your choice paste in the line that appears **IN THE LOG FILE** that looks something like this:
```
http://127.0.0.1:1234/tree?token=thisismysecrettokenhahaha
```
