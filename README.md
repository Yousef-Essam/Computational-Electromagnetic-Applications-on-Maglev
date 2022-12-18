# Computational Electromagnetism Applications on Maglev
## In this environment, you can find 3 folders for the simulations

- The first folder is the `CST Simulations` folder
- This folder contains 3D models for the simulated coils which include:
    - Two different models for the actual shape of the 8 figure-shaped coil
    - An idealized model for the 8 figure shaped coil in the form of circular loops
    - An experimental model for two square coils used for the simulation of propulsion coils used in some models of Maglev
    - An experimental model of a circular loop of current
- The second folder is the `COMSOL Simulations` folder
- This folder contains a 3D model for:
    - An idealized model for the 8 figure shaped coil in the form of a helical shape
- The third folder is the `MATLAB Simulations` folder
- This folder contains:
    - A function `getInitialData` that reads the contents of a CSV file produced by CST simulations.
    - This function reads the contents of the CSV files which contain the data of the Electric Field and Magnetic Field Vectors Components and converts this data in a structured, easily processable form in the form of 3D matrices.
    - A function `matrix_color_map` that maps 2D matrices to a grid image that color maps the numeric values in the 2D matrices and classify them according to instensity.
    - The scale of the intensity is shown beside the grid.
    - A function `centerPlaneMagnitude` that recieves the 3D components of a Vector Field and produces a 2D matrix that contains the magnitude of the Vector Field at the center plane of the 3D mesh.
    - An implementation of the FDTD Algorithm which recieves the 3D matrices of the Electric Field and Magnetic Field Vectors Components at a certain instant and uses the update equations to get 3d matrices of the Electric Field and Magnetic Field Vector Components in the next instant "separated by the timestep which is provided as an argument for the function".
- Run the `Main_Simulation.m` file to get plots for the Discretizations figures that show the effect of the mesh size on the visualizations of the magnetic field. Figures that show the progression of the magnetic field with time are also produced by the implementation of the FDTD algorithm.