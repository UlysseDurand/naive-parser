#!/bin/sh
cp -r $SRC_DIR/* /tmp
cp $WORK_DIR/input.txt /tmp
cp /tmp/input.txt /tmp/input.ml

cd /tmp
ocamlopt misc.ml automate_affiche.ml automate_parse.ml analyse.ml input.ml -o calculformel
./calculformel > output.txt

cp output.txt $WORK_DIR/output.txt