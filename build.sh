#!/bin/bash

venv/bin/python -c "
import json, base64, os
os.makedirs('images', exist_ok=True)
c=0
names={
  0:'holling.png', 
  1:'caos.png', 
  2:'caos_3d.png', 
  3:'divergenza.png', 
  4:'regressione.png',
  5:'biforcazioni.png',
  6:'biforcazioni_H.png',
  7:'stabilita_tempo.png', 
  8:'stabilita_3d.png', 
  9:'evoluzione_tempo.png',
  10:'evoluzione_3d.png'
}
with open('main.ipynb') as f:
 for cell in json.load(f)['cells']:
  for out in cell.get('outputs',[]):
   if 'image/png' in out.get('data',{}):
    if c in names:
     with open('images/'+names[c], 'wb') as img: img.write(base64.b64decode(out['data']['image/png']))
    c+=1
"

npx @marp-team/marp-cli presentazione.md --pdf --allow-local-files
