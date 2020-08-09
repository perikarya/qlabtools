# quick lab tools (qlabtools)
r package containing simple functions for laboratory experiments in biochemistry &amp; molecular biology

<h1>installation</h1>
install using devtools <br><br>

```
devtools::install_github("perikarya/qlabtools")
```

<h1>usage</h1>
<b>calc_mol(substance, mass, u="g"):</b> calculate the number of moles in a specified mass of a chemical compound by entering the mass & name of the substance. <br><br>

<b>calc_mass(substance, val, v="mol"):</b> calculate the mass of a chemical compound that will contain the specified number of moles (can provide the value in mol, mmol, umol, pmol & fmol).

<h1>examples</h1>

molarity calculation

```
calc_mol("potassium chloride", 5, "mg")
#> [1] "Number of moles: 6.70690811535882e-05"
```

mass calculation

```
calc_mass("sodium hydroxide", 3.12, "mmol")
#> [1] "0.12479064 grams"
```

<h1>notes</h1>

qlabtools uses <a href="https://github.com/ropensci/webchem">webchem</a> to query the pubchem database for chemical information used in the molarity and mass calculations. more functions will be added in the coming weeks.
