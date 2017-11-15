# cellHTS2_docker
Dockerfile for Bioconductor's popular cellHTS2 package

To run, do:

```bash
docker build . -t my_cellhts2
docker run -it my_cellhts2 R 
```
type ```q()``` to exit R session and docker container


test run
```bash
echo "
library(cellHTS2)
datadir <- system.file("KcViabSmall", package = "cellHTS2")
x <- readPlateList("Platelist.txt", path=datadir, name="KcViabSmall")
x <- configure(x, "Description.txt", "Plateconf.txt", "Screenlog.txt", path=datadir)
x <- annotate(x, "GeneIDs_Dm_HFAsubset_1.1.txt", path=datadir)
" > /tmp/cellhts_script.R
```
run with
```bash
docker run -v /tmp/cellhts_script.R:/data/cellhts_script.R -rm my_cellhts2 Rscript /data/cellhts_script.R 
```
