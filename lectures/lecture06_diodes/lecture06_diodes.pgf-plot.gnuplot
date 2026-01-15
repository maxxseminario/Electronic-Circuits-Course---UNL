set table "lecture06_diodes.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set samples 200; set dummy x; plot [x=0:0.8] 0.00001*(exp(x/0.026)-1)*1000;
