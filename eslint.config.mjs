import globals from "globals";
import pluginJs from "@eslint/js";
import standard from "@eslint/eslint-config-standard";

/** @type {import('eslint').Linter.Config[]} */
export default [
  {
    languageOptions: {
      globals: {
        ...globals.browser,
        jKanban: "readonly", // Agregamos jKanban como global
      },
    },
  },
  standard,
  pluginJs.configs.recommended,
];
