function [r] = solve(n)
    // Schrijf de random mapping (zie wiki)
select n,
case 0 then r = 0 ,
case 1 then r = 4348 ,
case 2 then r = 8698 ,
case 3 then r = 13050 ,
case 4 then r = 7913 ,
case 5 then r = 12269 ,
case 6 then r = 16627 ,
case 7 then r = 20987 ,
case 8 then r = 15858 ,
case 9 then r = 20222 ,
case 10 then r = 24588 ,
case 11 then r = 19465 ,
case 12 then r = 23835 ,
case 13 then r = 28207 ,
case 14 then r = 32581 ,
case 15 then r = 27466 ,
case 16 then r = 31844 ,
case 17 then r = 36224 ,
case 18 then r = 40606 ,
case 19 then r = 35499 ,
case 20 then r = 39885 ,
case 21 then r = 44273 ,
case 22 then r = 1757 ,
case 23 then r = 6149 ,
case 24 then r = 10543 ,
case 25 then r = 14939 ,
case 26 then r = 9846 ,
case 27 then r = 14246 ,
case 28 then r = 18648 ,
case 29 then r = 23052 ,
case 30 then r = 17967 ,
case 31 then r = 22375 ,
case 32 then r = 26785 ,
case 33 then r = 21706 ,
case 34 then r = 26120 ,
case 35 then r = 30536 ,
case 36 then r = 34954 ,
case 37 then r = 29883 ,
case 38 then r = 34305 ,
case 39 then r = 38729 ,
case 40 then r = 43155 ,
case 41 then r = 38092 ,
case 42 then r = 42522 ,
case 43 then r = 9539 ,
case 44 then r = 4482 ,
case 45 then r = 8918 ,
case 46 then r = 13356 ,
case 47 then r = 17796 ,
case 48 then r = 12747 ,
case 49 then r = 17191 ,
case 50 then r = 21637 ,
case 51 then r = 26085 ,
case 52 then r = 21044 ,
case 53 then r = 25496 ,
case 54 then r = 29950 ,
case 55 then r = 24915 ,
case 56 then r = 29373 ,
case 57 then r = 33833 ,
case 58 then r = 38295 ,
case 59 then r = 33268 ,
case 60 then r = 37734 ,
case 61 then r = 42202 ,
case 62 then r = 46672 ,
case 63 then r = 41653 ,
case 64 then r = 46127 ,
case 65 then r = 13188 ,
case 66 then r = 8175 ,
case 67 then r = 12655 ,
case 68 then r = 17137 ,
case 69 then r = 21621 ,
case 70 then r = 16616 ,
case 71 then r = 21104 ,
case 72 then r = 25594 ,
case 73 then r = 20595 ,
case 74 then r = 25089 ,
case 75 then r = 29585 ,
case 76 then r = 34083 ,
case 77 then r = 29092 ,
case 78 then r = 33594 ,
case 79 then r = 38098 ,
case 80 then r = 42604 ,
case 81 then r = 37621 ,
case 82 then r = 42131 ,
case 83 then r = 46643 ,
case 84 then r = 41666 ,
case 85 then r = 46182 ,
case 86 then r = 13285 ,
case 87 then r = 10344 ,
case 88 then r = 5375 ,
case 89 then r = 9899 ,
case 90 then r = 14425 ,
case 91 then r = 18953 ,
case 92 then r = 13992 ,
case 93 then r = 18524 ,
case 94 then r = 23058 ,
case 95 then r = 18103 ,
case 96 then r = 22641 ,
case 97 then r = 27181 ,
case 98 then r = 31723 ,
case 99 then r = 26776 ,
case 100 then r = 31322 ,
case 101 then r = 35870 ,
case 102 then r = 40420 ,
case 103 then r = 35481 ,
case 104 then r = 40035 ,
case 105 then r = 44591 ,
case 106 then r = 39658 ,
case 107 then r = 44218 ,
case 108 then r = 11365 ,
case 109 then r = 15929 ,
case 110 then r = 11004 ,
case 111 then r = 15572 ,
case 112 then r = 20142 ,
case 113 then r = 24714 ,
case 114 then r = 19797 ,
case 115 then r = 24373 ,
case 116 then r = 28951 ,
case 117 then r = 24040 ,
case 118 then r = 28622 ,
case 119 then r = 33206 ,
case 120 then r = 37792 ,
case 121 then r = 32889 ,
case 122 then r = 37479 ,
case 123 then r = 34610 ,
case 124 then r = 39204 ,
case 125 then r = 34309 ,
case 126 then r = 38907 ,
case 127 then r = 43507 ,
case 128 then r = 38618 ,
case 129 then r = 5807 ,
case 130 then r = 10413 ,
case 131 then r = 15021 ,
case 132 then r = 10140 ,
case 133 then r = 14752 ,
case 134 then r = 19366 ,
case 135 then r = 23982 ,
case 136 then r = 19109 ,
case 137 then r = 23729 ,
case 138 then r = 28351 ,
case 139 then r = 23484 ,
case 140 then r = 28110 ,
case 141 then r = 32738 ,
case 142 then r = 37368 ,
case 143 then r = 32509 ,
case 144 then r = 37143 ,
case 145 then r = 41779 ,
case 146 then r = 36926 ,
case 147 then r = 41566 ,
case 148 then r = 46208 ,
case 149 then r = 50852 ,
case 150 then r = 38546 ,
case 151 then r = 5779 ,
case 152 then r = 10429 ,
case 153 then r = 15081 ,
case 154 then r = 10244 ,
case 155 then r = 14900 ,
case 156 then r = 19558 ,
case 157 then r = 14727 ,
case 158 then r = 19389 ,
case 159 then r = 24053 ,
case 160 then r = 28719 ,
case 161 then r = 23896 ,
case 162 then r = 28566 ,
case 163 then r = 33238 ,
case 164 then r = 37912 ,
case 165 then r = 33097 ,
case 166 then r = 37775 ,
case 167 then r = 42455 ,
case 168 then r = 37646 ,
case 169 then r = 42330 ,
case 170 then r = 47016 ,
case 171 then r = 51704 ,
case 172 then r = 9488 ,
case 173 then r = 6719 ,
case 174 then r = 11413 ,
case 175 then r = 16109 ,
case 176 then r = 11316 ,
case 177 then r = 16016 ,
case 178 then r = 20718 ,
case 179 then r = 15931 ,
case 180 then r = 20637 ,
case 181 then r = 25345 ,
case 182 then r = 30055 ,
case 183 then r = 25276 ,
case 184 then r = 29990 ,
case 185 then r = 34706 ,
case 186 then r = 39424 ,
case 187 then r = 34653 ,
case 188 then r = 39375 ,
case 189 then r = 44099 ,
case 190 then r = 39334 ,
case 191 then r = 44062 ,
case 192 then r = 48792 ,
case 193 then r = 16109 ,
case 194 then r = 3891 ,
case 195 then r = 8627 ,
case 196 then r = 13365 ,
case 197 then r = 18105 ,
case 198 then r = 13356 ,
case 199 then r = 18100 ,
case 200 then r = 22846 ,
case 201 then r = 18103 ,
case 202 then r = 22853 ,
case 203 then r = 27605 ,
case 204 then r = 32359 ,
case 205 then r = 27624 ,
case 206 then r = 32382 ,
case 207 then r = 37142 ,
case 208 then r = 32413 ,
case 209 then r = 37177 ,
case 210 then r = 41943 ,
case 211 then r = 46711 ,
case 212 then r = 34529 ,
case 213 then r = 39301 ,
case 214 then r = 44075 ,
case 215 then r = 11436 ,
case 216 then r = 6723 ,
case 217 then r = 11503 ,
case 218 then r = 16285 ,
case 219 then r = 11578 ,
case 220 then r = 16364 ,
case 221 then r = 21152 ,
case 222 then r = 25942 ,
case 223 then r = 21243 ,
case 224 then r = 26037 ,
case 225 then r = 30833 ,
case 226 then r = 35631 ,
case 227 then r = 30940 ,
case 228 then r = 35742 ,
case 229 then r = 33085 ,
case 230 then r = 28400 ,
case 231 then r = 33208 ,
case 232 then r = 38018 ,
case 233 then r = 42830 ,
case 234 then r = 38153 ,
case 235 then r = 42969 ,
case 236 then r = 10372 ,
case 237 then r = 15192 ,
case 238 then r = 10523 ,
case 239 then r = 15347 ,
case 240 then r = 20173 ,
case 241 then r = 15510 ,
case 242 then r = 20340 ,
case 243 then r = 25172 ,
case 244 then r = 30006 ,
case 245 then r = 17890 ,
case 246 then r = 22728 ,
case 247 then r = 27568 ,
case 248 then r = 32410 ,
case 249 then r = 27763 ,
case 250 then r = 32609 ,
case 251 then r = 37457 ,
case 252 then r = 32816 ,
case 253 then r = 37668 ,
case 254 then r = 42522 ,
case 255 then r = 47378 ,
case 256 then r = 42745 ,
case 257 then r = 47605 ,
case 258 then r = 15052 ,
case 259 then r = 19916 ,
case 260 then r = 7830 ,
case 261 then r = 12698 ,
case 262 then r = 17568 ,
case 263 then r = 12949 ,
case 264 then r = 17823 ,
case 265 then r = 22699 ,
case 266 then r = 27577 ,
case 267 then r = 22966 ,
case 268 then r = 27848 ,
case 269 then r = 32732 ,
case 270 then r = 37618 ,
case 271 then r = 33015 ,
case 272 then r = 37905 ,
case 273 then r = 42797 ,
case 274 then r = 30739 ,
case 275 then r = 35635 ,
case 276 then r = 40533 ,
case 277 then r = 45433 ,
case 278 then r = 40844 ,
case 279 then r = 8333 ,
case 280 then r = 13239 ,
case 281 then r = 8656 ,
case 282 then r = 13566 ,
case 283 then r = 18478 ,
case 284 then r = 23392 ,
case 285 then r = 18817 ,
case 286 then r = 23735 ,
case 287 then r = 21194 ,
case 288 then r = 26116 ,
case 289 then r = 21549 ,
case 290 then r = 26475 ,
case 291 then r = 31403 ,
case 292 then r = 26842 ,
case 293 then r = 31774 ,
case 294 then r = 36708 ,
case 295 then r = 41644 ,
case 296 then r = 37091 ,
case 297 then r = 42031 ,
case 298 then r = 46973 ,
case 299 then r = 51917 ,
case 300 then r = 39911 ,
case 301 then r = 7444 ,
case 302 then r = 12394 ,
case 303 then r = 7855 ,
case 304 then r = 12809 ,
case 305 then r = 17765 ,
case 306 then r = 22723 ,
case 307 then r = 18192 ,
case 308 then r = 23154 ,
case 309 then r = 28118 ,
case 310 then r = 33084 ,
case 311 then r = 28561 ,
case 312 then r = 26070 ,
case 313 then r = 31042 ,
case 314 then r = 26525 ,
case 315 then r = 31501 ,
case 316 then r = 36479 ,
case 317 then r = 41459 ,
case 318 then r = 36950 ,
case 319 then r = 41934 ,
case 320 then r = 46920 ,
case 321 then r = 51908 ,
case 322 then r = 9992 ,
case 323 then r = 14984 ,
case 324 then r = 12517 ,
case 325 then r = 8022 ,
case 326 then r = 13020 ,
case 327 then r = 18020 ,
case 328 then r = 23022 ,
case 329 then r = 18535 ,
case 330 then r = 23541 ,
case 331 then r = 28549 ,
case 332 then r = 33559 ,
case 333 then r = 29080 ,
case 334 then r = 34094 ,
case 335 then r = 31649 ,
case 336 then r = 27176 ,
case 337 then r = 32196 ,
case 338 then r = 37218 ,
case 339 then r = 42242 ,
case 340 then r = 37777 ,
case 341 then r = 42805 ,
case 342 then r = 47835 ,
case 343 then r = 15452 ,
case 344 then r = 10995 ,
case 345 then r = 16031 ,
case 346 then r = 13608 ,
case 347 then r = 9157 ,
case 348 then r = 14199 ,
case 349 then r = 19243 ,
case 350 then r = 24289 ,
case 351 then r = 19846 ,
case 352 then r = 24896 ,
case 353 then r = 29948 ,
case 354 then r = 25511 ,
case 355 then r = 30567 ,
case 356 then r = 35625 ,
case 357 then r = 33224 ,
case 358 then r = 28795 ,
case 359 then r = 33859 ,
case 360 then r = 38925 ,
case 361 then r = 43993 ,
case 362 then r = 39572 ,
case 363 then r = 44644 ,
case 364 then r = 49718 ,
case 365 then r = 7888 ,
case 366 then r = 12966 ,
case 367 then r = 10585 ,
case 368 then r = 15667 ,
case 369 then r = 11260 ,
case 370 then r = 16346 ,
case 371 then r = 21434 ,
case 372 then r = 26524 ,
case 373 then r = 22125 ,
case 374 then r = 27219 ,
case 375 then r = 32315 ,
case 376 then r = 27922 ,
case 377 then r = 25561 ,
case 378 then r = 30663 ,
case 379 then r = 35767 ,
case 380 then r = 31382 ,
case 381 then r = 36490 ,
case 382 then r = 41600 ,
case 383 then r = 46712 ,
case 384 then r = 42335 ,
case 385 then r = 47451 ,
case 386 then r = 15154 ,
case 387 then r = 3322 ,
case 388 then r = 8444 ,
case 389 then r = 13568 ,
case 390 then r = 18694 ,
case 391 then r = 14331 ,
case 392 then r = 19461 ,
case 393 then r = 24593 ,
case 394 then r = 29727 ,
case 395 then r = 25372 ,
case 396 then r = 23049 ,
case 397 then r = 28189 ,
case 398 then r = 23840 ,
case 399 then r = 28984 ,
case 400 then r = 34130 ,
case 401 then r = 39278 ,
case 402 then r = 34937 ,
case 403 then r = 40089 ,
case 404 then r = 45243 ,
case 405 then r = 50399 ,
case 406 then r = 38605 ,
case 407 then r = 43765 ,
case 408 then r = 11512 ,
case 409 then r = 7185 ,
case 410 then r = 12351 ,
case 411 then r = 17519 ,
case 412 then r = 22689 ,
case 413 then r = 18370 ,
case 414 then r = 23544 ,
case 415 then r = 21259 ,
case 416 then r = 16946 ,
case 417 then r = 22126 ,
case 418 then r = 27308 ,
case 419 then r = 32492 ,
case 420 then r = 28187 ,
case 421 then r = 33375 ,
case 422 then r = 38565 ,
case 423 then r = 43757 ,
case 424 then r = 31999 ,
case 425 then r = 37195 ,
case 426 then r = 42393 ,
case 427 then r = 38102 ,
case 428 then r = 43304 ,
case 429 then r = 11093 ,
case 430 then r = 16299 ,
case 431 then r = 12016 ,
case 432 then r = 9765 ,
case 433 then r = 14977 ,
case 434 then r = 20191 ,
case 435 then r = 15916 ,
case 436 then r = 21134 ,
case 437 then r = 26354 ,
case 438 then r = 22085 ,
case 439 then r = 27309 ,
case 440 then r = 32535 ,
case 441 then r = 30302 ,
case 442 then r = 26041 ,
case 443 then r = 31273 ,
case 444 then r = 36507 ,
case 445 then r = 41743 ,
case 446 then r = 37490 ,
case 447 then r = 42730 ,
case 448 then r = 47972 ,
case 449 then r = 36264 ,
case 450 then r = 41510 ,
case 451 then r = 9343 ,
case 452 then r = 14593 ,
case 453 then r = 10354 ,
case 454 then r = 15608 ,
case 455 then r = 20864 ,
case 456 then r = 26122 ,
case 457 then r = 21891 ,
case 458 then r = 19692 ,
case 459 then r = 24956 ,
case 460 then r = 20731 ,
case 461 then r = 25999 ,
case 462 then r = 31269 ,
case 463 then r = 36541 ,
case 464 then r = 32324 ,
case 465 then r = 37600 ,
case 466 then r = 35417 ,
case 467 then r = 40697 ,
case 468 then r = 36488 ,
case 469 then r = 41772 ,
case 470 then r = 47058 ,
case 471 then r = 42855 ,
case 472 then r = 10730 ,
case 473 then r = 16022 ,
case 474 then r = 13855 ,
case 475 then r = 9660 ,
case 476 then r = 14958 ,
case 477 then r = 20258 ,
case 478 then r = 25560 ,
case 479 then r = 21373 ,
case 480 then r = 26679 ,
case 481 then r = 24526 ,
case 482 then r = 20345 ,
case 483 then r = 25657 ,
case 484 then r = 30971 ,
case 485 then r = 36287 ,
case 486 then r = 32114 ,
case 487 then r = 37434 ,
case 488 then r = 42756 ,
case 489 then r = 31128 ,
case 490 then r = 36454 ,
case 491 then r = 41782 ,
case 492 then r = 47112 ,
case 493 then r = 5538 ,
case 494 then r = 10872 ,
case 495 then r = 16208 ,
case 496 then r = 21546 ,
case 497 then r = 9934 ,
case 498 then r = 15276 ,
case 499 then r = 20620 ,
case 500 then r = 16475 ,
case 501 then r = 21823 ,
case 502 then r = 27173 ,
case 503 then r = 32525 ,
case 504 then r = 20927 ,
case 505 then r = 26283 ,
case 506 then r = 31641 ,
case 507 then r = 37001 ,
case 508 then r = 32872 ,
case 509 then r = 38236 ,
case 510 then r = 43602 ,
case 511 then r = 39479 ,
case 512 then r = 37388 ,
case 513 then r = 42760 ,
case 514 then r = 48134 ,
case 515 then r = 6604 ,
case 516 then r = 11982 ,
case 517 then r = 17362 ,
case 518 then r = 22744 ,
case 519 then r = 11176 ,
case 520 then r = 16562 ,
case 521 then r = 21950 ,
case 522 then r = 17849 ,
case 523 then r = 23241 ,
case 524 then r = 28635 ,
case 525 then r = 34031 ,
case 526 then r = 22477 ,
case 527 then r = 27877 ,
case 528 then r = 33279 ,
case 529 then r = 38683 ,
case 530 then r = 34598 ,
case 531 then r = 40006 ,
case 532 then r = 45416 ,
case 533 then r = 33876 ,
case 534 then r = 39290 ,
case 535 then r = 44706 ,
case 536 then r = 12709 ,
case 537 then r = 8638 ,
case 538 then r = 14060 ,
case 539 then r = 19484 ,
case 540 then r = 17449 ,
case 541 then r = 13386 ,
case 542 then r = 18816 ,
case 543 then r = 24248 ,
case 544 then r = 20191 ,
case 545 then r = 25627 ,
case 546 then r = 31065 ,
case 547 then r = 29044 ,
case 548 then r = 24995 ,
case 549 then r = 30439 ,
case 550 then r = 35885 ,
case 551 then r = 31842 ,
case 552 then r = 37292 ,
case 553 then r = 42744 ,
case 554 then r = 40737 ,
case 555 then r = 36702 ,
case 556 then r = 42160 ,
case 557 then r = 47620 ,
case 558 then r = 15667 ,
case 559 then r = 11640 ,
case 560 then r = 9645 ,
case 561 then r = 15113 ,
case 562 then r = 11092 ,
case 563 then r = 16564 ,
case 564 then r = 22038 ,
case 565 then r = 27514 ,
case 566 then r = 23501 ,
case 567 then r = 21520 ,
case 568 then r = 27002 ,
case 569 then r = 32486 ,
case 570 then r = 28481 ,
case 571 then r = 33969 ,
case 572 then r = 39459 ,
case 573 then r = 27999 ,
case 574 then r = 33493 ,
case 575 then r = 38989 ,
case 576 then r = 44487 ,
case 577 then r = 40496 ,
case 578 then r = 45998 ,
case 579 then r = 14087 ,
case 580 then r = 12132 ,
case 581 then r = 8149 ,
case 582 then r = 13659 ,
case 583 then r = 19171 ,
case 584 then r = 15194 ,
case 585 then r = 20710 ,
case 586 then r = 18767 ,
case 587 then r = 24287 ,
case 588 then r = 20318 ,
case 589 then r = 25842 ,
case 590 then r = 31368 ,
case 591 then r = 36896 ,
case 592 then r = 32935 ,
case 593 then r = 31006 ,
case 594 then r = 36540 ,
case 595 then r = 32585 ,
case 596 then r = 38123 ,
case 597 then r = 43663 ,
case 598 then r = 49205 ,
case 599 then r = 37797 ,
case 600 then r = 43343 ,
case 601 then r = 11476 ,
case 602 then r = 17026 ,
case 603 then r = 13087 ,
case 604 then r = 18641 ,
case 605 then r = 16736 ,
case 606 then r = 12803 ,
case 607 then r = 18363 ,
case 608 then r = 23925 ,
case 609 then r = 29489 ,
case 610 then r = 25564 ,
case 611 then r = 23671 ,
case 612 then r = 29241 ,
case 613 then r = 34813 ,
case 614 then r = 30896 ,
case 615 then r = 36472 ,
case 616 then r = 42050 ,
case 617 then r = 30678 ,
case 618 then r = 36260 ,
case 619 then r = 41844 ,
case 620 then r = 47430 ,
case 621 then r = 43527 ,
case 622 then r = 11702 ,
case 623 then r = 9833 ,
case 624 then r = 5936 ,
case 625 then r = 11532 ,
case 626 then r = 17130 ,
case 627 then r = 22730 ,
case 628 then r = 18841 ,
case 629 then r = 16984 ,
case 630 then r = 22590 ,
case 631 then r = 28198 ,
case 632 then r = 24317 ,
case 633 then r = 29929 ,
case 634 then r = 35543 ,
case 635 then r = 24207 ,
case 636 then r = 29825 ,
case 637 then r = 35445 ,
case 638 then r = 41067 ,
case 639 then r = 37200 ,
case 640 then r = 42826 ,
case 641 then r = 40993 ,
case 642 then r = 46623 ,
case 643 then r = 5349 ,
case 644 then r = 10983 ,
case 645 then r = 16619 ,
case 646 then r = 12766 ,
case 647 then r = 10945 ,
case 648 then r = 16587 ,
case 649 then r = 22231 ,
case 650 then r = 18386 ,
case 651 then r = 24034 ,
case 652 then r = 29684 ,
case 653 then r = 27875 ,
case 654 then r = 24038 ,
case 655 then r = 29694 ,
case 656 then r = 35352 ,
case 657 then r = 31521 ,
case 658 then r = 29722 ,
case 659 then r = 35386 ,
case 660 then r = 41052 ,
case 661 then r = 37229 ,
case 662 then r = 42899 ,
case 663 then r = 48571 ,
case 664 then r = 46784 ,
case 665 then r = 5554 ,
case 666 then r = 11232 ,
case 667 then r = 16912 ,
case 668 then r = 13103 ,
case 669 then r = 18787 ,
case 670 then r = 17012 ,
case 671 then r = 22700 ,
case 672 then r = 18899 ,
case 673 then r = 24591 ,
case 674 then r = 30285 ,
case 675 then r = 28520 ,
case 676 then r = 24727 ,
case 677 then r = 30427 ,
case 678 then r = 36129 ,
case 679 then r = 32342 ,
case 680 then r = 38048 ,
case 681 then r = 36295 ,
case 682 then r = 42005 ,
case 683 then r = 38226 ,
case 684 then r = 43940 ,
case 685 then r = 49656 ,
case 686 then r = 10498 ,
case 687 then r = 6727 ,
case 688 then r = 12449 ,
case 689 then r = 18173 ,
case 690 then r = 14408 ,
case 691 then r = 20136 ,
case 692 then r = 18405 ,
case 693 then r = 24137 ,
case 694 then r = 20380 ,
case 695 then r = 26116 ,
case 696 then r = 31854 ,
case 697 then r = 20642 ,
case 698 then r = 26384 ,
case 699 then r = 32128 ,
case 700 then r = 37874 ,
case 701 then r = 34131 ,
case 702 then r = 32420 ,
case 703 then r = 38172 ,
case 704 then r = 43926 ,
case 705 then r = 40191 ,
case 706 then r = 45949 ,
case 707 then r = 51709 ,
case 708 then r = 3104 ,
case 709 then r = 8868 ,
case 710 then r = 14634 ,
case 711 then r = 20402 ,
case 712 then r = 16681 ,
case 713 then r = 14992 ,
case 714 then r = 20766 ,
case 715 then r = 26542 ,
case 716 then r = 22829 ,
case 717 then r = 28609 ,
case 718 then r = 26930 ,
case 719 then r = 23223 ,
case 720 then r = 29009 ,
case 721 then r = 34797 ,
case 722 then r = 40587 ,
case 723 then r = 29427 ,
case 724 then r = 35221 ,
case 725 then r = 41017 ,
case 726 then r = 46815 ,
case 727 then r = 43124 ,
case 728 then r = 41465 ,
case 729 then r = 9854 ,
case 730 then r = 6169 ,
case 731 then r = 11977 ,
case 732 then r = 17787 ,
case 733 then r = 16138 ,
case 734 then r = 12461 ,
case 735 then r = 18277 ,
case 736 then r = 24095 ,
case 737 then r = 29915 ,
case 738 then r = 26246 ,
case 739 then r = 24609 ,
case 740 then r = 30435 ,
case 741 then r = 26772 ,
case 742 then r = 32602 ,
case 743 then r = 38434 ,
case 744 then r = 36807 ,
case 745 then r = 33152 ,
case 746 then r = 38990 ,
case 747 then r = 44830 ,
case 748 then r = 50672 ,
case 749 then r = 39564 ,
case 750 then r = 45410 ,
case 751 then r = 13843 ,
case 752 then r = 10202 ,
case 753 then r = 16054 ,
case 754 then r = 14447 ,
case 755 then r = 20303 ,
case 756 then r = 16670 ,
case 757 then r = 22530 ,
case 758 then r = 20931 ,
case 759 then r = 17304 ,
case 760 then r = 23170 ,
case 761 then r = 29038 ,
case 762 then r = 34908 ,
case 763 then r = 23828 ,
case 764 then r = 29702 ,
case 765 then r = 35578 ,
case 766 then r = 41456 ,
case 767 then r = 37845 ,
case 768 then r = 36266 ,
case 769 then r = 42150 ,
case 770 then r = 38545 ,
case 771 then r = 44433 ,
case 772 then r = 12908 ,
case 773 then r = 11339 ,
case 774 then r = 7742 ,
case 775 then r = 13638 ,
case 776 then r = 19536 ,
case 777 then r = 25436 ,
case 778 then r = 14386 ,
case 779 then r = 20290 ,
case 780 then r = 26196 ,
case 781 then r = 22613 ,
case 782 then r = 28523 ,
case 783 then r = 26974 ,
case 784 then r = 32888 ,
case 785 then r = 29313 ,
case 786 then r = 35231 ,
case 787 then r = 33690 ,
case 788 then r = 39612 ,
case 789 then r = 36045 ,
case 790 then r = 41971 ,
case 791 then r = 47899 ,
case 792 then r = 36877 ,
case 793 then r = 5394 ,
case 794 then r = 11328 ,
case 795 then r = 17264 ,
case 796 then r = 13711 ,
case 797 then r = 12190 ,
case 798 then r = 18132 ,
case 799 then r = 24076 ,
case 800 then r = 20531 ,
case 801 then r = 26479 ,
case 802 then r = 24968 ,
case 803 then r = 21429 ,
case 804 then r = 27383 ,
case 805 then r = 33339 ,
case 806 then r = 31836 ,
case 807 then r = 28305 ,
case 808 then r = 34267 ,
case 809 then r = 40231 ,
case 810 then r = 46197 ,
case 811 then r = 35213 ,
case 812 then r = 41183 ,
case 813 then r = 47155 ,
case 814 then r = 43638 ,
case 815 then r = 4738 ,
case 816 then r = 10716 ,
case 817 then r = 16696 ,
case 818 then r = 13187 ,
case 819 then r = 19171 ,
case 820 then r = 17696 ,
case 821 then r = 23684 ,
case 822 then r = 20183 ,
case 823 then r = 26175 ,
case 824 then r = 24708 ,
case 825 then r = 21213 ,
case 826 then r = 27211 ,
case 827 then r = 33211 ,
case 828 then r = 39213 ,
case 829 then r = 28265 ,
case 830 then r = 34271 ,
case 831 then r = 40279 ,
case 832 then r = 36798 ,
case 833 then r = 35349 ,
case 834 then r = 41363 ,
case 835 then r = 47379 ,
case 836 then r = 6491 ,
case 837 then r = 12511 ,
case 838 then r = 11072 ,
case 839 then r = 17096 ,
case 840 then r = 13631 ,
case 841 then r = 19659 ,
case 842 then r = 18228 ,
case 843 then r = 14769 ,
case 844 then r = 20803 ,
case 845 then r = 26839 ,
case 846 then r = 32877 ,
case 847 then r = 21965 ,
case 848 then r = 28007 ,
case 849 then r = 34051 ,
case 850 then r = 40097 ,
case 851 then r = 29193 ,
case 852 then r = 35243 ,
case 853 then r = 41295 ,
case 854 then r = 37858 ,
case 855 then r = 43914 ,
case 856 then r = 42511 ,
case 857 then r = 48571 ,
case 858 then r = 7727 ,
case 859 then r = 13791 ,
case 860 then r = 12396 ,
case 861 then r = 18464 ,
case 862 then r = 15043 ,
case 863 then r = 21115 ,
case 864 then r = 19728 ,
case 865 then r = 16313 ,
case 866 then r = 22391 ,
case 867 then r = 28471 ,
case 868 then r = 34553 ,
case 869 then r = 23685 ,
case 870 then r = 29771 ,
case 871 then r = 35859 ,
case 872 then r = 41949 ,
case 873 then r = 31089 ,
case 874 then r = 37183 ,
case 875 then r = 43279 ,
case 876 then r = 39886 ,
case 877 then r = 38525 ,
case 878 then r = 44627 ,
case 879 then r = 13316 ,
case 880 then r = 9931 ,
case 881 then r = 8578 ,
case 882 then r = 14688 ,
case 883 then r = 20800 ,
case 884 then r = 17423 ,
case 885 then r = 23539 ,
case 886 then r = 22196 ,
case 887 then r = 18825 ,
case 888 then r = 24947 ,
case 889 then r = 31071 ,
case 890 then r = 29736 ,
case 891 then r = 26373 ,
case 892 then r = 32503 ,
case 893 then r = 38635 ,
case 894 then r = 37308 ,
case 895 then r = 33953 ,
case 896 then r = 40091 ,
case 897 then r = 46231 ,
case 898 then r = 35421 ,
case 899 then r = 41565 ,
case 900 then r = 47711 ,
case 901 then r = 16444 ,
case 902 then r = 5642 ,
case 903 then r = 11794 ,
case 904 then r = 17948 ,
case 905 then r = 14613 ,
case 906 then r = 13310 ,
case 907 then r = 19470 ,
case 908 then r = 25632 ,
case 909 then r = 22305 ,
case 910 then r = 28471 ,
case 911 then r = 27178 ,
case 912 then r = 33348 ,
case 913 then r = 30029 ,
case 914 then r = 36203 ,
case 915 then r = 34918 ,
case 916 then r = 31605 ,
case 917 then r = 37785 ,
case 918 then r = 43967 ,
case 919 then r = 42690 ,
case 920 then r = 39385 ,
case 921 then r = 45573 ,
case 922 then r = 14348 ,
case 923 then r = 13079 ,
case 924 then r = 9782 ,
case 925 then r = 15978 ,
case 926 then r = 22176 ,
case 927 then r = 11424 ,
case 928 then r = 17626 ,
case 929 then r = 23830 ,
case 930 then r = 30036 ,
case 931 then r = 19292 ,
case 932 then r = 25502 ,
case 933 then r = 31714 ,
case 934 then r = 37928 ,
case 935 then r = 27192 ,
case 936 then r = 33410 ,
case 937 then r = 39630 ,
case 938 then r = 36361 ,
case 939 then r = 35124 ,
case 940 then r = 41350 ,
case 941 then r = 47578 ,
case 942 then r = 44317 ,
case 943 then r = 5673 ,
case 944 then r = 11907 ,
case 945 then r = 18143 ,
case 946 then r = 14890 ,
case 947 then r = 13669 ,
case 948 then r = 19911 ,
case 949 then r = 16664 ,
case 950 then r = 22910 ,
case 951 then r = 21697 ,
case 952 then r = 27947 ,
case 953 then r = 24708 ,
case 954 then r = 30962 ,
case 955 then r = 29757 ,
case 956 then r = 36015 ,
case 957 then r = 32784 ,
case 958 then r = 31585 ,
case 959 then r = 37849 ,
case 960 then r = 34624 ,
case 961 then r = 40892 ,
case 962 then r = 39701 ,
case 963 then r = 45973 ,
case 964 then r = 42756 ,
case 965 then r = 11617 ,
case 966 then r = 10434 ,
case 967 then r = 7223 ,
case 968 then r = 13505 ,
case 969 then r = 19789 ,
case 970 then r = 18614 ,
case 971 then r = 15411 ,
case 972 then r = 21701 ,
case 973 then r = 27993 ,
case 974 then r = 26826 ,
case 975 then r = 23631 ,
case 976 then r = 29929 ,
case 977 then r = 36229 ,
case 978 then r = 25579 ,
case 979 then r = 31883 ,
case 980 then r = 38189 ,
case 981 then r = 44497 ,
case 982 then r = 33855 ,
case 983 then r = 40167 ,
case 984 then r = 46481 ,
case 985 then r = 45336 ,
case 986 then r = 4748 ,
case 987 then r = 11068 ,
case 988 then r = 17390 ,
case 989 then r = 6762 ,
case 990 then r = 13088 ,
case 991 then r = 19416 ,
case 992 then r = 25746 ,
case 993 then r = 15126 ,
case 994 then r = 21460 ,
case 995 then r = 27796 ,
case 996 then r = 34134 ,
case 997 then r = 23522 ,
case 998 then r = 29864 ,
case 999 then r = 36208 ,
case 1000 then r = 25602 ,
end
endfunction
