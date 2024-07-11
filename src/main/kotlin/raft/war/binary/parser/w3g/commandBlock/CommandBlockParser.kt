package raft.war.binary.parser.w3g.commandBlock

import raft.war.binary.parser.w3g.commandBlock.action.SyncIntegerAction
import raft.war.binary.parser.w3g.commandBlock.action.Unknown62Action
import raft.war.binary.parser.w3g.parser.commandblock.actions.*
import raft.war.binary.parser.w3g.commandBlock.action.ujapi.UjapiAction
import java.lang.reflect.Modifier
import java.nio.ByteBuffer
import java.util.*

class CommandBlockParser {
    private val actionParsers: Map<Byte, Class<out CommandBlockAction>> = defaultActionParsers

    fun parse(byteBuffer: ByteBuffer): List<ActionCommandBlock> {
        val result: MutableList<ActionCommandBlock> = LinkedList()

        while (byteBuffer.remaining() > 0) {
            val playerId = java.lang.Byte.toUnsignedInt(byteBuffer.get())
            val actionsLength = java.lang.Short.toUnsignedInt(byteBuffer.getShort())

            val actionsEndIndex = byteBuffer.position() + actionsLength

            val actions: MutableList<CommandBlockAction> = LinkedList()

            while (byteBuffer.position() < actionsEndIndex) {
                val actionStartPosition = byteBuffer.position()

                val actionId = byteBuffer.get()
                val actionParser = actionParsers[actionId]

                if (actionParser == null) {
                    byteBuffer.position(actionStartPosition)
                    break
                }

                var action: CommandBlockAction? = null

                try {
                    for (constructor in actionParser.constructors) {
                        if (Modifier.isPublic(constructor.modifiers)) {
                            val parameterTypes = constructor.parameterTypes

                            if (parameterTypes.size == 1 && parameterTypes[0] == Byte::class.javaPrimitiveType) {
                                action = constructor.newInstance(actionId) as CommandBlockAction
                            } else if (parameterTypes.isEmpty()) {
                                action = constructor.newInstance() as CommandBlockAction
                            }
                        }
                    }
                } catch (ignored: Exception) {
                }

                if (action == null) {
                    byteBuffer.position(actionStartPosition)
                    break
                }

                action.parse(byteBuffer)

                if (action is UjapiAction) {
                    if (action.subAction == null) // unknown subAction
                    {
                        byteBuffer.position(actionStartPosition)
                        break
                    }
                }

                actions.add(action)
            }
            result.add(ActionCommandBlock(playerId, actions))

            byteBuffer.position(actionsEndIndex)
        }

        return result
    }

    companion object {
        private val defaultActionParsers: MutableMap<Byte, Class<out CommandBlockAction>> = HashMap()

        init {
            defaultActionParsers[0x01.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x02.toByte()] = NoBodyAction::class.java
            defaultActionParsers[SetGameSpeedAction.ACTION_ID] = SetGameSpeedAction::class.java
            defaultActionParsers[0x04.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x05.toByte()] = NoBodyAction::class.java
            defaultActionParsers[SaveGameAction.ACTION_ID] = SaveGameAction::class.java
            defaultActionParsers[SaveGameFinishedAction.ACTION_ID] = SaveGameFinishedAction::class.java
            defaultActionParsers[AbilityAction.ACTION_ID] = AbilityAction::class.java
            defaultActionParsers[PositionAbilityAction.ACTION_ID] = PositionAbilityAction::class.java
            defaultActionParsers[PositionAndObjectAbilityAction.ACTION_ID] = PositionAndObjectAbilityAction::class.java
            defaultActionParsers[ItemAction.ACTION_ID] = ItemAction::class.java
            defaultActionParsers[AbilityTwoTargetTwoItemAction.ACTION_ID] =
                AbilityTwoTargetTwoItemAction::class.java
            defaultActionParsers[ChangeSelectionAction.ACTION_ID] = ChangeSelectionAction::class.java
            defaultActionParsers[AssignGroupHotkeyAction.ACTION_ID] = AssignGroupHotkeyAction::class.java
            defaultActionParsers[SelectGroupHotkeyAction.ACTION_ID] =
                SelectGroupHotkeyAction::class.java
            defaultActionParsers[SelectSubGroupAction.ACTION_ID] = SelectSubGroupAction::class.java
            defaultActionParsers[0x1a.toByte()] = NoBodyAction::class.java
            defaultActionParsers[Unknown1bAction.ACTION_ID] = Unknown1bAction::class.java
            defaultActionParsers[SelectGroundItemAction.ACTION_ID] =
                SelectGroundItemAction::class.java
            defaultActionParsers[CancelHeroRevivalAction.ACTION_ID] =
                CancelHeroRevivalAction::class.java
            defaultActionParsers[RemoveQueuedUnitAction.ACTION_ID] = RemoveQueuedUnitAction::class.java
            defaultActionParsers[0x27.toByte()] = SinglePlayerCheatResourceAction::class.java
            defaultActionParsers[Unknown21Action.ACTION_ID] = Unknown21Action::class.java
            defaultActionParsers[0x28.toByte()] = SinglePlayerCheatResourceAction::class.java
            defaultActionParsers[0x2d.toByte()] = SinglePlayerCheatResourceAction::class.java
            defaultActionParsers[0x2e.toByte()] = SinglePlayerCheatTimeAction::class.java
            defaultActionParsers[0x20.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x22.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x23.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x24.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x25.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x26.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x2a.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x2b.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x2c.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x2f.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x30.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x31.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x32.toByte()] = NoBodyAction::class.java
            defaultActionParsers[AllyOptionsAction.ACTION_ID] = AllyOptionsAction::class.java
            defaultActionParsers[ResourceTransferAction.ACTION_ID] = ResourceTransferAction::class.java
            defaultActionParsers[ChatCommandAction.ACTION_ID] = ChatCommandAction::class.java
            defaultActionParsers[0x61.toByte()] = NoBodyAction::class.java
            defaultActionParsers[Unknown62Action.ACTION_ID] = Unknown62Action::class.java
            defaultActionParsers[0x65.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x66.toByte()] = NoBodyAction::class.java
            defaultActionParsers[0x67.toByte()] = NoBodyAction::class.java
            defaultActionParsers[MinimapPingAction.ACTION_ID] = MinimapPingAction::class.java
            defaultActionParsers[Unknown69Action.ACTION_ID] = Unknown69Action::class.java
            defaultActionParsers[Unknown6aAction.ACTION_ID] = Unknown6aAction::class.java
            defaultActionParsers[SyncIntegerAction.ACTION_ID] = SyncIntegerAction::class.java
            defaultActionParsers[ArrowKeyAction.ACTION_ID] = ArrowKeyAction::class.java
            defaultActionParsers[UjapiAction.ACTION_ID] = UjapiAction::class.java
        }
    }
}
