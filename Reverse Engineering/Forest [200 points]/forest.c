#include <stdlib.h>
#include <stdio.h>

typedef struct NODE
{
    struct NODE* left;
    struct NODE* right;
    char c;
} NODE;


//Function declarations
NODE* createTree(char* str);
NODE* add(struct NODE* parent, char c);
int check(NODE* tree, char* str, char* password);
int search (NODE* tree, char* path, char let);

char* key = "yuoteavpxqgrlsdhwfjkzi_cmbn";

int main(int argc, char** argv)
{
    if (argc != 3)
    {
        puts("You have the wrong number of arguments for this forest.");
        printf("%s [password] [string]\n", argv[0]);
    }
    
    NODE* tree = createTree(key);
    if (check(tree, argv[2], argv[1]))
        puts("You did it! Submit the input as the flag");
    else
        puts("Nope.");
}

/**
 * Adds all characters in this string to a
 * new binary search tree.
 * @param str the string of characters.
 * @return the tree
 */
NODE* createTree(char* str)
{
    NODE* tree = NULL;
    for (int i = 0; key[i]; i++)
        tree = add(tree, key[i]);
    return tree;
}

/**
 * Adds a character into the binary search tree.
 * @param parent the parent to add the character under. (Can be NULL)
 * @param c the character to add.
 * @return the current parent node or a newly created node if one did not exist.
 */
NODE* add(struct NODE* parent, char c)
{
    if (parent == NULL)
    {
        parent = malloc(sizeof(NODE));
        parent->left = NULL;
        parent->right = NULL;
        parent->c = c;
    }
    
    if (c >= parent->c)
        parent->right = add(parent->right, c);
    else
        parent->left = add(parent->left, c);
}

/**
 * Checks if the paths for this tree matches 
 * the password provided 
 * @param tree the root of this binary search tree.
 * @param paths the paths that spell out each character of password. 
 *   (L for left, R for right, D for done).
 * @param password the password to match against.
 * @return 1 if the password matches, 0 otherwise.
 */
int check(NODE* tree, char* password, char* paths)
{
    if (!tree || !paths || !password)
        return 0;
    
    int good = 1;
    char* path = paths;
    char* letter = password;
    while (*path && *letter)
    {
        good &= search(tree, path, *letter);
        
        //Advance to next letter.
        letter++;
        
        //Move to next path of binary tree.
        while (*path == 'L' || *path == 'R')
            path++;
        path++;
    }
    //Make sure we iterated through all of the letters and paths
    good &= !*path && !*letter; 
    return good;
}

/**
 * Searches for the character let in the binary search tree, and
 * confirms that the path that is passed in is followed.
 * @param tree the segment of binary search tree we are in.
 * @param path the pointer to the next letter in path.
 * @param let the character letter to search for.
 * @return 1 if this search matches, 0 if it fails.
 */
int search (NODE* tree, char* path, char let)
{
    
    //We passed the end of the path or the tree. 
    if (!tree || !*path)
        return 0;
    
    //We found the character. Make sure path is done.
    if (tree->c == let)
        return *path == 'D'; 
    
    // Move down the binary search tree. 
    // (left for smaller values, right for bigger values)
    if (let < tree->c)
    {
        if (*path != 'L')
            return 0;
        return search(tree->left, path + 1, let);
    }
    else
    {
        if (*path != 'R')
            return 0;
        return search(tree->right, path + 1, let);
    }
}
