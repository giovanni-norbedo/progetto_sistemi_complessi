# Caos in una catena alimentare a tre specie

**Analisi e Stabilizzazione del Modello di Hastings-Powell**

Progetto per il corso di *Sistemi Complessi*

Questo repository esplora la comparsa del caos deterministico in una catena trofica a tre specie (preda, predatore primario e super-predatore). Partendo dal modello di Hastings-Powell (1991), il progetto analizza lo spazio delle fasi, i diagrammi di biforcazione e la sensibilità alle condizioni iniziali (esponente di Lyapunov). Infine, viene proposta una strategia di "harvesting" (prelievo) mirato per stabilizzare l'attrattore caotico e ricondurre il sistema a un punto di equilibrio asintoticamente stabile.

<video src="./video/caos_3d.mp4" controls="controls" width="100%">
  Il tuo browser non supporta il tag video.
</video>

## Contenuto del repository

- `main.ipynb`: Il notebook principale contenente tutte le simulazioni matematiche.
- `presentazione.md` / `presentazione.pdf`: Le slide riassuntive usate per l'esposizione del progetto, generate tramite Marp.
- `build.sh`: Script per estrarre le immagini dal notebook e aggiornare la presentazione.
- `images/` e `video/`: Cartelle contenenti i grafici e le animazioni del sistema.

## Installazione e Setup

Per riprodurre le simulazioni è necessario installare le dipendenze Python:

```bash
# Creazione dell'ambiente virtuale
python3 -m venv venv
source venv/bin/activate

# Installazione librerie
pip install -r requirements.txt
```

Per avviare il notebook:

```bash
jupyter notebook main.ipynb
```
---

Paper di riferimento: Hastings, A., & Powell, T. (1991). Chaos in a three-species food chain. *Ecology*, 72(3), 896-903. [Link]( https://www.jstor.org/stable/1940591)
