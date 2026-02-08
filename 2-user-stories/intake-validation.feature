
---

## **2-user-stories/intake-validation.feature**

```gherkin
Feature: Smart Intake Validation
  As a service user  
  I want immediate feedback on missing or incorrect information
  So that my submission is not delayed by back-and-forth rejection cycles

  Background:
    Given the user is submitting a benefits application
    And the service requires: proof of identity, proof of address, and income details

  Scenario: Missing mandatory document triggers immediate warning
    When the user uploads only the identity document
    And attempts to submit the form
    Then the system should display: "Missing: Proof of address and Income details"
    And highlight the missing sections in red
    And prevent submission until resolved

  Scenario: Wrong file format rejected with guidance
    When the user uploads a .exe file as "proof of address"
    Then the system should reject the file
    And display: "Please upload PDF, JPG, or PNG files only"
    And provide a link to "How to convert your document"

  Scenario: High-priority case automatically triaged
    Given the user indicates "Urgent: Eviction notice received"
    When they submit complete documentation
    Then the case should bypass the standard queue
    And appear in the "Priority" worklist within 2 minutes

  @accessibility @gds-standard
  Scenario: Validation errors are accessible to screen readers
    Given a visually impaired user is using a screen reader
    When they submit a form with missing data
    Then error messages must be announced immediately
    And keyboard focus must move to the first error
    And color must not be the sole indicator of error (icon + text required)
    And error links must allow keyboard navigation to correct fields
    
    # Note: WCAG 2.1 AA compliance - Critical for public sector services
    # GDS Standard: "Make sure everyone can use the service"
