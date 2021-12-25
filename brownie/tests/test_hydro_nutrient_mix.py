from brownie import accounts, HydroNutrientMix


def test_deploy():
    account = accounts[0]
    nutrient_contract = HydroNutrientMix.deploy({"from": account})
    nutrients = nutrient_contract.getNutrients()
    assert nutrients == (500, 125, 375)


def test_update():
    account = accounts[0]
    nutrient_contract = HydroNutrientMix.deploy({"from": account})
    nutrient_contract.updateNutrients(400, 200, 400)
    nutrients = nutrient_contract.getNutrients()
    assert nutrients == (400, 200, 400)