---
marp: true
theme: default
paginate: true
math: mathjax
size: 16:9
style: |
  section {
    font-family: Arial, sans-serif;
    font-size: 24px;
    padding: 70px 90px;
  }
  h1 { 
    font-size: 52px; 
    color: #2a6ac9; 
  }
  h2 { 
    font-size: 36px; 
    color: #2aa4c9; 
    margin-bottom: 25px;
  }
  p, li { 
    font-size: 24px;
    line-height: 1.5;
  }
  footer { 
    font-size: 16px;
    color: #888; 
  }
  section.title-slide footer {
    display: none;
  }
  table {
    font-size: 24px; 
  }
  .columns {
    display: grid;
    grid-template-columns: 55% 40%;
    gap: 5%;
    align-items: top;
  }
  .col-20-80 { grid-template-columns: 20% 75%; }
  .col-30-70 { grid-template-columns: 30% 65%; }
  .col-40-60 { grid-template-columns: 40% 55%; }
  .col-50-50 { grid-template-columns: 47.5% 47.5%; }
  .col-60-40 { grid-template-columns: 55% 40%; }
  .col-70-30 { grid-template-columns: 65% 30%; }
  .col-80-20 { grid-template-columns: 75% 20%; }
---

<!-- footer: "Giovanni Norbedo" -->

<!-- _class: title-slide -->
![w:300](images/logo.jpg)

# Caos in una catena alimentare a tre specie

## Analisi e Stabilizzazione del Modello di Hastings-Powell

<br><br><br><br>

**Giovanni Norbedo** (SM3201486)
Sistemi Complessi 2025/2026
Intelligenza Artificiale & Data Analytics

---

## Contesto e condizioni per il caos

Sistemi 2D (es. Lotka-Volterra):
- **Nessun caos**
- **Punto fisso** o **ciclo limite**

Sistemi $\ge$ 3D:
- **Caos possibile**
- Orbite confinate, intrecciate e aperiodiche

---

## Il modello a tre livelli

<div class="columns col-50-50">
<div>

Catena trofica Hastings-Powell:

<br>

**Preda $X$**: crescita logistica

**Predatore $Y$**: consuma $X$

**Superpredatore $Z$**: consuma $Y$

</div>
<div>

![width:100%](images/predatore.png)

</div>
</div>

---

## Sistema originale

Variabili biologiche non scalate:

<br>

$$
\begin{aligned}
\frac{dX}{dT} &= R_0 X \left(1 - \frac{X}{K_0}\right) - C_1 F_1(X) Y \\
\frac{dY}{dT} &= F_1(X) Y - F_2(Y) Z - D_1 Y \\
\frac{dZ}{dT} &= C_2 F_2(Y) Z - D_2 Z
\end{aligned}
$$

<br>

Con $F_i(U) = \dfrac{A_i U}{B_i + U}$

---

## Parametri biologici

| Parametro  | Significato                         |
| :--------- | :---------------------------------- |
| $R_0$      | Tasso di crescita intrinseco di $X$ |
| $K_0$      | Carrying capacity di $X$            |
| $C_1^{-1}$ | Tasso di conversione di $X$ a $Y$   |
| $C_2$      | Tasso di conversione di $Y$ a $Z$   |
| $D_1$      | Tasso di mortalità di $Y$           |
| $D_2$      | Tasso di mortalità di $Z$           |

$A_1, A_2, B_1, B_2$ parametrizzano le risposte funzionali saturanti di tipo II.

---

## Adimensionalizzazione

Riduzione parametri (da 10 a 6):

<br>

$$
\begin{aligned}
\dot{x} &= x(1-x) - f_1(x)y \\
\dot{y} &= f_1(x)y - f_2(y)z - d_1 y \\
\dot{z} &= f_2(y)z - d_2 z
\end{aligned}
$$

<br>

$f_i(u) = \frac{a_i u}{1 + b_i u}$

Con $z = 0$ abbiamo il modello Rosenzweig-MacArthur

---

## Risposta funzionale di Holling Tipo II

![width:70%](images/holling.png)

---

## Analisi dei punti di equilibrio

$E_0 = (0, 0, 0)$: Sempre instabile (punto di sella) dato che $\lambda_1 = 1 > 0$.

$E_1 = (1, 0, 0)$: Sopravvive la preda (carrying capacity). Instabile se $d_1 < f_1(1)$, altrimenti stabile.

$E_2 = (x^*, y^*, 0)$: Coesistenza preda-predatore con estinzione del superpredatore. Instabile se $d_2 < f_2(y^*)$, altrimenti stabile.

$E_3 = (x^*, y^*, z^*)$: Coesistenza globale. Nel regime caotico questo punto è instabile e dà origine all'attrattore strano.

---

## Parametri e dinamiche

<br>

<div class="columns col-30-70">
<div>

| Parametro | Valore  |
| :-------- | :------ |
| $a_1$     | 5.0     |
| **$b_1$** | **3.0** |
| $a_2$     | 0.1     |
| $b_2$     | 2.0     |
| $d_1$     | 0.4     |
| $d_2$     | 0.01    |

</div>
<div>

$b_1$ Parametro guida variabile

$d_1 \gg d_2 \Rightarrow$ Sistema $X-Y$ rapido, $Z$ lento

</div>
</div>

---

## Equilibri nel Regime Caotico ($H=0$)

Valori analitici calcolati sul nostro set di parametri:

<div class="columns">
<div>

$E_0 = (0, 0, 0)$  
$\lambda = \{1,\ -0.4,\ -0.01\}$

$E_1 = (1, 0, 0)$  
$\lambda = \{-1,\ 0.85,\ -0.01\}$
*(Punto di sella)*

$E_2 = (0.105,\ 0.235,\ 0)$
$\lambda = \{0.006,\ 0.055 \pm 0.519i\}$
*(Fuoco repulsivo)*

</div>
<div>

$E_3 = (0.819,\ 0.125,\ 9.808)$
$\lambda = \{-0.611,\ 0.039 \pm 0.075i\}$

**Sella-Fuoco Instabile**

Un autovalore reale negativo (attrazione) e due complessi coniugati con parte reale positiva (repulsione a spirale).

</div>
</div>

---

## Dinamiche caotiche

<div class="columns col-50-50">
<div>

![width:100%](images/caos.png)

</div>
<div>

Oscillazioni rapide $X$ e $Y$  
Esplosione di $Z$ $\Rightarrow$ crollo di $Y$  
$Z$ crolla $\Rightarrow$ ripresa prede  

</div>
</div>

---

## Attrattore nello spazio delle fasi

<div class="columns col-40-60">
<div>

**Teacup Attractor**

Caos confinato in 3D  

Orbite aperiodiche infinite  

Struttura "a tazza rovesciata"  

</div>
<div>

![width:100%](images/caos_3d.png)

</div>
</div>

---

## Sensibilità alle condizioni iniziali

<div class="columns col-20-80">
<div>

**Effetto Farfalla**

Micro-perturbazione  
$\Delta = 10^{-4}$  

Divergenza drastica  

Previsione a lungo termine impossibile  

</div>
<div>

![width:100%](images/divergenza.png)

</div>
</div>

---

## Esponente di Lyapunov

<div class="columns col-30-70">
<div>

**Prova matematica del caos**

Distanza logaritmica $\ln(d(t))$  

$d(t) = \| \text{sol}_1(t) - \text{sol}_2(t) \|$

Differenze iniziali $\varepsilon = 10^{-8}$

Divergenza esponenziale  

$\lambda_{max} > 0$  
(sistema caotico)  

</div>
<div>

![width:100%](images/regressione.png)

</div>
</div>

---

## Diagramma di biforcazione

Raddoppi di periodo $\rightarrow$ Caos

**Isteresi**: Bistabilità e salti asimmetrici

<br>
<div style="text-align: center">
  <img src="images/biforcazioni.png" width="100%">
</div>

---

## Estensione al modello

<div class="columns col-70-30">
<div>

**Harvesting** sul superpredatore:

<br>

$$\dot{z} = f_2(y)z - d_2 z - H z$$

<br>

$H$: Sforzo di caccia/pesca/prelievo  
Obiettivo: Forzare la stabilità  

</div>
<div>

![width:100%](images/pesca.png)

</div>
</div>

---

## Diagramma di biforcazione al variare di H

<div class="columns col-30-70">
<div>


$H < 0.003$: Caos

$H = 0.003$: Ciclo Limite

$H = 0.004$: Punto Fisso $E^*$

$H \ge 0.005$: Estinzione di $Z$

</div>
<div>

![width:100%](images/biforcazioni_H.png)

</div>
</div>

---

## Risultati della stabilizzazione

<div style="text-align: center">
  <img src="images/stabilita_tempo.png" width="60%">
</div>

---

## Risultati della stabilizzazione 3D

<div style="text-align: center">
  <img src="images/stabilita_3d.png" width="100%">
</div>

---

## Analisi Jacobiana di E*

Equilibrio per $H=0.004$: $E^* \approx (0.68, 0.19, 9.98)$

Autovalori di $J(E^*)$:

<br>

- $\lambda_1 = -0.193$
- $\lambda_2 = -0.035 + 0.127i$
- $\lambda_3 = -0.035 - 0.127i$

<br>

**$\text{Re}(\lambda_i) < 0$** $\Rightarrow$ LAS

---

## Evoluzione temporale verso l'equilibrio

<div style="text-align: center">
  <img src="images/evoluzione_tempo.png" width="60%">
</div>

---

## Spazio delle fasi verso l'equilibrio

<div style="text-align: center">
  <img src="images/evoluzione_3d.png" width="50%">
</div>

---

## Conclusioni

Un prelievo calibrato ($H=0.004$) stabilizza il caos.  

Un lievissimo eccesso ($H \ge 0.005$) estingue il superpredatore.  

L'intervento umano esige tolleranze perfette.
