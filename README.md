<p align="right"><img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Logo.png" width="150"/>
<h1 align="center">3D model of the larval zebrafish field of view for illustration purposes

<p align="center">
<img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Readme%20Cover.png" width="500"/>
</p>
</h1>



- [Visual space modelisation](#a-simple-parameterisable-tool-to-visualise-larval-zebrafish-field-of-view)
- [Estimation]



## A simple parameterisable tool to visualise larval zebrafish field of view 


At [Baden Lab](https://badenlab.org/), we study visual information processing in the retina. We use 2-photon imaging of genetically encoded biosensors 
to probe the synaptic activity of retinal neurons from our model: the zebrafish *Danio rerio* in its larval form. 

Thus the idea to generate this modelisation came from the need to understand what part of the visual scenes the recorded neurons were surveying, based on 
their position within the eye.

<p>
</p>

<img align="right" width="200" height="200" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Full%20FoV%20at%20rest%20-%20Top%20view.png">


The [OpenScad](http://www.openscad.org/) file proposed here, represents a larval zebrafish from 5dpf. The field of view is represented by a grey 163° (angular subtense of the functional retina at 72hpf) 
cone projecting from the center of the eye into visual space [(Easter and Nicola, 1996)](https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Paper%20references/Easter%20%26%20Nicola%201996%20-%20The%20development%20of%20vision%20in%20the%20zebrafish.pdf). 
Its eyes at rest are at an angle of 18.5° relative to the body axis. This orientation can be parametered on the openscad script.

.

.


<img align="left" width="200" height="200" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Full%20FoV%20hunting%20-%20Top%20view.png"/>

Here for example, we are interested about the field of view surveyed when the fish is engaged in a hunting mode. 
Its eyes are then rotated to an angle of 35.5° forward, which makes the two monocular field of view overlap in front of the animal, giving him a forward facing binocullar 
vision [(Bianco, Kampff & Engert 2011)](https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Paper%20references/Bianco%2C%20Kampff%20%26%20Engert%202011%20-%20Prey%20capture%20behavior%20evoked%20by%20simple%20visual%20stimuli%20in%20larval%20zebrafish.pdf). </kbd>

.

.


## Correlating a recording area into the visual space

<img align="left" width="300" height="300" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Immuno.png">

Using confocal imaging of the zebrafish eye in the frontal plane, we estimated the position of our funcitonal recording in the sagital plane (here, represented in red).
By manually estimating the center of the lens and assesing the position of the photoreceptors to which our neurons are connected (here bipolar cells in the IPL),
we were able to evaluate that our recorded cells surveyed a field of view of approximatly 130°.

.

.

.


<img align="right" width="200" height="200" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/custom%20FoV%20at%20rest%20-%20Top%20view.png">

<img align="right" width="200" height="200" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/custom%20FoV%20hunting%20-%20Top%20view.png">

This customed view angle can then be entered in the script under the variable: "customed_angle". 
This customed view angle is here displayed in red, overlaying the full FoV for comparison 













