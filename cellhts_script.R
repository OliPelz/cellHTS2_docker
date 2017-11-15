library(cellHTS2)
datadir <- system.file(KcViabSmall, package = cellHTS2)
x <- readPlateList(Platelist.txt, path=datadir, name=KcViabSmall)
x <- configure(x, Description.txt, Plateconf.txt, Screenlog.txt, path=datadir)
x <- annotate(x, GeneIDs_Dm_HFAsubset_1.1.txt, path=datadir)

