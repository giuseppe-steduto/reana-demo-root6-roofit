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
        Then the engine logs should contain "yadage.creators | MainThread | INFO | initializing workflow"
        And the engine logs should contain "yadage.wflowview | MainThread | INFO | added </gendata:0|defined|unknown>"
        And the engine logs should contain "yadage.wflowview | MainThread | INFO | added </fitdata:0|defined|unknown>"

    Scenario: The workflow completion has produced the expected messages
        When the workflow is finished
        Then the engine logs should contain "adage | MainThread | INFO | workflow completed successfully."
        And the engine logs should contain "adage | MainThread | INFO | execution valid. (in terms of execution order)"