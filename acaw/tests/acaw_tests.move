module acaw::acaw_tests;

use acaw::core;
use sui::tx_context;

#[test]
public fun test_spawn_avatar() {
    let mut ctx = tx_context::dummy();
    let avatar = core::spawn_avatar(&mut ctx);
    // assert default hp is 100
    assert!(avatar.hp == 100, 1);
    // assert stamina also 100
    assert!(avatar.stamina == 100, 2);
}
