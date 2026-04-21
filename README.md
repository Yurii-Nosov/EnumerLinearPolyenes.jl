# EnumerLinearPolyenes

The repository contains a Julia program for the algorithm described in the article
Yu.L. Nosov, M.N. Nazarov, "Constructive enumeration and study of molecular graphs of unbranched conjugated polene hydrocarbons".
This article is currently under review.

## Installation

Development Status - Work In Progress.
Due to issues with the Plots package, our package cannot be installed as a full julia package  that is, using the statements
`using Pkg` and `Pkg.add("EnumerLinearPolyenes")` or via the REPL.

Note: Automated tests are disabled to simplify publishing. The code has been manually tested. Running the examples requires the Plots.jl package to be installed.

However, any user can create a clone of the `EnumerLinearPolyenes` package on their computer and work with it.
The user can: examine the structure and all files of the package, run files from the **examples** folder, create new files in it, fix any errors found, test the package, and create new files for testing.

## INSTALLATION INSTRUCTIONS

1.Download and install Julia (version 1.9 or later) from the [official website](https://julialang.org/downloads/).

2.Install the Plots and GR packages

```julia
julia> ] add  Plots GR
```

3.Download and install the Visual Studio Code code editor, or simply VS Code, from the [official website](https://code.visualstudio.com/Download).

4.Install the Julia plugin for VS Code from the [Microsoft Marketplace](https://marketplace.visualstudio.com/).

5.Download and install GitHub Desktop from the [official website](https://desktop.github.com/download/).

6.Download and install the PanWriter Markdown editor to work with .md files.

7.Clone the `EnumerLinearPolyenes` package to the user's computer.

## How to clone the EnumerLinearPolyenes package on a user's computer

### 1. Cloning a repository from GitHub to GitHub Desktop

You also can use GitHub Desktop to clone repositories that exist on GitHub.
For more information, see [documentation](https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop).

1.Sign in to GitHub and GitHub Desktop before you start to clone.

2.On GitHub, navigate to the main page of the repository.

3.Above the list of files, click  **Code**.

4.To clone and open the repository with GitHub Desktop, click  **Open with GitHub Desktop**.

5.Click **Choose...** and navigate to a local directory where you want to clone the repository.

6.This will create a clone of the `EnumerLinearPloyenes` repository named `EnumerLinearPloyenes.jl` on the user's computer in the folder they selected.

### 2. Cloning a repository from GitHub

1.Sign in to GitHub and GitHub Desktop before you start to clone.

2.On GitHub, navigate to the main page of the repository.

3.Above the list of files, click  **Code**.

4.To clone the repository click **Download ZIP**.

5.A zipped file, `EnumerLinearPolyenes.jl-main.zip`, will be created in the download folder on the user's computer.

### 3. Use GitHub Desktop to clone and fork an existing GitHub repository

You can use GitHub Desktop to clone and fork repositories that exist on GitHub. For more information, see [documentation](https://docs.github.com/en/desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop).

1. In the **File** menu, click **Clone Repository**.

2. Click the tab that corresponds to the location of the repository you want to clone. You can also click **URL** to manually enter the repository location.

3. From the list of repositories, click the repository you want to clone.

4. To select the local directory into which you want to clone the repository, next to the "Local Path" field, click **Choose...** and navigate to the directory.

5. At the bottom of the "Clone a Repository" window, click **Clone**.

6. This will create a clone of the `EnumerLinearPloyenes` repository named `EnumerLinearPloyenes.jl` on the user's computer in the folder they selected.

### 4. Clone the EnumerLinearPloyenes repository from GitHub to the user's computer using Git

1. Go to the desired repository's GitHub page.

2. Click the green Code button and copy the repository URL, which begins with "https://...".

3. Open a terminal and navigate to the folder where you want to clone the repository (for example, `cd ~/Projects`).

4. Run the clone command:

```Git
git clone https://github.com/Yurii-Nosov/EnumerLinearPolyenes.jl.git
```

5.This will create a clone of the `EnumerLinearPloyenes` repository named `EnumerLinearPloyenes.jl` on the user's computer in the folder they selected.

### Basic Usage

In the first, third, and fourth cloning options, a clone of the repository stored on GitHub will be created in a folder selected by the user.

In the second case, a zipped clone will be created in the Downloads folder. If you unzip it in File Explorer to another folder, a clone named "EnumerLinearPolyenes.jl-main" will be created there.

In all cloning options, the structure of the created clone will exactly match the structure of the original repository. In any such clone, you can use VS Code to open any subfolder of the examples folder and run the julia file located there. Additionally, you can create a new julia file in any subfolder of the examples folder using VS Code and run it.

To run the file you selected or created, you must specify the full path to the folder containing the clone in the `JULIA_LOAD_PATH` variable.
In the file you created, include("../allmodules.jl") before all operators. (The allmodules.jl file is located in the examples folder and provides access to the contents of all modules in the package.)

However, to maintain the package structure, it's best to create new files for execution in the parent folder containing the clone. Then, for all cloning options except the second, each new file should contain the following line:
include("./EnumerLinearPolyenes.jl /examples/allmodules.jl").

And for the second cloning option, the following line should be written:
include("./EnumerLinearPolyenes.jl-main /examples/allmodules.jl").

A sample Julia file for the `EnumerLinearPolyenes.jl` clone is provided below.

```julia
include("./EnumerLinearPolyenes.jl/examples/allmodules.jl")

#    Generation of codes for molecular graphs of isomers ==========
n = 8      #  Order of molecular graphs.
# ctype -  Type of code used for generation: 1-vertex or 2-edge code.
ctype = 1  #  Vertex code used  
lstbcd = generate_isomer_codes(n,ctype) #   code generation  
```

For more details, see the `input_output_guide.md` file in the "info" folder.

### Running Tests

```julia
using Pkg
Pkg.test("EnumerLinearPolyenes")
```

## The repository contains

• directory **src**  with the main module `EnumerLinearPolyenes` and all other modules;

• directory **examples** with Julia files that include all programs necessary to obtain the results presented in the article;

• directory **results** with the article’s results in the form of text and graphic files;

• directory **test** with files for testing all core functions of the package.

### File structure in the catalog src

The catalog **src** contains Julia files of all 11 modules:

- EnumerLinearPolyenes — the main module;

- AppConstants - contains all constants;

- AllSmallParts — contains all auxiliary functions used in other functions;

- GenCodeBaisicIsoConf — contains functions for generating vertex and edge codes of molecular graphs of different types: isomers, conformers of trans‑isomers, and conformers of other isomers;

- GenCodeSubgraphCOI — contains functions for generating codes of different subtypes of molecular graphs of conformers of other isomers;

- GenCodeUniversal — contains functions for generating codes of different types from the GenCodeUniversal module;

- CreateGraphs — contains functions for creating molecular graphs both with and without hydrogen atoms;

- OutputGraphs — contains functions for displaying graph images on screen;

- CountCodeIsoConf — contains functions for determining the number of molecular graphs of different types;

- DetermClassSymmetry — contains functions for calculating the distribution of graphs of different types across symmetry classes;

- DistrubGraphsOverlapping — contains functions for calculating the distribution of the number of molecular graphs by the number of pairs of overlapping vertices;

- VerificationGeomety — contains functions for calculating edge lengths and angles between pairs of adjacent vertices based on vertex coordinates x,y, as well as for verifying edge lengths and angles against specified values.

### File structure in the catalog examples

The catalog **examples** contains four folders and one julia file:

1. Folder **code_generation** with Julia files:

    - `exm_gen_code_basic.jl` — contains examples of generating codes for molecular graphs of isomers, conformers of trans‑isomers, and conformers of other isomers;

    - `exm_gen_code_subgraph_coi.jl` — contains examples of generating codes for different subtypes of molecular graphs of conformers of other isomers;

    - `exm_gen_code_universal.jl` — contains examples of generating codes of different types using functions from the GenCodeUniversal module.

2. Folder **counting_graphs** with Julia files:

    - `exm_distrib_graphs_by_type.jl` — contains examples of calculating the distribution of the number of molecular graphs by graph types;

    - `exm_distrib_sub_graphs_coi.jl` — contains examples of calculating the distribution of the number of molecular graphs of conformers of other isomers by graph subtypes.

3. Folder **create_and_output_graphs** with Julia files:

    - `exm_create_graphs_cc.jl` — contains examples of generating molecular graphs with suppressed hydrogen atoms;

    - `exm_create_graphs_hyd.jl` — contains examples of generating molecular graphs with hydrogen atoms;

    - `exm_output_graphs_cc.jl` — contains examples of generating and displaying images of molecular graphs with suppressed hydrogen atoms;

    - `exm_output_graphs_hyd.jl` — contains examples of generating and displaying images of molecular graphs with hydrogen atoms.

4. Folder **distrib_graphs_by_overlap** with Julia files:

    - `exm_distrib_overlap_n14_26.jl` — contains examples of calculating the distribution of Yeh graphs of order 14–26 by the number of pairs of overlapping vertices;

    - `exm_distrib_overlap_n28_30.jl` — contains two examples of calculating the distribution of Yeh graphs of order 28 and 30 by the number of pairs of overlapping vertices;

    - `exm_output_list_distr_yeh_graphs.jl` — contains an example of creating a summary table of distributions of Yeh molecular graphs of order 14–26 by the number of overlapping vertex pairs;

    - `exm_show_select_graphs_overlap.jl` — contains two examples of selecting and displaying images of Yeh molecular graphs of order 18 and 22 with a specified number of overlapping vertex pairs.

5. Folder **distrib_graphs_by_symmetry** with Julia files:

    - `exm_distr_isomers_by_symmetry.jl` — contains examples of calculating the distribution of molecular graphs of isomers across symmetry classes;

    - `exm_distr_con_trn_iso_by_symmetry.jl` — contains examples of calculating the distribution of molecular graphs of conformers of trans‑isomers across symmetry classes.

6. The **examples** directory contains the `allmodules.jl` file, which contains the contents of all modules loaded (using include).

### File structure in the catalog results

The catalog **results** contains four zipped archives. Open this catalog in
File Explorer and unzip the archives. You will receive four folders:

1. Folder **Distribution_of_molecular_graphs** with text files:

    - `DistribNumberMolGraphs.txt` — contains results of calculating the distribution of the number of molecular graphs by graph types;

    - `DistribNumbSubGraphsCOI.txt` — contains results of calculating the distribution of the number of molecular graphs of conformers of other isomers by subtypes of graphs determined by the presence or absence of cisoid chains of length 3 and 4.

2. Folder **Distribution_of_molecular_graphs_by_symmetry** with text files:

    - `DistribNumberConOthIsoBySymmetry.txt` — contains results of calculating the distribution of the number of molecular graphs of conformers of other isomers across symmetry classes;

    - `DistribNumberConTransIsoBySymmetry.txt` — contains results of calculating the distribution of the number of molecular graphs of conformers of trans‑isomers across symmetry classes;

    - `DistribNumberIsomersBySymmetry.txt` — contains results of calculating the distribution of the number of molecular graphs of isomers across symmetry classes.

3. Folder **DistributionYehGraphsByOverlap** with text files:

    - `DistribYehGraphsByOverlapping.txt` — contains results of calculating the distribution of Yeh molecular graphs of order 14–26 by the number of overlapping vertex pairs (presented as a list);

    - `ListDistribYehGraphsOverlap.txt` — contains results of calculating the distribution of Yeh molecular graphs of order 14–26 by the number of overlapping vertex pairs (presented as a table);

    - `ResultDistribYehGraphsOverlapN28.txt` — contains results of calculating the distribution of the number of Yeh molecular graphs of order 28 by the number of overlapping vertex pairs;

    - `ResultDistribYehGraphsOverlapN30.txt` — contains results of calculating the distribution of the number of Yeh molecular graphs of order 30 by the number of overlapping vertex pairs.

4. Folder **DistributionYehGraphsByOverlap** with subfolders:

    - Folder **ShowSelectOverlapN18** with image files of graphs of order 18 having a specified number of overlapping vertex pairs, and a text file `ShowSelectOverlapN18.txt` containing data on these graphs;

    - Folder **ShowSelectOverlapN22** with image files of graphs of order 22 having a specified number of overlapping vertex pairs, and a text file `ShowSelectOverlapN22.txt` containing data on these graphs.

5. Folder **Figures** with subfolders:

    - Folder **Isomers** with image files of molecular graphs of isomers of order 10;

    - Folder **Conformers** with image files of molecular graphs of conformers of trans‑isomers of order 10.

### File structure in the catalog test

The catalog **test** contains:

- runtests.jl — runs Julia test files from the **test** folder;

- detaills_tests.jl — tests auxiliary functions;

- gen_from_bcd_tests.jl — tests functions for generating molecular graph codes using vertex codes;

- gen_from_ze_tests.jl — tests functions for generating molecular graph codes using edge codes;

- count_basic_iso_tests.jl — tests functions for counting codes of molecular graphs of isomers, conformers of trans‑isomers, and conformers of other isomers;

- count_con_other_iso_tests.jl — tests functions for counting codes of molecular graphs of subtypes of conformers of other isomers;

- calc_class_sym_tests.jl — tests functions for calculating the distribution of molecular graphs across symmetry classes;

- calc-distr_overlap_tests.jl — tests functions for calculating the distribution of molecular graphs by the number of pairs of overlapping vertices.

## License

- **Code** (all files outside the `info/` folder): [MIT License](LICENSE).
- **Documentation and supplementary materials** (folder `info/`): [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)](info/LICENSE.md).

### Explanations

- The package code may be used, modified, and distributed under the MIT terms.
- Materials in 'info/' may only be read and shared (without modification or commercial gain).

For other uses, please request permission.
