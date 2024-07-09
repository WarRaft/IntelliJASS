package raft.war.binary.parser.w3g.parser.commandblock;

import raft.war.binary.parser.w3g.parser.commandblock.actions.*;
import raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi.UjapiAction;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.*;

public class CommandBlockParser {

    private Map<Byte, Class<? extends IAction>> actionParsers;

    private static final Map<Byte, Class<? extends IAction>> defaultActionParsers = new HashMap<>();

    static {
        defaultActionParsers.put((byte) 0x01, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x02, NoBodyAction.class);
        defaultActionParsers.put(SetGameSpeedAction.ACTION_ID, SetGameSpeedAction.class);
        defaultActionParsers.put((byte) 0x04, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x05, NoBodyAction.class);
        defaultActionParsers.put(SaveGameAction.ACTION_ID, SaveGameAction.class);
        defaultActionParsers.put(SaveGameFinishedAction.ACTION_ID, SaveGameFinishedAction.class);
        defaultActionParsers.put(AbilityAction.ACTION_ID, AbilityAction.class);
        defaultActionParsers.put(PositionAbilityAction.ACTION_ID, PositionAbilityAction.class);
        defaultActionParsers.put(PositionAndObjectAbilityAction.ACTION_ID, PositionAndObjectAbilityAction.class);
        defaultActionParsers.put(ItemAction.ACTION_ID, ItemAction.class);
        defaultActionParsers.put(AbilityTwoTargetTwoItemAction.ACTION_ID, AbilityTwoTargetTwoItemAction.class);
        defaultActionParsers.put(ChangeSelectionAction.ACTION_ID, ChangeSelectionAction.class);
        defaultActionParsers.put(AssignGroupHotkeyAction.ACTION_ID, AssignGroupHotkeyAction.class);
        defaultActionParsers.put(SelectGroupHotkeyAction.ACTION_ID, SelectGroupHotkeyAction.class);
        defaultActionParsers.put(SelectSubGroupAction.ACTION_ID, SelectSubGroupAction.class);
        defaultActionParsers.put((byte) 0x1a, NoBodyAction.class);
        defaultActionParsers.put(Unknown1bAction.ACTION_ID, Unknown1bAction.class);
        defaultActionParsers.put(SelectGroundItemAction.ACTION_ID, SelectGroundItemAction.class);
        defaultActionParsers.put(CancelHeroRevivalAction.ACTION_ID, CancelHeroRevivalAction.class);
        defaultActionParsers.put(RemoveQueuedUnitAction.ACTION_ID, RemoveQueuedUnitAction.class);
        defaultActionParsers.put((byte) 0x27, SinglePlayerCheatResourceAction.class);
        defaultActionParsers.put(Unknown21Action.ACTION_ID, Unknown21Action.class);
        defaultActionParsers.put((byte) 0x28, SinglePlayerCheatResourceAction.class);
        defaultActionParsers.put((byte) 0x2d, SinglePlayerCheatResourceAction.class);
        defaultActionParsers.put((byte) 0x2e, SinglePlayerCheatTimeAction.class);
        defaultActionParsers.put((byte) 0x20, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x22, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x23, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x24, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x25, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x26, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x2a, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x2b, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x2c, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x2f, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x30, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x31, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x32, NoBodyAction.class);
        defaultActionParsers.put(AllyOptionsAction.ACTION_ID, AllyOptionsAction.class);
        defaultActionParsers.put(ResourceTransferAction.ACTION_ID, ResourceTransferAction.class);
        defaultActionParsers.put(ChatCommandAction.ACTION_ID, ChatCommandAction.class);
        defaultActionParsers.put((byte) 0x61, NoBodyAction.class);
        defaultActionParsers.put(Unknown62Action.ACTION_ID, Unknown62Action.class);
        defaultActionParsers.put((byte) 0x65, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x66, NoBodyAction.class);
        defaultActionParsers.put((byte) 0x67, NoBodyAction.class);
        defaultActionParsers.put(MinimapPingAction.ACTION_ID, MinimapPingAction.class);
        defaultActionParsers.put(Unknown69Action.ACTION_ID, Unknown69Action.class);
        defaultActionParsers.put(Unknown6aAction.ACTION_ID, Unknown6aAction.class);
        defaultActionParsers.put(SyncIntegerAction.ACTION_ID, SyncIntegerAction.class);
        defaultActionParsers.put(ArrowKeyAction.ACTION_ID, ArrowKeyAction.class);
        defaultActionParsers.put(UjapiAction.ACTION_ID, UjapiAction.class);
    }

    public CommandBlockParser() {
        this.actionParsers = defaultActionParsers;
    }

    public CommandBlockParser(Map<Byte, Class<? extends IAction>> actionParsers) {
        this.actionParsers = defaultActionParsers;
        this.actionParsers.putAll(actionParsers);
    }

    public List<ActionCommandBlock> parse(ByteBuffer byteBuffer) {
        List<ActionCommandBlock> result = new LinkedList<>();

        while (byteBuffer.remaining() > 0) {
            int playerId = Byte.toUnsignedInt(byteBuffer.get());
            int actionsLength = Short.toUnsignedInt(byteBuffer.getShort());

            int actionsStartIndex = byteBuffer.position();
            int actionsEndIndex = byteBuffer.position() + actionsLength;

            List<IAction> actions = new LinkedList<>();

            while (byteBuffer.position() < actionsEndIndex) {
                int actionStartPosition = byteBuffer.position();

                byte actionId = byteBuffer.get();
                Class<? extends IAction> actionParser = actionParsers.get(actionId);

                if (actionParser == null) {
                    byteBuffer.position(actionStartPosition);
                    break;
                }

                IAction action = null;

                try {
                    for (Constructor<?> constructor : actionParser.getConstructors()) {
                        if (Modifier.isPublic(constructor.getModifiers())) {
                            Class<?>[] parameterTypes = constructor.getParameterTypes();

                            if (parameterTypes.length == 1 && parameterTypes[0] == byte.class) {
                                action = (IAction) constructor.newInstance(actionId);
                            } else if (parameterTypes.length == 0) {
                                action = (IAction) constructor.newInstance();
                            }
                        }
                    }
                } catch (Exception ignored) {
                }

                if(action == null)
                {
                    byteBuffer.position(actionStartPosition);
                    break;
                }

                action.parse(byteBuffer);

                if(action instanceof UjapiAction ujapiAction)
                {
                    if(ujapiAction.getSubAction() == null) // unknown subAction
                    {
                        byteBuffer.position(actionStartPosition);
                        break;
                    }
                }

                actions.add(action);

            }

            ByteBuffer remainingBuffer = byteBuffer.slice(byteBuffer.position(), actionsEndIndex - byteBuffer.position()).order(ByteOrder.LITTLE_ENDIAN);
            result.add(new ActionCommandBlock(playerId, actions, remainingBuffer));

            byteBuffer.position(actionsEndIndex);
        }

        return result;
    }

    public ByteBuffer assembly(List<ActionCommandBlock> blocks)
    {
        return null;
    }

}
