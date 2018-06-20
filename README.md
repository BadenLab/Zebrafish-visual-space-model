<p align="right"><img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Logo.png" width="150"/>
<h1 align="center">Modelisation of the larval zebrafish field of view for illustration purposes
<p align="center">
<img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Readme%20Cover.png" width="500"/>


<h2 align="left"> A simple parameterisable tool to visualise larval zebrafish field of view </h1> 



At [Baden Lab](https://badenlab.org/), we study visual information processing in the retina. 
We use 2-photon imaging of genetically encoded biosensors 
to probe the synaptic activity of retinal neurons from our model: the zebrafish *Danio rerio* in its larval form. 

Thus the idea to generate this modelisation came from the need to understand what part of the visual scenes the recorded neurons were surveying, based on 
their position within the eye.


<img align="right" width="250" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Full%20FoV%20at%20rest%20-%20Top%20view.png">

The [OpenScad](http://www.openscad.org/) file proposed here, represents a larval zebrafish from 5dpf with a field of view estiated to 163° [(Easter and Nicola, 1996)](https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Paper%20references/Easter%20%26%20Nicola%201996%20-%20The%20development%20of%20vision%20in%20the%20zebrafish.pdf). Its eyes at rest are at an angle of 18.5° relative to the body axis.


<img align="right" width="250" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Full%20FoV%20hunting%20-%20Top%20view.png">

This orientation can be parametered on the openscad script. Here for example, we are interested about the field of view surveyed when the fish is engaged in a hunting mode. Its eyes are then rotated to an angle of 35.5° forward, which makes the two monocular field of view overlap in front of the animal, giving him a forward facing binocullar vision [(Bianco, Kampff & Engert 2011)](https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Paper%20references/Bianco%2C%20Kampff%20%26%20Engert%202011%20-%20Prey%20capture%20behavior%20evoked%20by%20simple%20visual%20stimuli%20in%20larval%20zebrafish.pdf).

