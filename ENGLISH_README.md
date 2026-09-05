# Chaos in a three-species food chain

**Analysis and Stabilization of the Hastings-Powell Model**

Project for the *Complex Systems* course

[https://github.com/user-attachments/assets/8467c664-0f51-40d9-a823-2d2244d46ced](https://github.com/user-attachments/assets/8467c664-0f51-40d9-a823-2d2244d46ced)

This repository explores the emergence of deterministic chaos in a three-species food chain (prey, primary predator, and top predator). Starting from the Hastings-Powell model (1991), the project analyzes the phase space, bifurcation diagrams, and the sensitivity to initial conditions (Lyapunov exponent). Finally, a targeted harvesting strategy is proposed to stabilize the chaotic attractor and bring the system back to an asymptotically stable equilibrium point.

## Repository contents

* `main.ipynb`: The main notebook containing all the mathematical simulations.
* `presentazione.md` / `presentazione.pdf`: The summary slides used for the project presentation, generated via Marp.
* `build.sh`: Script to extract images from the notebook and update the presentation.
* `images/` and `video/`: Folders containing the plots and animations of the system.

## Installation and Setup

To reproduce the simulations, you need to install the Python dependencies:

```bash
# Creating the virtual environment
python3 -m venv venv
source venv/bin/activate

# Installing libraries
pip install -r requirements.txt

```

To start the notebook:

```bash
jupyter notebook main.ipynb

```

---

Reference paper: Hastings, A., & Powell, T. (1991). Chaos in a three-species food chain. *Ecology*, 72(3), 896-903. [Link]( https://www.jstor.org/stable/1940591)
