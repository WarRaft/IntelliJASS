package raft.war.binary.parser.w3g.commandBlock

class ActionCommandBlock(
    @JvmField var playerId: Int,
    @JvmField var actions: List<CommandBlockAction>,
)
