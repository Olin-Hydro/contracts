from brownie import accounts, HydroNutrientMix, network


def deploy_hydro_nutrients_mix():
    account = get_account()
    nutrient_contract = HydroNutrientMix.deploy({"from": account})
    print(nutrient_contract)


def get_account():
    if network.show_active() == "development":
        return accounts[0]
    else:
        return accounts.load("rinkeby-1")


def main():
    deploy_hydro_nutrients_mix()
