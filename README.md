# Towards Synthetic Trace Generation of Modeling Operations using In-Context Learning Approach

This repository presents our proposed approach and the corresponding replication package. The core concept involves integrating a Modeling Event Recorder (MER) framework within a Modeling System Environment (MSE). This framework captures and traces designer activities and modeling steps. Subsequently, it injects these events into Intelligent Modeling Assistants (IMAs), enabling the generation of personalized suggestions for modeling actions most relevant to each designer. The integration path is shown in the Figure below.

<p align="center">
<img src="img/MER-MORGAN_approach_scaled.png" width="600" height="620">
</p>

The repository is organized as follows:

1. **MSE** folder contains HEPSYCODE Graphical Modeling Workbench and the Modeling Event Recorder (MER);
2. **Trace Parser** folder contains the results of parsing the MER tracing files;
3. **LLM Synthetic Dataset** folder contains the prompt schemas used and the results of the queries made to the considered LLMs;
4. **Quality Checker** folder contains the Python code for extracting metrics of correctness, diversity, and hallucination, with corresponding Jamovi projects for statistical analyses in the results_RQ1 folder;
5. **IMA** folder contains MORGAN, the recommender system used in this work, with two folders containing the results related to RQ2 and RQ3.
