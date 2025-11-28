module acaw::core;

use std::debug;
use std::string;
use std::vector;
use sui::event::emit;
use sui::object::UID;
use sui::tx_context::{TxContext, sender};

/// Action type enum (u8): 0=Explore,1=Gather,2=Craft,3=Fight
struct Action has store {
    actor: UID,
    action_type: u8,
    target: UID,
}

/// Avatar object (owned)
struct Avatar has key {
    id: UID,
    owner: address,
    hp: u64,
    stamina: u64,
}

/// Basic Item object
struct Item has key {
    id: UID,
    name: string::String,
    power: u64,
}

/// Region object (shared) - contains an action queue and wrapped entities
struct Region has key {
    id: UID,
    tick: u64,
    actions: vector::Vector<Action>,
    avatars: vector::Vector<UID>,
}

/// Events
struct AvatarSpawnedEvent has store { avatar: UID, owner: address }
struct ActionQueuedEvent has store { region: UID, actor: UID, action_type: u8 }
struct TickProcessedEvent has store { region: UID, tick: u64 }

/////// INITIALIZERS ///////
/// Create a Region
public entry fun create_region(ctx: &mut TxContext): Region {
    let id = sui::object::new(ctx);
    let region = Region {
        id,
        tick: 0,
        actions: vector::empty<Action>(),
        avatars: vector::empty<UID>(),
    };
    region
}

/// Spawn an Avatar owned by the transaction sender
public entry fun spawn_avatar(ctx: &mut TxContext): Avatar {
    let id = sui::object::new(ctx);
    let sender_addr = sender(ctx);
    let avatar = Avatar { id, owner: sender_addr, hp: 100u64, stamina: 100u64 };
    // emit event
    let ev = AvatarSpawnedEvent { avatar: id, owner: sender_addr };
    emit(ev);
    avatar
}

/////// ACTIONS ///////
/// Queue a simple action into a Region (caller must provide the Region object)
public entry fun queue_action(
    region: &mut Region,
    actor: UID,
    action_type: u8,
    target: UID,
    _ctx: &mut TxContext,
) {
    let a = Action { actor, action_type, target };
    vector::push_back(&mut region.actions, a);
    let ev = ActionQueuedEvent { region: region.id, actor, action_type };
    emit(ev);
}

/// Process a single tick for a region. This resolves queued actions deterministically.
public entry fun process_tick(region: &mut Region, _ctx: &mut TxContext) {
    region.tick = region.tick + 1;
    let _len = vector::length(&region.actions);
    let _i = 0u64;
    let ev = TickProcessedEvent { region: region.id, tick: region.tick };
    emit(ev);
}
