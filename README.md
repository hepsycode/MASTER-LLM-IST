# Towards Synthetic Trace Generation of Modeling Operations Using In-Context Learning Approach

This repository presents our proposed approach and the corresponding replication package. The core concept involves integrating a Modeling Event Recorder (MER) framework within a Modeling System Environment (MSE). This framework captures and traces designer activities and modeling steps. Subsequently, it injects these events into Intelligent Modeling Assistants (IMAs), enabling the generation of personalized suggestions for modeling actions most relevant to each designer. The integration path is shown in the Figure below.

<p align="center">
<img src="img/MER-MORGAN_approach-Extended-scaled.png" width="711" height="700">
</p>

The repository is organized as follows:

1. **MSE_HEPSYCODE** folder contains HEPSYCODE Graphical Modeling Workbench and the Modeling Event Recorder (MER);
2. **MSE_CAEX** folder contains CAEX Graphical Modeling Workbench and the Modeling Event Recorder (MER);
3. **Trace Parser** folder contains the results of parsing the MER tracing files;
4. **LLM Synthetic Dataset** folder contains two sub-folders, one for trace generation, and one for model generation, as follows:
    - **Trace Synthetic Dataset** contains the prompt schemas used and the results of the queries made to the considered LLMs;
    - **Model Synthetic Dataset** contains the prompt schemas used and the results of the queries made to the considered LLMs;
6. **Trace Quality Checker** folder contains the Python code for extracting metrics of synthetic traces correctness, diversity, and hallucination, with corresponding Jamovi projects for statistical analyses in the results_RQ1.1 folder;
7. **Model Quality Checker** folder contains the Python code for extracting metrics of synthetic models correctness, diversity, and hallucination, with corresponding Jamovi projects for statistical analyses in the results_RQ1.2 folder;
8. **IMA** folder contains MORGAN, the recommender system used in this work, with two folders containing the results related to RQ2 and RQ3.
