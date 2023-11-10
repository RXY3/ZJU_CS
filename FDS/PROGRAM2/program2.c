#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int n_of_time = 0;
// Define the node of the expression tree
int num = 0,nu=0;
char opr[100][100];//store the strings of the variables

typedef struct node *Node; 
struct node {
    char* data;
    Node left;
    Node right;
} ;// Node is a pointer to the struct node

Node parseTerm(char** expr);//parse the term
Node parseFactor(char** expr);//parse the factor
Node parseE(char** expr);//parse the power
int strc(char* a, char* b);//compare two strings and skip "()"
int my_isspace(int c) {
    return c == ' ' || c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r';
}

int my_isalpha(int c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}
int my_isdigit(int c) {
    return c >= '0' && c <= '9';
}
int my_isalnum(int c) {
    return my_isalpha(c) || my_isdigit(c);
}
int my_ispunct(int c) {
    return c == '+' || c == '-' || c == '*' || c == '/' || c == '^' || c == '(' || c == ')';
}
// Function to create a new node
Node createNode(char* data) {
    n_of_time++;
    Node newNode = (Node)malloc(sizeof(struct node));// Allocate memory for the new node
    newNode->data = data;
    newNode->left = newNode->right = NULL;
    return newNode;
}

// Function to parse the next token (operand or operator) in an expression
char* parseToken(char** expr) {
    n_of_time++;
    // Skip the leading spaces
    while (my_isspace(**expr)) {
        (*expr)++;
    }

    char* start = *expr;
    
    if (my_isalpha(**expr)) {
    char temp[100]; // Assuming the maximum length of a string is 100
    int tempIndex = 0;

    // Read the string into a temporary array
    while(my_isalnum(**expr)) {
        temp[tempIndex++] = **expr;
        (*expr)++;
    }
    temp[tempIndex] = '\0';

    // Check if the string already exists
    int exists = 0;
    for (int i = 0; i < num; i++) {
        if (strcmp(opr[i], temp) == 0) {
            exists = 1;
            break;
        }
    }

    // If the string does not exist, add it to the array
    if (!exists) {
        strcpy(opr[num++], temp);
    }

    nu = 0;
}
    // If the next token is an operator
    else if (my_ispunct(**expr)) {
        (*expr)++;
    }
    // If the next token is a number
    else if (my_isdigit(**expr)) {
        while (my_isdigit(**expr)) {
            (*expr)++;
        }
    }
    
    size_t len = *expr - start;
    char* token = (char*)malloc(len + 1);
    strncpy(token, start, len);
    token[len] = '\0';

    return token;
}

// Function to parse an expression and build the corresponding expression tree
Node parseExpr(char** expr) {
    n_of_time++;
    Node left = parseTerm(expr);
    
    while (**expr == '+' || **expr == '-') // If the next token is an operator
    {
        char* op = parseToken(expr);// Parse the operator
        Node right = parseTerm(expr);// Parse the right operand
        Node node = createNode(op);// Create a new node for the operator
        node->left = left;
        node->right = right;
        left = node;
    }

    return left;
}

Node parseTerm(char** expr) {
    n_of_time++;
    Node left = parseE(expr);

    while (**expr == '*' || **expr == '/')// If the next token is an operator
     {
        char* op = parseToken(expr);
        Node right = parseE(expr);
        Node node = createNode(op);
        node->left = left;
        node->right = right;
        left = node;
    }

    return left;
}
Node parseE(char **expr){
    n_of_time++;
    Node left = parseFactor(expr);
    while(**expr == '^')// If the next token is an operator
    {
        char* op = parseToken(expr);
        Node right = parseFactor(expr);
        Node node = createNode(op);
        node->left = left;
        node->right = right;
        left = node;
    }
    return left;

}
Node parseFactor(char** expr) {
    n_of_time++;
    char* token = parseToken(expr);

    if (strcmp(token, "(") == 0) // If the next token is a left parenthesis
    {
        Node node = parseExpr(expr);
        if (**expr==')') {
            (*expr)++; // Skip the right parenthesis
            return node;
        } else {
            // Handle error: missing right parenthesis
            return NULL;
        }
    }

    return createNode(token);
}
char* getString(Node node)
{
    //n_of_time++;
    if (node == NULL) {
        char *s = (char*)malloc(100);
        strcpy(s, "0"); // return a pointer to a new string which is a duplicate of the string s
        return s;
    }
    // If the operation is commutative (i.e., the order of the operands doesn't matter)
    char* left = getString(node->left);
    char* right = getString(node->right);
    if(strcmp(node->data, "+") == 0 || strcmp(node->data, "*") == 0)// and the right operand is smaller than the left operand in lexicographical order, swap them.
    {
        if(strc(left, right) > 0)
        {
            char* temp = left;
            left = right;
            right = temp;
        }
    }
    
    if(strcmp(node->data, "+") == 0 || strcmp(node->data, "-") == 0 || strcmp(node->data, "*") == 0 || strcmp(node->data, "/") == 0 || strcmp(node->data, "^") == 0)
    {
        char* result = (char*)malloc(strlen(left) + strlen(right) + 4);
        sprintf(result, "(%s%s%s)", left,node->data, right);
        return result;
    }
    return node->data;
}

// Function to calculate the derivative of an expression
char* derivative(Node root, char* var) {
    n_of_time++;
    if (root == NULL) {
        return "0";
    }

    if (strcmp(root->data, var) == 0) // If the current node is the variable
    {
        return "1";
    }

    if (strcmp(root->data, "+") == 0) {

        char* left_derivative = derivative(root->left, var);
        char* right_derivative = derivative(root->right, var);
        //
        size_t left_len = strlen(left_derivative);
        size_t right_len = strlen(right_derivative);
        char* result = (char*)malloc(100);
        // simplify the expression by using the rule of the derivative of the sum
        if (strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "0") == 0) // If both derivatives are 0
        {
            result = "0";
            //printf("%s", result);
            return result;
        }
        if (strcmp(left_derivative, "0") == 0)// If the left derivative is 0
         {
            snprintf(result, 100, "%s", right_derivative);
            //printf("%s", result);
            return result;
        }
        if (strcmp(right_derivative, "0") == 0) {
            snprintf(result, 100, "%s", left_derivative);
            //printf("%s", result);
            return result;
        }
        snprintf(result, 100, "(%s+%s)", left_derivative, right_derivative);
        printf("%s", result);
        return result;
    }

    if (strcmp(root->data, "^") == 0) {
    // Use the chain rule and the derivative formula of the power function to derive
    char* left = getString(root->left);
    char* right = getString(root->right);
    if(strcmp(left, "0") == 0 ){
        return "0";
    }
    if(strcmp(right, "0") == 0 ){
        return "1";
    }
    char* left_derivative = derivative(root->left, var);
    char* right_derivative = derivative(root->right, var);

    size_t left_len = strlen(left_derivative);
    size_t right_len = strlen(right_derivative);
    char* result = (char*)malloc(100);
    // simplify the expression by using the rule of the derivative of the power
    if(strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "0") == 0){
        result = "0";
        return result;
    }
    if(strcmp(left_derivative, "1") == 0 && strcmp(right_derivative, "1") == 0){
        snprintf(result, 100, "%s^%s*(%s/%s+In%s)", left, right, right,left, right);
        return result;
    }
    if(strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "1") == 0){
        snprintf(result, 100, "(%s^%s*In%s)", left, right, left);
        return result;
    }
    if(strcmp(left_derivative, "1") == 0 && strcmp(right_derivative, "0") == 0){
        snprintf(result, 100, "(%s^(%s-1)*%s)", left, right, right);
        return result;
    }
    if(strcmp(left_derivative, "0") == 0){
        snprintf(result, 100, "(%s^%s*%s*In%s)", left, right, right_derivative, left);
        return result;
    }
    if(strcmp(right_derivative, "0") == 0){
        snprintf(result, 100, "(%s^(%s-1)*%s*%s)", left, right, left_derivative, right);
        return result;
    }
    if(strcmp(left_derivative, "1") == 0){
        snprintf(result, 100, "(%s^%s*(%s*In%s+%s/%s*%s))", left, right, right_derivative, left, right,left, right);
        return result;
    }
    if(strcmp(right_derivative, "1") == 0){
        snprintf(result, 100, "%s^%s*(%s/%s+In%s)", left, right, left, right, left);
        return result;
    }
    snprintf(result, 100, "%s^%s*(%s*In%s+%s/%s*%s)", left, right, right_derivative, left, right,left, left_derivative);
    return result;
}

    if (strcmp(root->data, "(") == 0) {
        // The derivative of a function is the derivative of the function's body
        char* inner_derivative = derivative(root->left, var); //
        return inner_derivative;
    }
    if (strcmp(root->data, "-") == 0) {

        char* left_derivative = derivative(root->left, var);
        char* right_derivative = derivative(root->right, var);
        
        // TODO: concatenate left_derivative and right_derivative
        // return the result
        size_t left_len = strlen(left_derivative);
        size_t right_len = strlen(right_derivative);
        char* result = (char*)malloc(100);
        // simplify the expression by using the rule of the derivative of the sum
        if(strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "0") == 0){
            result = "0";
            return result;
        }
        if (strcmp(left_derivative, "0") == 0) {
            snprintf(result, 100, "(-%s)", right_derivative);
            return result;
        }
        if (strcmp(right_derivative, "0") == 0) {
            snprintf(result, 100, "(%s)", left_derivative);
            return result;
        }
        snprintf(result, 100, "(%s-%s)", left_derivative, right_derivative);
        return result;
    }

    if (strcmp(root->data, "*") == 0) {
        char* left = getString(root->left);
        char* right = getString(root->right);

        char* left_derivative = derivative(root->left, var);
        char* right_derivative = derivative(root->right, var);

        // The derivative of a product is (left * right') + (left' * right)
        // So, construct the result accordingly.
        char* result = (char*)malloc(100); 
        // simplify the expression by using the rule of the derivative of the product
        if (strcmp(left_derivative, "0") == 0&&strcmp(right_derivative, "0") == 0) {
            result = "0";
            //printf("%s", result);
            return result;
        }
        if (strcmp(left_derivative, "1") == 0 && strcmp(right_derivative, "1") == 0) {
            snprintf(result, 100, "(%s+%s)", left, right);
            //printf("%s", result);
            return result;
        }
        if (strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "1") == 0) {
            snprintf(result, 100, "%s", left);
            //printf("%s", result);
            return result;
        }
        if (strcmp(left_derivative, "1") == 0 && strcmp(right_derivative, "0") == 0) {
            snprintf(result, 100, "%s", right);
            //printf("%s", result);
            return result;
        }
        if (strcmp(left_derivative, "0") == 0) {
            snprintf(result, 100, "(%s*%s)", left, right_derivative);
            //printf("%s", result);
            return result;
        }
        if (strcmp(right_derivative, "0") == 0) {
            snprintf(result, 100, "(%s*%s)", right, left_derivative);
            //printf("%s", result);
            return result;
        }
        if (strcmp(left_derivative, "1") == 0) {
            snprintf(result, 100, "(%s+%s*%s)", right, left, right_derivative);
            //printf("%s", result);
            return result;
        }
        if (strcmp(right_derivative, "1") == 0) {
            snprintf(result, 100, "(%s+%s*%s)", left, right, left_derivative);
            //printf("%s", result);
            return result;
        }

        snprintf(result, 100, "(%s*%s+%s*%s)", left, right_derivative, left_derivative, right);
        //printf("%s", result);
        return result;
    }

    if (strcmp(root->data, "/") == 0) {
        char* left = getString(root->left);
        char* right = getString(root->right);
        if(left == NULL || right == NULL){
            return "0";
        }

        char* left_derivative = derivative(root->left, var);
        char* right_derivative = derivative(root->right, var);

        // The derivative of a quotient is ((left' * right) - (left * right')) / (right ^ 2)
        // So, construct the result accordingly.
        char* result = (char*)malloc(100);
        // simplify the expression by using the rule of the derivative of the quotient
        if (strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "0") == 0) {
            result = "0";
            return result;
        }
        if (strcmp(left_derivative, "1") == 0 && strcmp(right_derivative, "1") == 0) {
            snprintf(result, 100, "(%s-%s)/%s^2", right, left, right);
            return result;
        }
        if (strcmp(left_derivative, "0") == 0 && strcmp(right_derivative, "1") == 0) {
            snprintf(result, 100, "(-%s)/%s^2", left, right);
            return result;
        }
        if (strcmp(left_derivative, "1") == 0 && strcmp(right_derivative, "0") == 0) {
            snprintf(result, 100, "1/%s", right);
            return result;
        }
        if (strcmp(left_derivative, "0") == 0) {
            snprintf(result, 100, "(-%s)*(%s)/%s^2", left, right_derivative, right);
            return result;
        }
        if (strcmp(right_derivative, "0") == 0) {
            snprintf(result, 100, "(%s)/(%s)", left_derivative, right);
            return result;
        }
        if (strcmp(left_derivative, "1") == 0) {
            snprintf(result, 100, "(%s-%s*%s)/%s^2", right, left, right_derivative, right);
            return result;
        }
        if (strcmp(right_derivative, "1") == 0) {
            snprintf(result, 100, "(%s*%s-%s)/%s^2",  left_derivative, right,left, right);
            return result;
        }

        

        snprintf(result, 100, "(%s*%s-%s*%s)/%s^2", left_derivative, right, left, right_derivative, right);
        return result;
    }

    return "0";
}
void preorderTraversal(Node node) // Print the expression tree in preorder
{
    if (node) {
        printf("%s ", node->data); // Print the data of the current node
        preorderTraversal(node->left); //
        preorderTraversal(node->right); //
    }
    
}

void sortStrings(char strings[][100], int count)//sort the strings
 {
    for (int i = 0; i < count - 1; i++) {
        for (int j = i + 1; j < count; j++) {
            if (strcmp(strings[i], strings[j]) > 0)  {
                char temp[100];
                strcpy(temp, strings[i]);
                strcpy(strings[i], strings[j]);//swap the strings
                strcpy(strings[j], temp);
            }
        }
    }
}

void insert_0(char* str, int poi)//insert '0' in the string to handle the negative number
{
    int len = strlen(str);
    for(int i = len; i > poi; i--)
    {
        str[i] = str[i-1];
    }
    str[poi] = '0';
}
char* getString1(Node node);
int main() {
    char* expr ; // The expression to be parsed
    expr = (char*)malloc(1000);// Allocate memory for the expression
    scanf("%s", expr);// Read the expression from the user
    printf("Original expression: %s\n", expr);
    
    int m = strlen(expr);
    
    for(int i=0;i<m;i++)//handle the negative number
    {
        if(expr[i]=='-'&&i==0)//if the negative number is the first number
        {
            insert_0(expr,0);
            m++;
        }
        if(expr[i]=='-'&&expr[i-1]=='(')//if the negative number is in the bracket
        {
            insert_0(expr,i);
            m++;
        }
    }
    // Parse the expression and build the expression tree

    Node root = parseExpr(&expr);
    //("Expression tree: ");
    preorderTraversal(root);// Print the expression tree in preorder
    printf("\n");
    
    int count = num;  
    // Sort the variables in lexicographical order
    sortStrings(opr, count);

    char out[100][100];
    // Calculate the derivative of the expression
    for(int i = 0; i < count; i++){
        char* tmp = derivative(root, opr[i]);
        strcpy(out[i], tmp);
    }
    for(int i = 0; i < count; i++){
        printf("d/dx(%s): %s\n", opr[i], out[i]);// Print the derivative of the expression
    }
    Node ROOT[100];
    for(int i = 0; i < count; i++){
        char *tmp = out[i];
        int m = strlen(tmp);
        
        for(int i=0;i<m;i++)//handle the negative number
            {
            if(tmp[i]=='-'&&i==0)//if the negative number is the first number
            {
            insert_0(tmp,0);
            m++;
            }
            if(tmp[i]=='-'&&tmp[i-1]=='(')//if the negative number is in the bracket
            {
            insert_0(tmp,i);
            m++;
            }
            }
        //printf("%s\n", tmp);
        
        ROOT[i] = parseExpr(&tmp);

        char* tmp1 =  getString1(ROOT[i]);

        strcpy(out[i], tmp1);
    }
    printf("The sorted expression: \n");
    for(int i = 0; i < count; i++){
        printf("d/dx(%s): %s\n", opr[i], out[i]);
    }
   // system("pause");
   printf("%d ", n_of_time);
    return 0;
}
int strc(char* a, char* b)//compare two strings and skip "()"
{
    //n_of_time++;
    int i = 0;
    int j = 0;
    int lena = strlen(a);
    int lenb = strlen(b);
    while(i < lena && j < lenb)//compare the two strings
    {
        double numa = (double)a[i];
        double numb = (double)b[j];
        char c = a[i];
        if(c == '+' || c == '-' || c == '*' || c == '/' || c == '^' || c == '(' || c == ')')
        {
            i++;
            continue;
        }
        c=b[j];
        if(c == '+' || c == '-' || c == '*' || c == '/' || c == '^' || c == '(' || c == ')')
        {
            j++;
            continue;
        }
        if(a[i]-'a'>=0&&a[i]-'a'<=25)//change the lower case to upper case
        {
            numa+= 'A'-'a'-0.1;
        }
        if(b[j]-'a'>=0&&b[j]-'a'<=25)//change the lower case to upper case
        {
            numb+= 'A'-'a'-0.1;
        }
    
        if(a[i] == b[j])//a==b
        {
            i++;
            j++;
            continue;
        }
        else if(numa < numb)//a<b
        {
            return 0;
        }
        else if(numa > numb)//a>b
        {
            return 1;
        }
    }
    return 0;
}
char* getString1(Node node) //simple the expression
{
    //n_of_time++;
    if (node == NULL) {
        char *s = (char*)malloc(100);
        strcpy(s, "0"); // return a pointer to a new string which is a duplicate of the string s
        return s;
    }
    char* left = getString1(node->left);//get the left string
    char* right = getString1(node->right);//get the right string

    // If the operation is commutative (i.e., the order of the operands doesn't matter)
    // and the right operand is smaller than the left operand in lexicographical order,
    // swap them.
    if (strcmp(node->data, "+") == 0 || strcmp(node->data, "*") == 0) {
        if (strc(left, right) > 0) {
            char* temp = left;
            left = right;
            right = temp;
        }
    }
    if(strcmp(node->data, "+") == 0 )
    {
        if(strcmp(left, "0") == 0)// 0+x
        {
            return right;
        }
        if(strcmp(right, "0") == 0)// x+0
        {
            return left;
        }
        if(strcmp(left, right) == 0 )// x+x
        {
            char* result = (char*)malloc(strlen(left) + 2); // +2 for the '(' and the null terminator
            strcpy(result, "2*");
            strcat(result, left);
            return result;
        }
        char* result = (char*)malloc(strlen(left) + strlen(right) + 4);
        sprintf(result, "(%s%s%s)", left,node->data, right);// +4 for the '(' and the ')' and the null terminator
        return result;
    }
    if(strcmp(node->data, "*") == 0 )//multiply
    {
        if(strcmp(left, "0") == 0 || strcmp(right, "0") == 0)// 0*x or x*0
        {
            return "0";
        }
        if(strcmp(left, "1") == 0)// 1*x
        {
            return right;
        }
        if(strcmp(right, "1") == 0)// x*1
        {
            return left;
        }
        char* result = (char*)malloc(strlen(left) + strlen(right) + 4);
        sprintf(result, "(%s%s%s)", left,node->data, right);
        return result;
    }
    if(strcmp(node->data, "^") == 0 )//power
    {
        if(strcmp(left, "0") == 0)// 0^x
        {
            return "0";
        }
        if(strcmp(right, "0") == 0)// x^0
        {
            return "1";
        }
        if(strcmp(right, "1") == 0)// x^1
        {
            return left;
        }
        char* result = (char*)malloc(strlen(left) + strlen(right) + 4);
        sprintf(result, "(%s%s%s)", left,node->data, right);
        return result;
    }
    if(strcmp(node->data, "/") == 0 )
    {
        
        if(strcmp(left, "0") == 0)// 0/x
        {
            return "0";
        }
        if(strcmp(right, "1") == 0)// x/1
        {
            return left;
        }
        if(strcmp(left, right) == 0)// x/x
        {
            return "1";
        }
        char* result = (char*)malloc(strlen(left) + strlen(right) + 4);
        sprintf(result, "(%s%s%s)", left,node->data, right);// +4 for the '(' and the ')' and the null terminator
        return result;
    }
    // If the operation is not commutative (i.e., the order of the operands matters)
    if(strcmp(node->data, "-") == 0 )
    {
        if(strcmp(left, "0") == 0)// 0-x
        {
        char* result = (char*)malloc(strlen(right) + 4);
        sprintf(result, "(-%s)",right);
        return result;
        }
        if(strcmp(right, "0") == 0)//x-0
        {
            return left;
        }
        if(strcmp(left, right) == 0)//x-x
        {
            return "0";
        }
        char* result = (char*)malloc(strlen(left) + strlen(right) + 4);
        sprintf(result, "(%s%s%s)", left,node->data, right);// +4 for the '(' and the ')' and the null terminator
        return result;
    }
    return node->data;
}

