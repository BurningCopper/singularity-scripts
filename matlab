#!/bin/bash
MATLABVERSION=r2021b

# Check for $HOME/bin/ folder
if ! ls $HOME/bin/ 
then
    mkdir $HOME/bin/
    echo $HOME/bin/ has been created
else
    echo $HOME/bin/ already exists
fi

# Check for $HOME/singularity/ folder
if ! ls $HOME/singularity/
then
    mkdir $HOME/singularity/
    echo $HOME/singularity/ has been created
else
    echo $HOME/singularity/ already exists
fi

# Create matlab singularity container
if ! ls $HOME/singularity/matlab-$MATLABVERSION.sif
then
    echo Creating matlab-$MATLABVERSION.sif Singularity container
    cd $HOME/singularity/
    singularity build matlab-$MATLABVERSION.sif docker://mathworks/matlab:$MATLABVERSION
else
    echo matlab-$MATLABVERSION.sif already exists
fi

# Create freesurfer script
echo Creating freesurfer run script
echo "#!/bin/bash 
singularity shell -B \$PWD \$HOME/singularity/matlab-$MATLABVERSION.sif" > $HOME/bin/matlab
chmod +x $HOME/bin/freesurfer