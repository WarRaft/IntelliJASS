package raft.war.binary.parser.w3g.commandBlock.action.ujapi

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction
import raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi.*
import java.lang.reflect.Modifier
import java.nio.ByteBuffer

class UjapiAction : CommandBlockAction {
    var subAction: UjapiSubActionBase? = null

    override fun actionId(): Byte = ACTION_ID

    override fun parse(inBuffer: ByteBuffer) {
        inBuffer.get() // [

        val subCommand = inBuffer.get()

        inBuffer.get() // ]

        val subActionParser = subActionParsers[subCommand] ?: return

        try {
            for (constructor in subActionParser.constructors) {
                if (Modifier.isPublic(constructor.modifiers)) {
                    val parameterTypes = constructor.parameterTypes

                    if (parameterTypes.size == 1 && parameterTypes[0] == Byte::class.javaPrimitiveType) {
                        this.subAction = constructor.newInstance(subCommand) as UjapiSubActionBase
                    } else if (parameterTypes.isEmpty()) {
                        this.subAction = constructor.newInstance() as UjapiSubActionBase
                    }
                }
            }
        } catch (ignored: Exception) {
        }

        if (subAction != null) subAction!!.parse(inBuffer)
    }

    companion object {
        const val ACTION_ID: Byte = 0xA0.toByte()

        private val subActionParsers: MutableMap<Byte, Class<out UjapiSubActionBase>> = HashMap()

        init {
            subActionParsers[UjApiSyncVariable.UJAPI_ACTION_ID] = UjApiSyncVariable::class.java
            subActionParsers[UjApiSyncPrefixData.UJAPI_ACTION_ID] = UjApiSyncPrefixData::class.java
            subActionParsers[UjApiSyncHashtableValue.UJAPI_ACTION_ID] =
                UjApiSyncHashtableValue::class.java

            subActionParsers[4.toByte()] = UjapiKeyAction::class.java
            subActionParsers[5.toByte()] = UjapiKeyAction::class.java
            subActionParsers[7.toByte()] = UjapiKeyAction::class.java
            subActionParsers[8.toByte()] = UjapiKeyAction::class.java
            subActionParsers[9.toByte()] = UjapiKeyAction::class.java
            subActionParsers[13.toByte()] = UjapiKeyAction::class.java
            subActionParsers[14.toByte()] = UjapiKeyAction::class.java
            subActionParsers[15.toByte()] = UjapiKeyAction::class.java
            subActionParsers[16.toByte()] = UjapiKeyAction::class.java
            subActionParsers[17.toByte()] = UjapiKeyAction::class.java

            subActionParsers[UjApiMouseData.UJAPI_ACTION_ID] = UjApiMouseData::class.java
            subActionParsers[UjApiHackDetected.UJAPI_ACTION_ID] = UjApiHackDetected::class.java
            subActionParsers[UjApiFrameActionBase.UJAPI_ACTION_ID] = UjApiFrameActionBase::class.java
            subActionParsers[UjApiWidgetActionBase.UJAPI_ACTION_ID] = UjApiWidgetActionBase::class.java
        }
    }

    override fun toString(): String = "$subAction"
}
