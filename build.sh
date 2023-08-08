#!/bin/bash

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

cd $SHELL_FOLDER

workdir=${HOME}/workdir

[ -d ${workdir} ] && sudo rm -rf ${workdir}

mkdir -p  ${workdir}/{work,out}

cp -rf archiso ${workdir}

cd ${workdir}

sudo mkarchiso -v archiso 
