/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    int maxHeight(TreeNode* node, int& diameter){

        if(node == nullptr)
            return 0;

        int lh = maxHeight(node->left, diameter);
        int rh = maxHeight(node->right, diameter);

        diameter = max(diameter, lh+rh); //***********// MODIFICATION IN MAXHEIGHT CODE for Max distance for each node.

        return 1 + max(lh,rh);
        
    }

    int diameterOfBinaryTree(TreeNode* root) {

        int diameter = 0;
        maxHeight(root, diameter);

        return diameter;
        
    }
};