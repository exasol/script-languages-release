# Contributing to the Script Language Containers

## :tada: :+1: First off, thanks for taking the time to contribute! :tada: :+1:

The following is a set of guidelines for contributing to the Script Language Containers. 
These are mostly guidelines, not rules. Use your best judgment, and feel free 
to propose changes to this document in a pull request. 
Furthermore, they contain some information which might help you during development.

## How can you contribute?

You can contribute to this project at several levels:
- In any case we suggest you to create a new Github issue, be it for bug reports, improvements or new flavors, before implementing any change. Thus, we can give you feedback soon. 
- If you are more experienced, we are happy about any pull request: 
    - **However, be aware that the Script Language Container are tightly integrated into the Exasol Database. 
    Because of that we need to check any contribution thoroughly and might reject pull requests which may break this integration. 
    So, again, please open first a Github Issue and discuss the changes with us.**
    - Adding new package to flavors:
      - You can propose to add new packages to an existing flavor by creating a Github issue. We will then decide about the suggestion considering compatibility, maintenance effort and necessity. 
      - **And please respect, that we do not accept changes that add packages to the build step 
      `flavor-customization` of any flavor, because this step should be used by users for 
      temporary additions to the flavor. 
