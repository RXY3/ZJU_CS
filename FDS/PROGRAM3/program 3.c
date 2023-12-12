#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>// INT_MAX

#define MAX 1000000000

int G[1001][1001];  // The adjacency matrix of the graph

int D[1001];

typedef struct node *nodeptr;
struct node { // adjacency list node
    int v;
    int w;
    nodeptr next;
};

struct edge { // edge structure
    int u;
    int v;
    int w;
} edge[1001];

typedef struct Path path_of_road;
struct Path {
    int path[1001];// The path of the second shortest path
    int len;
    int index;
} path[1001];

nodeptr adj[1001];  // adjacency list
int n, m;           // n represents the number of vertices, and m represents the number of edges

// Function to perform Dijkstra's algorithm
path_of_road dijkstra(int s, int t) {
    int i, j;
    int visit[1001];
    memset(visit, 0, sizeof(visit));// Initialize the visit array to 0

    for (i = 1; i <= n; i++) {
        D[i] = G[s][i];// Initialize the distance array
    }

    D[s] = 0;// The distance from the source vertex to itself is 0
    visit[s] = 1;// The source vertex has been visited

    int min;
    int index;
    int pre[1001];// Initialize the pre array to -1
    memset(pre, -1, sizeof(pre));
    // pre[i] represents the previous vertex of vertex i in the shortest path
    for (i = 1; i <= n; i++) {
        min = MAX;
    /// Find the vertex with the smallest distance from the source vertex
        for (j = 1; j <= n; j++) {
            if (visit[j] == 0 && D[j] < min) {
                min = D[j];
                index = j;
            }
        }
        // If the vertex with the smallest distance is the target vertex, the algorithm ends
        if (i == 1)
            pre[index] = i;
        // Mark the vertex with the smallest distance as visited
        visit[index] = 1;
        // Update the distance array
        for (j = 1; j <= n; j++) {
            if (visit[j] == 0 && D[index] + G[index][j] < D[j]) {
                D[j] = D[index] + G[index][j];
                pre[j] = index;
            }
        }
    }
    // Save the shortest path
    path_of_road ab;
    ab.len = D[t];
    ab.index = 0;
    int temp = t;
    // Save the vertices of the shortest path
    while (temp != s) {
        ab.path[ab.index] = temp;
        ab.index++;
        temp = pre[temp];
    }
    // Save the source vertex
    ab.path[ab.index] = s;
    return ab;
}

int main() {
    int pre[1001];// Initialize the pre array to -1
    memset(pre, -1, sizeof(pre));

    scanf("%d %d", &n, &m);// Input the number of vertices and edges
    int i, j;

    // Initialize the adjacency matrix
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++) {
            G[i][j] = MAX;
        }
    }

    int a, b, c;

    // Populate the adjacency matrix and edge array
    for (i = 0; i < m; i++) {
        scanf("%d %d %d", &a, &b, &c);
        G[a][b] = c;
        G[b][a] = c;
        edge[i].u = a;
        edge[i].v = b;
        edge[i].w = c;
    }
    // Initialize the adjacency list
    int s, t;
    s = 1, t = n;

    // Calculate the shortest path using Dijkstra's algorithm
    path_of_road ab = dijkstra(s, t);
    printf("1 ");
    for (i = ab.index - 1; i >= 0; i--) {
                if (ab.path[i] != -1)
                    printf("%d ", ab.path[i]);
    }
    int min_act = ab.len;

    // Iterate through all edges and calculate alternate paths
    for (j = 0; j < m; j++) {
        G[edge[j].u][edge[j].v] = MAX;
        G[edge[j].v][edge[j].u] = MAX;

        // Calculate the new path after removing one edge
        struct Path tmp = dijkstra(s, t);

        path[j].len = tmp.len;
        path[j].index = tmp.index;
        path[j].path[0] = 1;
        int con = 0;

        // Save the vertices of the new path
        for (i = tmp.index - 1; i >= 0; i--) {
            if (tmp.path[i] != -1 && tmp.path[i] != 0)
                path[j].path[con++] = tmp.path[i];
        }

        path[j].index = con;
        // Restore the adjacency matrix
        G[edge[j].u][edge[j].v] = edge[j].w;
        G[edge[j].v][edge[j].u] = edge[j].w;
    }

    int min = MAX;
    int minindex = -1;

    // Find the minimum length of the new paths
    for (i = 0; i < m; i++) {
        if (path[i].len < min && path[i].len > min_act) {
            min = path[i].len;
            minindex = i;
        }
    }

    // Check if there is a second shortest path
    if (minindex == -1) {
        if (n > 2) {
            // If n>2, consider backtracking once to find the second shortest path
            s = 1, t = n;
            ab = dijkstra(s, t);
            // Output the second shortest path and its vertices
            // printf("1 ");
            // for (i = ab.index - 1; i >= 0; i--) {
            //     if (ab.path[i] != -1)
            //         printf("%d ", ab.path[i]);
            // }

            // Find the edges of the shortest path
            int min_act = ab.len;
            int lens = ab.index;
            int indexs = 0;
            int M[1001];
            M[0] = G[1][ab.path[1]];
            int mins = M[0];
            // Find the edge with the smallest weight
            for (j = 1; j < lens - 1; j++) {
                M[j] = G[ab.path[j]][ab.path[j + 1]];
                if (M[j] < mins && ab.path[j + 1] != n) {
                    mins = M[j];
                    indexs = j;
                }
            }
            // Output the edge with the smallest weight
            printf("%d ", indexs);

            // The second shortest path is to traverse the path again
            printf("The second shortest path is ");
            printf("%d\n", ab.len + 2 * mins);
            printf("The path is ");

            ab.path[ab.index] = 1;
            // Output the vertices of the second shortest path
            for (i = ab.index; i >= 0; i--) {
                if (ab.path[i] != -1)
                    printf("%d ", ab.path[i]);

                if (ab.path[i] == indexs + 2) {
                    printf("%d ", ab.path[i + 1]);
                    printf("%d ", ab.path[i]);
                }
            }
        } else {
            printf("There is no second shortest path");
        }
    } else {
        // Output the second shortest path and its vertices
        printf("The second shortest path is ");
        printf("%d\n", min);
        printf("The path is ");
        printf("1 ");
        // Output the vertices of the second shortest path
        // reason : for i=1 is that the first vertex is 1
        for (i = 0; i < path[minindex].index; i++) {
            printf("%d ", path[minindex].path[i]);
        }
    }

    return 0;
}
