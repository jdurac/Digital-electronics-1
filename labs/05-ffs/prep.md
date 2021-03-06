## Preparation tasks (done before the lab at home)

1. Write characteristic equations and complete truth tables for D, JK, T flip-flops where `q(n)` represents main output value before the clock edge and `q(n+1)` represents output value after the clock edge.
  
  ![CodeCogsEqn (2)](https://user-images.githubusercontent.com/99799946/158491289-c7a66f19-79b3-40c9-b45b-7ccbebb35162.png)


   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | `q(n+1)` has the same level as `d`and `q(n)` |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | `q(n+1)` has the same level as `d` and invert `q(n)` |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | `q(n+1)` has the same level as `d` and invert `q(n)` |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | `q(n+1)` has the same level as `d` and  `q(n)` |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 1 | 1 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | 0 | res |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | 0 | res |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 0 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | 1 | toggle |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | 0 | toggle |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | not change |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | invert (toggle) |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | invert (toggle) |

<a name="part1"></a>
