#include <tf2>

public Plugin myinfo =
{
	name = "Fix Uber Wearoff Condition",
	author = "Dr. Underscore (James)",
	description = "Forcibly removes TF_COND_INVULNERABLE_WEARINGOFF when TF_COND_INVULNERABLE is removed, to fix instances where it is not removed.",
	version = "1.0.0",
	url = "https://github.com/drunderscore/SourcemodPlugins"
};

public TF2_OnConditionRemoved(client, TFCond:condition)
{
    if (condition == TFCond_Ubercharged)
        TF2_RemoveCondition(client, TFCond_UberchargeFading);
}
