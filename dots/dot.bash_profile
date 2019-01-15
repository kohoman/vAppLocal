# ****** ****** ****** ****** ****** ****** ****** ****** ******

# ****** ****** ****** ****** ****** ****** ****** ****** ******

# ... get user aliases and functions ...

if [ -f ${HOME}/.bashrc ]
then
  . ${HOME}/.bashrc
fi

# ... User specific environment and startup programs ...

BASH_ENV=${HOME}/.bashrc
export BASH_ENV

PATH=${PATH}:${HOME}/bin

# ... TeXlive 2017 ...

MANPATH=/usr/local/texlive/2017/texmf-dist/doc/man:${MANPATH}
INFOPATH=/usr/local/texlive/2017/texmf-dist/doc/info:${INFOPATH}
PATH=/usr/local/texlive/2017/bin/x86_64-linux:${PATH}

# ... add TeX live to path (2017/02/15) ...

#PATH=/usr/local/texlive/2016/bin/x86_64-linux:${PATH}

# ... python ...

PYTHONPATH=${PYTHONPATH}:${HOME}/Dropbox/local/python
export PYTHONPATH

# ... openfoam ...

#source /opt/openfoam231/etc/bashrc

# ... hdf settings (2014/02/21) ...

PATH=/usr/local/hdf5/bin:$PATH

# ... idl settings (2011/07/27) ...

LM_LICENSE_FILE='1700@r02khoman.managed.mst.edu'
export LM_LICENSE_FILE

IDL_STARTUP=${HOME}/idlwave/idl/local/idlstart.pro
export IDL_STARTUP

# ... matlab settings ...

MATLABPATH=${HOME}/matlab/:${MATLABPATH}
export MATLABPATH

# ... matlab - standalone applications ...

MATLABROOT=/usr/local/matlab2010b

# ... kerberos settings ...

if [ -d ${HOME}/krb ]
then
  KRB5_CONFIG=${HOME}/krb/etc/krb5.conf
  export KRB5_CONFIG
  if [ $?MANPATH ]
  then
    MANPATH=/usr/local/krb5/man:$MANPATH
  fi
  PATH=${HOME}/krb/bin:${PATH}
fi

# ... export path ...

export PATH

# **** **** **** **** **** **** **** **** **** **** ****

# **** **** **** **** **** **** **** **** **** **** ****








