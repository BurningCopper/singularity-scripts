# singularity-scripts

Created to scratch an itch and allow researchers on my school to easily install useful tools through singularity.  With these scripts they can install reasearch apps on demand and run them without admin rights.  For each application, run the associated script to install the application into your hoem folder.

NOTE: Some of these scripts require large (10GB or more) downloads so may take time to complete (depending on processing power and download speeds).

qsiprep (https://github.com/PennLINC/qsiprep)=>
The install script requires that the $FREESURFER_HOME system variable is set.  This is only for the purpose of providing the FreeSurfer license.txt file, which are available for free from the Freesurfer website: https://surfer.nmr.mgh.harvard.edu/ (No I will not share mine, get your own.)  The qsiprep container contains (and uses) its own Freesurfer install, so you can set $FREESURFER_HOME to any folder you like, as long as it contains your license.txt file.

The install script also requires that $HOME/bin is in the users path.

The application can be run by entering into a folder that has the input and output folders of interest, typing 'qsiprep' to enter the container, then entering in the expected qsiprep command line arguments (see qsiprep documentation for details).

