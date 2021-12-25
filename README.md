# mycelium
Smart contracts for hydro using the [Brownie framework](https://eth-brownie.readthedocs.io/en/stable/). To run the code you must install brownie and [ganache-cli](https://www.npmjs.com/package/ganache-cli/v/6.4.2).


To compile contracts
```
cd brownie
brownie compile 
```
To deploy hydro nutrients contract (defaults to local ganache)
```
brownie run scripts/deploy.py
```
To run tests
```
brownie test
```