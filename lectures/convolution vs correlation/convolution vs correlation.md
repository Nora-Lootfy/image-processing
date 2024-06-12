# Correlation vs Convolution

These are two mathematicl operation used to manipulate two functions to produce a third function.

Convolution and correlation are both used to extract some information in data however there is signatificant difference between both of them, the most fundamental difference is that correlation is the mathematical operation used to measure similarity between the two functions while convolution is the mathematical operation used to combine two functions together and produce another function.

### What is Convolution?

As mentioned above convolution is the operation of combining two functions together and produce third function, we can do convolution in MATLAB using:<br> 
`C = conv(a, b)`<br>

### What is Correlation?

Correlation is the mathematical operation to measure similarity between two functions, there is a built in function in MATLAB called <br> 
`C = xcorr(a, b)`<br>
This function is used to calculate the cross correlation or auto correlation between two functions.

<center>
<table>
    <thead>
        <tr>
            <th>Parameter</th>
            <th>Convolution</th>
            <th>Correlation</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Defination</th>
            <td>Mathematical operation used to combine two functions and produce third function.</td>
            <td>Mathematical operation the get the similarity between two functions.</td>
        </tr>
        <tr>
            <th>MATLAB function</th>
            <td> conv(<i>f1</i>, <i>f2</i>) </td>
            <td>xcorr(<i>f1</i>, <i>f2</i>) </td>
        </tr>
        <tr>
            <th>Used for</th>
            <td>Signal operation and modification</td>
            <td>Check similarity</td>
        </tr>
        <tr>
            <th>Range of output</th>
            <td>Depends on input functions</td>
            <td>Between [-1, 1]</td>
        </tr>
        <tr>
            <th>Mathematical operation</th>
            <td>Integration of the product of input funstions with one function shifted</td>
            <td>Integration of the product of input funstions</td>
        </tr>
    </tbody>
</table>
</center>
