import globals from "globals";
import pluginJs from "@eslint/js";

export default [
  {
    ...pluginJs.configs.recommended,
    name: "browser code",
    files: ["src/browser/**/*.js"],
    languageOptions: { sourceType: "script", globals: {...globals.browser} }
  },
  {
    ...pluginJs.configs.recommended,
    name: "browser code module",
    files: ["src/browser/**/*.mjs"],
    languageOptions: { sourceType: "module", globals: {...globals.browser} }
  }
];