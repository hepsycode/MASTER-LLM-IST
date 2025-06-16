# ***MASTER-LLM***: a conceptual framework to support ***M***odeling ***A***ssistants using ***S***ynthetic ***T***race g***E***neration of modeling ope***R***ations through ***LLM***

This repository presents our proposed approach and the corresponding replication package. The core concept involves integrating a Modeling Event Recorder (MER) framework within a Modeling System Environment (MSE). This framework captures and traces designer activities and modeling steps. Subsequently, it injects these events into Intelligent Modeling Assistants (IMAs), enabling the generation of personalized suggestions for modeling actions most relevant to each designer. The integration path is shown in the Figure below.

<p align="center">
<img src="img/MER-MORGAN_approach-Extended-scaled.png" width="711" height="700">
</p>

The repository is organized as follows:

1. **01-02-03 MSE** contains two sub-folders:
    - **MSE_HEPSYCODE**: This folder contains the HEPSYCODE Graphical Modeling Workbench and the Modeling Event Recorder (MER);
    - **MSE_CAEX**: This folder contains the CAEX Graphical Modeling Workbench and the Modeling Event Recorder (MER);
4. **04 Trace Parser**: This folder contains the results of parsing the MER tracing files for each MSE;
5. **05-06-07 LLM Synthetic Dataset**: This folder contains one sub-folder for trace generation as follows:
    - **D2 Trace Synthetic Dataset**: This contains the prompt schemas used and the results of the queries made to the considered LLMs for each MSE (e.g., CAEX and HEPSYCODE);
6. **08 Trace Quality Checker**: This folder contains the Python code for extracting metrics related to the correctness, diversity, and hallucination of synthetic traces, along with the corresponding Jamovi projects for statistical analyses in the results_RQ1 folder for each MSE;
8. **09 IMA**: This folder contains MORGAN, the recommender system used in this work, with two folders containing the results related to RQ2 and RQ3 for each MSE.

### RELEASE NOTES
Latest Release: 1.0.0
 
### LICENSE
GNU GENERAL PUBLIC LICENSE Version 2, June 1991 (see [https://www.gnu.org/licenses/gpl-2.0.en.html](https://gnu.org/licenses/old-licenses/gpl-2.0.html))
 
### DEVELOPER RESOURCES
Source Repositories: [https://github.com/hepsycode/MASTER-LLM-IST.git](https://github.com/hepsycode/MASTER-LLM-IST.git)

- Clone: 
    - https: [https://github.com/hepsycode/MASTER-LLM-IST.git](https://github.com/hepsycode/MASTER-LLM-IST.git)
 
You can use the code from these repositories to experiment, test, build, and create patches, and issue pull requests (only by request).
For any bug or doubt, contact us or open an issue.
 
### SUPPORT
We currently support: 

 1. Email: 
    - Vittoriano Muttillo:
       - vittoriano.muttillo@guest.univaq.it,
       - vmuttillo@unite.it
       - vittoriano.muttillo@gmail.com
    - Claudio Di Sipio
       - claudio.disipio@univaq.it
    - Riccardo Rubei
       - riccardo.rubei@univaq.it
    - Luca Berardinelli
       - luca.berardinelli@jku.at
 2. Issues on GitHub

## Additional information
Research publications are available at https://hepsycode.github.io/

## How to Cite?
If you use MASTER-LLM in your research, please cite:
```
@article{MUTTILLO2025107806,
  title        = {Leveraging synthetic trace generation of modeling operations for intelligent modeling assistants using large language models},
  author       = {Vittoriano Muttillo and Claudio {Di Sipio} and Riccardo Rubei and Luca Berardinelli},
  year         = 2025,
  journal      = {Information and Software Technology},
  volume       = 186,
  pages        = 107806,
  doi          = {https://doi.org/10.1016/j.infsof.2025.107806},
  issn         = {0950-5849},
  url          = {https://www.sciencedirect.com/science/article/pii/S0950584925001454}
}
```
