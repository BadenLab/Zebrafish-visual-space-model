<p align="right"><img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Logo.png" width="300"/>
<h1 align="center">3D model of the larval zebrafish field of view for illustration purposes

<p align="center">
<img src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Readme%20Cover.png" width="500"/>
</p>
</h1>

***

- [Visual space modeling](#a-simple-parameterisable-tool-to-visualise-larval-zebrafish-field-of-view)
- [Estimating a field of view](#correlating-a-recording-area-into-the-visual-space)
- [A handy tool for protocol design](#A-handy-tool-for-protocol-design)

***

## A simple parametric tool to visualise larval zebrafish field of view


At [Baden Lab](https://badenlab.org/), we study visual information processing in the retina. We use 2-photon imaging of genetically encoded biosensors to probe the synaptic activity of retinal neurons from our model: the zebrafish *Danio rerio* in its larval form.

Thus the idea to generate this 3D model came from the need to understand what part of the visual scenes the recorded neurons were surveying, based on their position within the eye.


<img align="right" width="200" height="200" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Full%20FoV%20at%20rest%20-%20Top%20view.png">


The [OpenScad](http://www.openscad.org/) file proposed here, represents a larval zebrafish at 5dpf. The field of view is represented by a grey 163° (angular subtense of the functional retina at 72hpf) cone projecting from the center of the eye into visual space [(Easter and Nicola, 1996)](https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Paper%20references/Easter%20%26%20Nicola%201996%20-%20The%20development%20of%20vision%20in%20the%20zebrafish.pdf).
Its eyes at rest are at an angle of 18.5° relative to the body axis. This orientation can be parametered on the openscad script through the variable "Eye_orientation".

---

<img align="left" width="200" height="200" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Full%20FoV%20hunting%20-%20Top%20view.png"/>

Here for example, we are interested about the field of view surveyed when the fish is engaged in a hunting mode.
Its eyes are then rotated to an angle of 35.5° forward, which makes the two monocular field of view overlap in front of the animal, giving him a forward facing binocular vision [(Bianco, Kampff & Engert 2011)](https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Paper%20references/Bianco%2C%20Kampff%20%26%20Engert%202011%20-%20Prey%20capture%20behavior%20evoked%20by%20simple%20visual%20stimuli%20in%20larval%20zebrafish.pdf).

---

## Correlating a recording area into the visual space

<img align="left" width="300" height="300" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/Immuno.png">

Using confocal imaging from a zebrafish eye in the frontal plane, we estimated the position of our functional recording in the sagital plane (here, represented in red).
By manually estimating the center of the lens and assesing the position of the photoreceptors to which the neurons of interested are connected (here bipolar cells in the IPL), we were able to evaluate that our recorded cells surveyed a field of view of approximatly 130°.

<img align="right" width="200" height="250" src="https://github.com/BadenLab/Zebrafish-visual-space-model/blob/master/Images/custom%20FoV%20at%20rest%20-%20Top%20view.png">

This custom view angle, here displyaed in red, can then be entered in the script under the variable: "customed_angle".

The eye and its field of view can also be orientated along the vertical axis with the variable "Eye_Tilt".

_---_

## A handy tool for protocol design

<img align="right" width="500" height="300" src="https://media.giphy.com/media/yN5kfr0DicbbFIrgcQ/giphy.gif">
We also use this 3D model as an aid to design experimental protocols. Here for example, we assessed the portion of the visual field that cannot be stimulated with a side-mounted screen due to the hindrance of our microscope objective focused on the fish eye.
