// ==UserScript==
// @name         Remove AI Summary in Google Search
// @namespace    https://tampermonkey.net/
// @version      1.2
// @description  Removes the AI summary section in Google search results
// @match        https://www.google.com/search*
// @grant        none
// @run-at       document-start
// ==/UserScript==

(function () {
  'use strict';

  const CLASSES_TO_REMOVE = [
    'ULSxyf',
    'YzCcne'
  ];

  function removeAllMatchingElements() {
    let removedAny = false;

    for (const className of CLASSES_TO_REMOVE) {
      const elements = document.getElementsByClassName(className);

      // Convert live HTMLCollection to a static array before removing
      for (const element of Array.from(elements)) {
        element.remove();
        removedAny = true;
      }
    }

    return removedAny;
  }

  const removeAISummary = removeAllMatchingElements;

  // Try once when DOM is ready enough
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', removeAISummary);
  } else {
    removeAISummary();
  }

  // Google often injects search result elements dynamically
  const observer = new MutationObserver(() => {
    removeAISummary();
  });

  observer.observe(document.documentElement, {
    childList: true,
    subtree: true
  });
})();
