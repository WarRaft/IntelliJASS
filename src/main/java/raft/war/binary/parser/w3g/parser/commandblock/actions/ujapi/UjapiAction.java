package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public class UjapiAction implements IAction {

    public static final byte ACTION_ID = (byte) 0xA0;

    private IUjapiSubAction subAction;

    private static final Map<Byte, Class<? extends IUjapiSubAction>> subActionParsers = new HashMap<>();

    static {
        subActionParsers.put(UjApiSyncVariable.UJAPI_ACTION_ID, UjApiSyncVariable.class);
        subActionParsers.put(UjApiSyncPrefixData.UJAPI_ACTION_ID, UjApiSyncPrefixData.class);
        subActionParsers.put(UjApiSyncHashtableValue.UJAPI_ACTION_ID, UjApiSyncHashtableValue.class);

        subActionParsers.put((byte) 4, UjApiKeyAction.class);
        subActionParsers.put((byte) 5, UjApiKeyAction.class);
        subActionParsers.put((byte) 7, UjApiKeyAction.class);
        subActionParsers.put((byte) 8, UjApiKeyAction.class);
        subActionParsers.put((byte) 9, UjApiKeyAction.class);
        subActionParsers.put((byte) 13, UjApiKeyAction.class);
        subActionParsers.put((byte) 14, UjApiKeyAction.class);
        subActionParsers.put((byte) 15, UjApiKeyAction.class);
        subActionParsers.put((byte) 16, UjApiKeyAction.class);
        subActionParsers.put((byte) 17, UjApiKeyAction.class);

        subActionParsers.put(UjApiMouseData.UJAPI_ACTION_ID, UjApiMouseData.class);
        subActionParsers.put(UjApiHackDetected.UJAPI_ACTION_ID, UjApiHackDetected.class);
        subActionParsers.put(UjApiFrameAction.UJAPI_ACTION_ID, UjApiFrameAction.class);
        subActionParsers.put(UjApiWidgetAction.UJAPI_ACTION_ID, UjApiWidgetAction.class);
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        inBuffer.get(); // [

        byte subCommand = inBuffer.get();

        inBuffer.get(); // ]

        Class<? extends IUjapiSubAction> subActionParser = subActionParsers.get(subCommand);

        if(subActionParser == null)
            return;

        try {
            for (Constructor<?> constructor : subActionParser.getConstructors()) {
                if (Modifier.isPublic(constructor.getModifiers())) {
                    Class<?>[] parameterTypes = constructor.getParameterTypes();

                    if (parameterTypes.length == 1 && parameterTypes[0] == byte.class) {
                        this.subAction = (IUjapiSubAction) constructor.newInstance(subCommand);
                    } else if (parameterTypes.length == 0) {
                        this.subAction = (IUjapiSubAction) constructor.newInstance();
                    }
                }
            }
        } catch (Exception ignored) {
        }

        if(subAction != null)
            this.subAction.parse(inBuffer);


    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        return null;
    }

    public IUjapiSubAction getSubAction() {
        return subAction;
    }

    public UjapiAction setSubAction(IUjapiSubAction subAction) {
        this.subAction = subAction;
        return this;
    }
}
