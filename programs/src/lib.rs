use anchor_lang::prelude::*;

declare_id!("DafEaM7Us45XUh4NPz5AgkRWoicgwcXEnLsYt4zgLJou");

#[program]
pub mod socialtipping {
    use super::*;

    pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        msg!("Greetings from: {:?}", ctx.program_id);
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize {}
