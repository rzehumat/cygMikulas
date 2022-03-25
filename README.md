# Templates for 'Mikulášské setkání'-conference

## Article

### Tables
Tables have caption on the top. Provide caption unless you have a very good 
reason not to do so.

a) "Fancy" table
This style shall be used without vertical lines. 
```latex
\begin{table}
    \centering
    \caption{This is a caption of the table below.}
    \label{tab:example_fancy}
    \begin{tabular}{c c c}
        \toprule
            a & b & c \\
        \midrule
            5 & 6 & 7 \\
            8 & 9 & 77 \\
        \bottomrule
    \end{tabular}
\end{table}
```
b) "classic" table
This style shall be used with vertical lines. Avoid booktabs-style lines here, 
it does not look good.

```latex
\begin{table}
    \centering
    \caption{This is a caption of the table below.}
    \label{tab:example_classic}
    \begin{tabular}{c c c}
        \hline
            a & b & c \\
        \hline
            5 & 6 & 7 \\
        \hline
            8 & 9 & 77 \\
        \hline
    \end{tabular}
\end{table}
```


## Yearbook
