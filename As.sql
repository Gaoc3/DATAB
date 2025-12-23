#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Enter number of processes: ";
    cin >> n;

    int at[n], bt[n], ct[n], tt[n], wt[n];
    float avgWT = 0, avgTT = 0;

    for (int i = 0; i < n; i++) {
        cout << "P" << i + 1 << " AT & BT: ";
        cin >> at[i] >> bt[i];

        ct[i] = (i == 0)
              ? at[i] + bt[i]
              : max(ct[i - 1], at[i]) + bt[i];

        tt[i] = ct[i] - at[i];
        wt[i] = tt[i] - bt[i];

        avgWT += wt[i];
        avgTT += tt[i];
    }

    cout << "\nP#\tAT\tBT\tCT\tTT\tWT\n";
    for (int i = 0; i < n; i++)
        cout << "P" << i + 1 << "\t" << at[i] << "\t" << bt[i]
             << "\t" << ct[i] << "\t" << tt[i] << "\t" << wt[i] << endl;

    cout << "\nAvg WT = " << avgWT / n;
    cout << "\nAvg TT = " << avgTT / n;

    return 0;
}
