# MASC For Landing Trajecotory Prediction and Optimal Landing Areas Selection

This repository contains MASC Online navigation scheme, with support of Non linear guidance logic, a high fidelity simulation environment(X-Plane), and User Datagram Protocol (UDP) based interface. The system takes in landing zone coordinates and position coordinates where engine is malfunction. It later navigates the engine-out airplane to the approachable safty landing position in real-time. A online path planning and guidance demonstration of the system can be found here -> https://drive.google.com/file/d/1WmX2kXaYxDslZy5klvJAoZgwgKunmYe_/view?usp=sharing

This picture below is MASC offline Path Planning Architecture.
<p align='center'>
    <img src="/ApproximateHighFidelityUAVModelWithUAVGuidanceModelBlockExample/graph/Test_Waypoint_Follower.png" alt="drawing" width="700"/>
</p>


## Features

- Nonlinear Guidance Logic
- Accurate Landing Trajectory Prediction
- Approachablility Evaluation for Landing Areas
- Low Fidelity Simulation with UAV Guidance Model
- Light weight offline path planning framework(Low computation demanded)

## Dependencies

- [MATALB R2021a](https://www.mathworks.com/products/new_products/previous_release_overview.html)
- [DSP System Toolbox](https://www.mathworks.com/products/dsp-system.html)
- [UAV Toolbox](https://www.mathworks.com/products/uav.html)
- [Aerospace Blockset](https://www.mathworks.com/products/aerospace-blockset.html)


## Installation


#### Set up input data channel and output data channel in X-Plane

- Build a folder named UAV in document/example folder. Put the package under the new building folder named UAV. 

    
## Running MASC Examples
1.  Open model by running the command listed below.
   ```
   navigationModel = 'pathFollowing';
   open_system(navigationModel);
   ```

2. Initiate the model parameters by running
   ```
   plantDataDictionary = Simulink.data.dictionary.open('pathFollowingData.sldd');
   plantDataSet = getSection(plantDataDictionary,'Design Data');

   % Switch to high-fidelity model
   assignin(plantDataSet,'useHighFidelity',1);
   
   % Switch to low-fidelity model
   assignin(plantDataSet,'useHighFidelity',0);
   ```  
   
3.  Set up the airport coordinates and engine malfunction position for generating the discretized reference trajectory
   ```
   Run the Get_Discretized_Point program in the MATLAB terminal.
   ```  
   
4.  Feed those discretized trajectory point to the model and then click the run button to start the simulink model first.   
   ```
   assignin(plantDataSet,'useHighFidelity',0);

   sim(navigationModel);
   ``` 
   
## Interesting Result
This picture below is comparision of MASC Online Planned Path and Offline Planned Path.
<p align='center'>
    <img src="/ApproximateHighFidelityUAVModelWithUAVGuidanceModelBlockExample/graph/Online_Offline.png" alt="drawing" width="400"/>
</p>


## Cite *MASC*

Thank you for citing [our *MASC* paper](./AIAA_SciTech_2023___Automatic_Emergency_Landing.pdf) if you use any of this code: 
```
The doi is on the way
```


