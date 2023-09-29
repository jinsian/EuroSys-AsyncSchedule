echo "Installing required packages..."
apt-get update && apt-get install -y wget git bash gcc gfortran g++ make file

echo "Installing Open MPI"
export OMPI_DIR=/opt/ompi
export OMPI_VERSION=4.1.1
export OMPI_URL="https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-$OMPI_VERSION.tar.bz2"
mkdir -p /tmp/ompi
mkdir -p /opt
# Download
cd /tmp/ompi && wget -O openmpi-$OMPI_VERSION.tar.bz2 $OMPI_URL && tar -xjf openmpi-$OMPI_VERSION.tar.bz2
# Compile and install
cd /tmp/ompi/openmpi-$OMPI_VERSION && ./configure --prefix=$OMPI_DIR && make -j 12 && make install
# Set env variables so we can compile our application
export PATH=$OMPI_DIR/bin:$PATH
export LD_LIBRARY_PATH=$OMPI_DIR/lib:$LD_LIBRARY_PATH
export MANPATH=$OMPI_DIR/share/man:$MANPATH
export C_INCLUDE_PATH=/opt/ompi/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/ompi/include:$CPLUS_INCLUDE_PATH

export OMPI_DIR=/opt/ompi 
export OMPI_VERSION=4.1.1
export PATH=$OMPI_DIR/bin:$PATH
export LD_LIBRARY_PATH=$OMPI_DIR/\
lib:$LD_LIBRARY_PATH
export MANPATH=$OMPI_DIR/share/man:$MANPATH
export C_INCLUDE_PATH=/opt/ompi/include\
:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/ompi/\
include:$CPLUS_INCLUDE_PATH
cd $TEST_HOME

export OMPI_DIR=/opt/ompi 
export OMPI_VERSION=4.1.1
export PATH=$OMPI_DIR/bin:$PATH
export LD_LIBRARY_PATH=$OMPI_DIR/lib:$LD_LIBRARY_PATH
export MANPATH=$OMPI_DIR/share/man:$MANPATH
export C_INCLUDE_PATH=/opt/ompi/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/ompi/include:$CPLUS_INCLUDE_PATH
export OMPI_ALLOW_RUN_AS_ROOT=1
export OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1
