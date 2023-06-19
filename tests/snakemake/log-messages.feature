# This file is part of REANA.
# Copyright (C) 2023 CERN.
#
# REANA is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

Feature: Log messages

    As a researcher,
    I want to be able to see the log messages of my workflow execution,
    So that I can verify that the workflow ran correctly.

    Scenario: The workflow start has produced the expected messages
        When the workflow is finished
        Then the engine logs should contain "snakemake.logging | MainThread | WARNING | Building DAG of jobs..."

    Scenario: The workflow completion has produced the expected messages
        When the workflow is finished
        Then the engine logs should contain "snakemake.logging | MainThread | INFO | 3 of 3 steps (100%) done"