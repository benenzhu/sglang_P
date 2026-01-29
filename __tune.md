## BEFORE:

CONC4:
Mean TPOT (ms):                          28.75     
Median TPOT (ms):                        28.76     

CONC8:
Mean TPOT (ms):                          37.05     
Median TPOT (ms):                        37.19     

CONC16:
Mean TPOT (ms):                          47.57     
Median TPOT (ms):                        47.17      

CONC32:
Mean TPOT (ms):                          46.46     
Median TPOT (ms):                        46.60        

CONC64:
Mean TPOT (ms):                          61.18     
Median TPOT (ms):                        61.34  

## AFTER fix:
CONC4:
Mean TPOT (ms):                          21.98     
Median TPOT (ms):                        22.05 

CONC8:
Mean TPOT (ms):                          25.63     
Median TPOT (ms):                        25.56  

CONC16:
Median TPOT (ms):                        30.83     
P99 TPOT (ms):                           33.86

CONC32：
Median TPOT (ms):                        34.30     
P99 TPOT (ms):                           36.98  

CONC64:
Median TPOT (ms):                        45.25     
P99 TPOT (ms):                           49.73 


## add eagle (MTP=3):
CONC4:
Mean TPOT (ms):                          10.16     
Median TPOT (ms):                        10.44

CONC8:
Mean TPOT (ms):                          11.30     
Median TPOT (ms):                        11.34

CONC16:
Mean TPOT (ms):                          14.49     
Median TPOT (ms):                        13.24

CONC32:
Mean TPOT (ms):                          22.42     
Median TPOT (ms):                        20.21

CONC64:
Mean TPOT (ms):                          35.38     
Median TPOT (ms):                        37.02

---

## 性能对比表格 (Median TPOT ms)

| Concurrency | BEFORE | AFTER fix | + EAGLE (MTP=3) | BEFORE→AFTER | AFTER→EAGLE | Overall |
|-------------|--------|-----------|-----------------|--------------|-------------|---------|
| CONC4       | 28.76  | 22.05     | 10.44           | 1.30x        | 2.11x       | **2.75x** |
| CONC8       | 37.19  | 25.56     | 11.34           | 1.46x        | 2.25x       | **3.28x** |
| CONC16      | 47.17  | 30.83     | 13.24           | 1.53x        | 2.33x       | **3.56x** |
| CONC32      | 46.60  | 34.30     | 20.21           | 1.36x        | 1.70x       | **2.31x** |
| CONC64      | 61.34  | 45.25     | 37.02           | 1.36x        | 1.22x       | **1.66x** |

## Output Throughput (tok/s)

| Concurrency | + EAGLE (MTP=3) |
|-------------|-----------------|
| CONC4       | 371.57          |
| CONC8       | 613.90          |
| CONC16      | 862.10          |
| CONC32      | 1160.75         |
| CONC64      | 1139.65         |