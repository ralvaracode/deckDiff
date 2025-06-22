# deckDiff

Duelingbook does not allow you to version control your decks. I want to keep track of changes in my decks. To do that I have been saving my decks with different file names (e.g. goatcontrolv1.xml, goatcontrolv2.xml, goatcontrolv3.xml).

Having multiple files for the same deck is annoying. I have downloaded all my decks and put them in a git repository. I want to use git to track the changes between different versions of the same deck.

To do that, I first need to make a commit for each version of the deck to the same file. Then I need a script that shows me the difference between commits so that I can add a commit message to git.
