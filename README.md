# quick lab tools (qlabtools)
r package containing simple functions for laboratory experiments in biochemistry &amp; molecular biology

<h1>installation</h1>
install using devtools <br><br>

```
devtools::install_github("perikarya/qlabtools")
```

<h1>usage</h1>
<b>calc_mol(substance, mass, u):</b> calculate the number of moles in a specified mass of a chemical compound by entering the mass & name of the substance. mass can be specified in g, mg, ug, pg & fg, defaulting to g if u is unspecified. <br><br>

<b>calc_mass(substance, val, u):</b> calculate the mass of a chemical compound that will contain the specified number of moles. value can be provided as mol, mmol, umol, pmol & fmol, with default unit set to mol).

<b>solution_molarity_calc(substance, conc, conc_u, vol, vol_u):</b> calculate the mass of a chemical compound to obtain a solution of the desired molarity and volume. concentration units can be provided as M, mM, uM, nM, pM and fM, with M as default. volume units can be provided as L, mL and uL, with L as default.

<h1>examples</h1>

molarity calculation

```
#> calc_mol("potassium chloride", 5, "mg")
[1] "Number of moles: 6.70690811535882e-05"
```

mass calculation

```
#> calc_mass("sodium hydroxide", 3.12, "mmol")
[1] "0.12479064 grams"
```

solution molarity calculation

```
#> calc_mass_req("sodium hydroxide", 5, "M", 200, "ml")
[1] "39.997 grams"
```

antibody dilution finder

```
#> find_dilutions_thermo(331594, "primary")
[1] "Occludin Monoclonal Antibody (OC-3F10), Alexa Fluor™ 594"
                Applications Tested Dilution
           western blot (wb)     0.1-1 µg/mL
  immunohistochemistry (ihc)               -
 immunocytochemistry (iccif)     2.5-5 µg/mL
               elisa (elisa)     0.1-1 µg/mL
```

<h1>notes</h1>

qlabtools uses <a href="https://github.com/ropensci/webchem">webchem</a> to query the pubchem database for chemical information used in the molarity and mass calculations. more functions will be added in the coming weeks.
