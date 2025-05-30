#define CAN_HAVE_NANITES(host_mob) (host_mob.mob_biotypes & (MOB_ORGANIC|MOB_UNDEAD|MOB_ROBOTIC) && !issilicon(host_mob))

#define NANITE_SYNC_DELAY 300

#define NANITE_SHOCK_IMMUNE 1
#define NANITE_EMP_IMMUNE 2

#define NANITE_PROGRAM_LIMIT 20

#define NANITE_BASE_RESEARCH_PROGRESS 25

#define NANITE_CLOUD_TOGGLE 1
#define NANITE_CLOUD_DISABLE 2
#define NANITE_CLOUD_ENABLE 3

//Nanite excess thresholds
#define NANITE_EXCESS_MINOR 25
#define NANITE_EXCESS_VOMIT 100
#define NANITE_EXCESS_BURST 350

#define NANITE_BIO_REGENERATION 0.5
#define NANITE_ADV_BIO_REGENERATION NANITE_BIO_REGENERATION * 4
#define NANITE_ROBO_REGENERATION NANITE_BIO_REGENERATION * 2

#define NANITE_TOX_REGENERATION 0.5
#define NANITE_ADV_TOX_REGENERATION NANITE_TOX_REGENERATION

#define NANITE_BRAIN_REGENERATION 0.2
#define NANITE_ADV_BRAIN_REGENERATION NANITE_BRAIN_REGENERATION * 2

#define HARMFUL_PROGRAM_DAMAGE_SCALE 1.25
#define NANITE_OXYLOSS 5

#define NANITE_PROTOCOL_KICKSTART_REPLICATION 3.5
#define NANITE_PROTOCOL_FACTORY_MAX_REPLICATION 2

///Nanite Protocol types
#define NANITE_PROTOCOL_REPLICATION "nanite_replication"
#define NANITE_PROTOCOL_STORAGE "nanite_storage"

///Nanite extra settings types: used to help uis know what type an extra setting is
#define NESTYPE_TEXT "text"
#define NESTYPE_NUMBER "number"
#define NESTYPE_TYPE "type"
#define NESTYPE_BOOLEAN "boolean"

///Nanite Extra Settings - Note that these will also be the names displayed in the UI
#define NES_SENT_CODE "Sent Code"
#define NES_DELAY "Delay"
#define NES_MODE "Mode"
#define NES_COMM_CODE "Comm Code"
#define NES_RELAY_CHANNEL "Relay Channel"
#define NES_HEALTH_PERCENT "Health Percent"
#define NES_DIRECTION "Direction"
#define NES_NANITE_PERCENT "Nanite Percent"
#define NES_DAMAGE_TYPE "Damage Type"
#define NES_DAMAGE "Damage"
#define NES_SENTENCE "Sentence"
#define NES_MESSAGE "Message"
#define NES_DIRECTIVE "Directive"
#define NES_INCLUSIVE_MODE "Inclusive Mode"
#define NES_RACE "Race"
#define NES_HALLUCINATION_TYPE "Hallucination Type"
#define NES_HALLUCINATION_DETAIL "Hallucination Detail"
#define NES_MOOD_MESSAGE "Mood Message"
#define NES_PROGRAM_OVERWRITE "Program Overwrite"
#define NES_CLOUD_OVERWRITE "Cloud Overwrite"
#define NES_SCAN_TYPE "Scan Type"
#define NES_BUTTON_NAME "Button Name"
#define NES_ICON "Icon"
#define NANITE_HARMONIC_ID "Nano Harmonic ID"
