# This file is part of REANA.
# Copyright (C) 2023 CERN.
#
# REANA is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

Feature: Workspace files

  As a researcher,
  I want to make sure that the workspace produces expected files,
  so that I can be sure that the workflow outputs are correct.

  Scenario: This test fails
    When the workflow is finished
    Then the status should be "failed"

  Scenario: The total workspace size remains within reasonable limits
    When the workflow is finished
    Then the workspace size should be more than 150KiB
    And the workspace size should be less than 2GiB
