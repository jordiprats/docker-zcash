# docker-zcash

```
docker build -t eyp/zcash .
```

```
docker run -d -t eyp/zcash
```

```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS               NAMES
f433dfed996f        zcash:latest        "/bin/sh -c 'bash -c   21 minutes ago      Up 21 minutes                           lonely_leakey       
$ docker logs f433dfed996f
                                                                                
             :88SX@888@@X8:                    8;     %X        X%     ;8       
          %%Xt%tt%SSSSS:XXXt@@              X            ::  ::            X    
        @S;;tt%%%t    ;;::XXXXSX           %               SS               %   
      .t:::;;%8888    88888tXXXX8;        S                                  S  
     .%...:::8             8::XXX%;       X                                  X  
     8888...:t888888X     8t;;::XX8       8                                  8  
    %888888...:::;:8    :Xttt;;;::X@                                            
    888888888...:St    8:%%tttt;;;:X       X                                X   
    88888888888S8    :%;ttt%%tttt;;X        8                              8    
    %888888888%t    8S:;;;tt%%%ttt;8          :                          :      
     8t8888888     S8888888Stt%%%t@            ::                      ::       
     .@tt888@              8;;ttt@;               t                  t          
      .8ttt8@SSSSS    SXXXX%:;;;X;                  8              8            
        X8ttt8888%    %88...::X8                      X.        .X              
          %8@tt88;8888%8888%8X                          :;    ;:                
             :@888@XXX@888:                                tt                   
                                                                                
                                                                                

Thank you for running a Zcash node!
You're helping to strengthen the network and contributing to a social good :)

In order to ensure you are adequately protecting your privacy when using Zcash,
please see <https://z.cash/support/security/>.

     Downloading blocks | 5523 / ~229050 (2%)
            Connections | 6
  Network solution rate | 8414224 Sol/s

Mining is paused while downloading blocks.

Since starting this node 21 minutes, 28 seconds ago:
- You have validated 152047 transactions!
- You have completed 0 Equihash solver runs.

[Press Ctrl+C to exit] [Set 'showmetrics=0' to hide]
$
```