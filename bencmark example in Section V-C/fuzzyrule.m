function fuzzyrule_matrix= fuzzyrule()

fuzzyrule_matrix= [ 1     1     1     1     1
     2     1     1     1     1
     3     1     1     1     1
     1     2     1     1     1
     2     2     1     1     1
     3     2     1     1     1
     1     3     1     1     1
     2     3     1     1     1
     3     3     1     1     1
     1     1     2     1     1
     2     1     2     1     1
     3     1     2     1     1
     1     2     2     1     1
     2     2     2     1     1
     3     2     2     1     1
     1     3     2     1     1
     2     3     2     1     1
     3     3     2     1     1
     1     1     3     1     1
     2     1     3     1     1
     3     1     3     1     1
     1     2     3     1     1
     2     2     3     1     1
     3     2     3     1     1
     1     3     3     1     1
     2     3     3     1     1
     3     3     3     1     1
     1     1     1     2     1
     2     1     1     2     1
     3     1     1     2     1
     1     2     1     2     1
     2     2     1     2     1
     3     2     1     2     1
     1     3     1     2     1
     2     3     1     2     1
     3     3     1     2     1
     1     1     2     2     1
     2     1     2     2     1
     3     1     2     2     1
     1     2     2     2     1
     2     2     2     2     1
     3     2     2     2     1
     1     3     2     2     1
     2     3     2     2     1
     3     3     2     2     1
     1     1     3     2     1
     2     1     3     2     1
     3     1     3     2     1
     1     2     3     2     1
     2     2     3     2     1
     3     2     3     2     1
     1     3     3     2     1
     2     3     3     2     1
     3     3     3     2     1
     1     1     1     3     1
     2     1     1     3     1
     3     1     1     3     1
     1     2     1     3     1
     2     2     1     3     1
     3     2     1     3     1
     1     3     1     3     1
     2     3     1     3     1
     3     3     1     3     1
     1     1     2     3     1
     2     1     2     3     1
     3     1     2     3     1
     1     2     2     3     1
     2     2     2     3     1
     3     2     2     3     1
     1     3     2     3     1
     2     3     2     3     1
     3     3     2     3     1
     1     1     3     3     1
     2     1     3     3     1
     3     1     3     3     1
     1     2     3     3     1
     2     2     3     3     1
     3     2     3     3     1
     1     3     3     3     1
     2     3     3     3     1
     3     3     3     3     1
     1     1     1     1     2
     2     1     1     1     2
     3     1     1     1     2
     1     2     1     1     2
     2     2     1     1     2
     3     2     1     1     2
     1     3     1     1     2
     2     3     1     1     2
     3     3     1     1     2
     1     1     2     1     2
     2     1     2     1     2
     3     1     2     1     2
     1     2     2     1     2
     2     2     2     1     2
     3     2     2     1     2
     1     3     2     1     2
     2     3     2     1     2
     3     3     2     1     2
     1     1     3     1     2
     2     1     3     1     2
     3     1     3     1     2
     1     2     3     1     2
     2     2     3     1     2
     3     2     3     1     2
     1     3     3     1     2
     2     3     3     1     2
     3     3     3     1     2
     1     1     1     2     2
     2     1     1     2     2
     3     1     1     2     2
     1     2     1     2     2
     2     2     1     2     2
     3     2     1     2     2
     1     3     1     2     2
     2     3     1     2     2
     3     3     1     2     2
     1     1     2     2     2
     2     1     2     2     2
     3     1     2     2     2
     1     2     2     2     2
     2     2     2     2     2
     3     2     2     2     2
     1     3     2     2     2
     2     3     2     2     2
     3     3     2     2     2
     1     1     3     2     2
     2     1     3     2     2
     3     1     3     2     2
     1     2     3     2     2
     2     2     3     2     2
     3     2     3     2     2
     1     3     3     2     2
     2     3     3     2     2
     3     3     3     2     2
     1     1     1     3     2
     2     1     1     3     2
     3     1     1     3     2
     1     2     1     3     2
     2     2     1     3     2
     3     2     1     3     2
     1     3     1     3     2
     2     3     1     3     2
     3     3     1     3     2
     1     1     2     3     2
     2     1     2     3     2
     3     1     2     3     2
     1     2     2     3     2
     2     2     2     3     2
     3     2     2     3     2
     1     3     2     3     2
     2     3     2     3     2
     3     3     2     3     2
     1     1     3     3     2
     2     1     3     3     2
     3     1     3     3     2
     1     2     3     3     2
     2     2     3     3     2
     3     2     3     3     2
     1     3     3     3     2
     2     3     3     3     2
     3     3     3     3     2
     1     1     1     1     3
     2     1     1     1     3
     3     1     1     1     3
     1     2     1     1     3
     2     2     1     1     3
     3     2     1     1     3
     1     3     1     1     3
     2     3     1     1     3
     3     3     1     1     3
     1     1     2     1     3
     2     1     2     1     3
     3     1     2     1     3
     1     2     2     1     3
     2     2     2     1     3
     3     2     2     1     3
     1     3     2     1     3
     2     3     2     1     3
     3     3     2     1     3
     1     1     3     1     3
     2     1     3     1     3
     3     1     3     1     3
     1     2     3     1     3
     2     2     3     1     3
     3     2     3     1     3
     1     3     3     1     3
     2     3     3     1     3
     3     3     3     1     3
     1     1     1     2     3
     2     1     1     2     3
     3     1     1     2     3
     1     2     1     2     3
     2     2     1     2     3
     3     2     1     2     3
     1     3     1     2     3
     2     3     1     2     3
     3     3     1     2     3
     1     1     2     2     3
     2     1     2     2     3
     3     1     2     2     3
     1     2     2     2     3
     2     2     2     2     3
     3     2     2     2     3
     1     3     2     2     3
     2     3     2     2     3
     3     3     2     2     3
     1     1     3     2     3
     2     1     3     2     3
     3     1     3     2     3
     1     2     3     2     3
     2     2     3     2     3
     3     2     3     2     3
     1     3     3     2     3
     2     3     3     2     3
     3     3     3     2     3
     1     1     1     3     3
     2     1     1     3     3
     3     1     1     3     3
     1     2     1     3     3
     2     2     1     3     3
     3     2     1     3     3
     1     3     1     3     3
     2     3     1     3     3
     3     3     1     3     3
     1     1     2     3     3
     2     1     2     3     3
     3     1     2     3     3
     1     2     2     3     3
     2     2     2     3     3
     3     2     2     3     3
     1     3     2     3     3
     2     3     2     3     3
     3     3     2     3     3
     1     1     3     3     3
     2     1     3     3     3
     3     1     3     3     3
     1     2     3     3     3
     2     2     3     3     3
     3     2     3     3     3
     1     3     3     3     3
     2     3     3     3     3
     3     3     3     3     3]; % key in % format is m1, m2, m3, b_1, b_1 must be 1

 rule=[ 0.8147
    0.9058
    0.1270
    0.9134
    0.6324
    0.0975
    0.2785
    0.5469
    0.9575
    0.9649
    0.1576
    0.9706
    0.9572
    0.4854
    0.8003
    0.1419
    0.4218
    0.9157
    0.7922
    0.9595
    0.6557
    0.0357
    0.8491
    0.9340
    0.6787
    0.7577
    0.7431
    0.3922
    0.6555
    0.1712
    0.7060
    0.0318
    0.2769
    0.0462
    0.0971
    0.8235
    0.6948
    0.3171
    0.9502
    0.0344
    0.4387
    0.3816
    0.7655
    0.7952
    0.1869
    0.4898
    0.4456
    0.6463
    0.7094
    0.7547
    0.2760
    0.6797
    0.6551
    0.1626
    0.1190
    0.4984
    0.9597
    0.3404
    0.5853
    0.2238
    0.7513
    0.2551
    0.5060
    0.6991
    0.8909
    0.9593
    0.5472
    0.1386
    0.1493
    0.2575
    0.8407
    0.2543
    0.8143
    0.2435
    0.9293
    0.3500
    0.1966
    0.2511
    0.6160
    0.4733
    0.3517
    0.8308
    0.5853
    0.5497
    0.9172
    0.2858
    0.7572
    0.7537
    0.3804
    0.5678
    0.0759
    0.0540
    0.5308
    0.7792
    0.9340
    0.1299
    0.5688
    0.4694
    0.0119
    0.3371
    0.1622
    0.7943
    0.3112
    0.5285
    0.1656
    0.6020
    0.2630
    0.6541
    0.6892
    0.7482
    0.4505
    0.0838
    0.2290
    0.9133
    0.1524
    0.8258
    0.5383
    0.9961
    0.0782
    0.4427
    0.1067
    0.9619
    0.0046
    0.7749
    0.8173
    0.8687
    0.0844
    0.3998
    0.2599
    0.8001
    0.4314
    0.9106
    0.1818
    0.2638
    0.1455
    0.1361
    0.8693
    0.5797
    0.5499
    0.1450
    0.8530
    0.6221
    0.3510
    0.5132
    0.4018
    0.0760
    0.2399
    0.1233
    0.1839
    0.2400
    0.4173
    0.0497
    0.9027
    0.9448
    0.4909
    0.4893
    0.3377
    0.9001
    0.3692
    0.1112
    0.7803
    0.3897
    0.2417
    0.4039
    0.0965
    0.1320
    0.9421
    0.9561
    0.5752
    0.0598
    0.2348
    0.3532
    0.8212
    0.0154
    0.0430
    0.1690
    0.6491
    0.7317
    0.6477
    0.4509
    0.5470
    0.2963
    0.7447
    0.1890
    0.6868
    0.1835
    0.3685
    0.6256
    0.7802
    0.0811
    0.9294
    0.7757
    0.4868
    0.4359
    0.4468
    0.3063
    0.5085
    0.5108
    0.8176
    0.7948
    0.6443
    0.3786
    0.8116
    0.5328
    0.3507
    0.9390
    0.8759
    0.5502
    0.6225
    0.5870
    0.2077
    0.3012
    0.4709
    0.2305
    0.8443
    0.1948
    0.2259
    0.1707
    0.2277
    0.4357
    0.3111
    0.9234
    0.4302
    0.1848
    0.9049
    0.9797
    0.4389
    0.1111
    0.2581
    0.4087
    0.5949
    0.2622
    0.6028
    0.7112
    0.2217
    0.1174
    0.2967
    0.3188
    0.4242
    0.5079
    0.0855
    0.2625
    0.8010];

fuzzyrule_matrix=[fuzzyrule_matrix rule];
