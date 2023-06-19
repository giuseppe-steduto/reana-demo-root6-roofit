# This file is part of REANA.
# Copyright (C) 2023 CERN.
#
# REANA is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

Feature: Workspace files

    As a researcher,
    I want to make sure that my Snakemake workflow produces expected files,
    so that I can be sure that the workflow outputs are correct.

    Scenario: The generation step creates the data file
        When the workflow is finished
        Then the workspace should contain "results/data.root"
        And the size of the file "results/data.root" should be between 150KiB and 160KiB

    Scenario: The workflow generates the final plot
        When the workflow is finished
        Then the workspace should contain "results/plot.png"
        And the sha256 checksum of the file "results/plot.png" should be "54165023803ce58f962816c47fe597c5df2cf24c26fa4821bb5e96f7d1b68d0b"
        And all the outputs should be included in the workspace
