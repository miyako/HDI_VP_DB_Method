# HDI_VP_DB_Method

![4D](https://img.shields.io/badge/4D-21.1%2B-blue) ![License](https://img.shields.io/github/license/miyako/HDI_VP_DB_Method) ![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Windows-lightgrey)

**How do I use methods and database fields in 4D View Pro?**

A "How Do I" (HDI) example for 4D. It shows how a 4D View Pro document can call project methods and read database fields directly through formulas, and how the developer controls exactly which methods and fields are exposed.

## Overview

4D View Pro treats access to your code and data as opt-in. A spreadsheet formula can only reach a project method or a database field once the developer has explicitly allowed it. This example demonstrates both sides:

- **Fields:** a *Recipes* table is exposed to a View Pro document through a virtual structure, with friendly field titles.
- **Methods:** a handful of "allowed methods" return system and licence information to cells in a second View Pro document.

The demo window is a three-tab form: an explanation page, a database-field document, and a method document.

## Features

| Tab | What it shows |
|-----|---------------|
| Description | Rich-text explanation loaded from the `INFO` table |
| Database fields | A View Pro document bound to the `Recipes` table. The **Next** button moves through records and reloads the document |
| Methods | A View Pro document calling allowed methods for OS, system, parameter and licence details. **Update document** reloads it |

## Requirements

- 4D 21.1 or later (`compatibilityVersion` 2101), macOS or Windows
- A valid **4D View Pro** licence. Without one, the splash screen explains why the demo cannot continue.

## Getting started

1. Clone or download this repository.
2. Open `Project/HDI_VP_DB_Method.4DProject` with 4D.
3. Run the project. The `Demo` menu item (Cmd/Ctrl+K) reopens the splash window at any time.

On first launch, empty tables (`INFO`, `Recipes`) are filled from `Resources/*.4ie` using the matching `.4si` import project.

## Points of interest

- **`SET ALLOWED METHODS`** (`InitAllowedMethods`) is the whitelist of project methods that View Pro formulas may call.
- **`SET FIELD TITLES`** (`InitVirtualStructure`) publishes selected `Recipes` fields to View Pro under readable names. Only the listed fields are visible to formulas.
- **Parameter whitelisting.** `get_LicenceInfo` and `get_SystemInfo` accept a property name and only answer for an explicit list of keys, returning a localised "Unsupported parameter" otherwise.
- **Performance.** `System info` and `License info` are read once on form load and cached in process variables instead of being re-evaluated for every cell.
- **Document reload.** `VP IMPORT DOCUMENT` is used after record changes so formulas are re-evaluated for the new current record.
- **Splash pattern.** `00_Start` reuses an existing splash window if one is open (window enumeration plus `CALL FORM`), otherwise opens it in the application worker with a non-blocking `DIALOG(...; *)`. State travels in `Form`, not interprocess variables.
- **Feature gating.** The splash form checks the minimum 4D version and licence (`Is license available`) and, when unmet, replaces the *Demo* button with *Close* and shows an explanatory overlay.

## Project structure

```
Project/Sources/
  Methods/              00_Start, Init* helpers, allowed get_* methods, Compiler_* declarations
  Forms/HDI/            splash screen
  Forms/HDI2/           three-tab demo form with two View Pro areas
  TableForms/           input/output forms for INFO and Recipes
  menus.json            menu bar (standard actions for Quit, Edit, Design mode)
  styleSheets*.css      dark mode and macOS Liquid Glass styling
Resources/
  *.4vp                 View Pro documents (field-bound and method-bound)
  *.4ie / *.4si         import data and import projects for the tables
  en.lproj, ja.lproj    XLIFF localisation (menus, forms, messages)
```

## Modernisation notes

The original binary database was converted to a project and updated for current 4D conventions, so it also works as a reference for those patterns:

- **Localisation:** all UI text lives in XLIFF files (English and Japanese), referenced with `:xliff:` in forms and menus and `Localized string` in code.
- **Typed declarations:** `var` and `#DECLARE` instead of `C_*` directives; compiler methods reduced to what is still needed.
- **Menus:** Quit uses the standard `quit` action rather than a one-line wrapper method.
- **Method visibility:** subroutines and View Pro callbacks are `invisible`, so the Run Method dialog only lists real entry points.
- **Appearance:** CSS media queries (`prefers-color-scheme`) with automatic colours support dark mode. Push buttons use `form-theme` rules (27 px under Liquid Glass, 23 px under classic macOS).
- **Listboxes:** this project has none, so no listbox display settings were needed.

## References

- Blog post: https://blog.4d.com/use-methods-and-database-fields-in-4d-view-pro/
- Original download (4D v17 R2): https://download.4d.com/Demos/4D_v17_R2/HDI_VP_DB_Method.zip
- 4D View Pro: https://developer.4d.com/docs/ViewPro/getting-started
- `SET ALLOWED METHODS`: https://developer.4d.com/docs/commands/set-allowed-methods
- `SET FIELD TITLES`: https://developer.4d.com/docs/commands/set-field-titles
- CSS in 4D forms: https://developer.4d.com/docs/FormEditor/stylesheets

## Origin

This project started as a binary `.4DB` example database distributed with 4D v17 R2. It was converted to a project (`.4DProject`) with 4D 21 and then modernised with the help of GitHub Copilot.

## License

[MIT](LICENSE)
